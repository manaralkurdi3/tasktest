import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tasktest/screen/login.dart';

part 'setting_state.dart';

class SettingCubit extends Cubit<SettingState> {
  bool enable = false;

  SettingCubit() : super(SettingInitial());

  static SettingCubit get(BuildContext context) {
    return BlocProvider.of(context);
  }

  notification() {
    enable == true;
    emit(LogOut());
  }

  logOut(BuildContext context) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.clear();
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
    emit(LogOut());
  }
}

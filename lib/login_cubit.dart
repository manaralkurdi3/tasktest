import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tasktest/model/login.dart';

import 'screen/main_page.dart';
import 'sql/database.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  int counter = 0;

  bool loadingProgress = false;

  String username = '';
  String password = "";

  LoginCubit() : super(LoginInitial());

  static LoginCubit get(BuildContext context) {
    return BlocProvider.of(context);
  }

  Future<http.StreamedResponse> login(
      BuildContext context, String username, String password) async {
    var headers = {'Content-Type': 'application/x-www-form-urlencoded'};
    var request = http.Request('POST',
        Uri.parse('http://82.212.90.190:7777/rest/OmanAPI_dev/NAFITH_API'));
    request.bodyFields = {
      'args': '{"USERNAME":"$username","PASSWORD":"$password"}'
    };
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    var responseString = await response.stream.bytesToString();
    //final decodedMap = json.decode(responseString);
    String logInResponseData = jsonDecode(responseString)['MESSAGE'];
    if (response.statusCode == 200 && logInResponseData == "LOGIN.SUCCESS") {
      DataUser login = DataUser(username: username, password: password);
      //  SqlCubit.get(context).DataUserInsert(login);
      Databasesql.instance.insert(login);
      Databasesql.instance.getAllClients();
      LoginCubit.get(context).username = username;
      LoginCubit.get(context).password = password;
      loadingProgress = false;
      SharedPreferences preferences = await SharedPreferences.getInstance();

      preferences.setString('username', login.username ?? '');
      preferences.setString('password', login.password ?? '');
      print(LoginCubit.get(context).username);
      print(preferences.getString("username"));
      Navigator.push(context, MaterialPageRoute(builder: (context) => Main()));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('يرجى التاكد من المعلومات ')));
    }
    emit(LoginInitial());
    return response;

    // final response = await http.post(
    //     Uri.parse(url),
    //     body: json.encode({
    //       "username": base64.encode(utf8.encode(username)),
    //       "userpassword": base64.encode(utf8.encode(userpassword)),
    //     }),
    //     headers: {
    //       'Content-Type': 'application/json',
    //     });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:tasktest/login_cubit.dart';
import 'package:tasktest/setting_cubit.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  showAlertDialog(
    BuildContext context,
  ) {
    // set up the buttons
    Widget remindButton = TextButton(
      child: Text("تاكيد".tr()),
      onPressed: () {
        SettingCubit.get(context).logOut(context);
      },
    );
    Widget cancelButton = TextButton(
      child: Text("الغاء".tr()),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      content: Text("هل انت متأكد من تسجيل الخروج  ".tr()),
      actions: [
        remindButton,
        cancelButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    print(LoginCubit.get(context).username);
    print(LoginCubit.get(context).password);
    return BlocBuilder<SettingCubit, SettingState>(
      builder: (context, state) {
        return Scaffold(
            body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 10, left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Switch(
                        value: SettingCubit.get(context).enable,
                        onChanged: (check) {
                          SettingCubit.get(context).enable = check;
                          SettingCubit.get(context).notification();
                        }),
                    Text("notification"),
                  ],
                )),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DropdownButton(
                      onChanged: (v) {
                        translator.setNewLanguage(
                          context,
                          newLanguage: translator.activeLanguageCode == 'en'
                              ? 'ar'
                              : 'en',
                          remember: true,
                          restart: true,
                        );
                      },
                      hint: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(translator.activeLanguageCode == 'en'
                            ? "اللغة".tr()
                            : "اللغة"),
                      ),
                      items: [
                        DropdownMenuItem(
                            child: Text(translator.activeLanguageCode == 'en'
                                ? ' Arabic'
                                : 'Enghlish'),
                            value: 'en'),
                      ],
                    ),
                    Text("language"),
                  ],
                )),
                InkWell(
                    onTap: () {
                      showAlertDialog(context);
                    },
                    child: LoginCubit.get(context).username != "" &&
                            LoginCubit.get(context).password != ""
                        ? Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    child: Text(
                                  "Logout",
                                  style: TextStyle(color: Colors.red),
                                )),
                              ],
                            ),
                          )
                        : Container())
              ],
            ),
          ),
        ));
      },
    );
  }
}

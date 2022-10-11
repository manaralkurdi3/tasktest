import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:tasktest/component/appbar.dart';
import 'package:tasktest/component/component_textfield.dart';
import 'package:tasktest/login_cubit.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  String? validatePassword(dynamic value) {
    if (value.isEmpty) {
      return "* Required";
    } else if (value.length < 6) {
      return "Password should be atleast 6 characters";
    } else
      return null;
  }

  String? validateusername(dynamic value) {
    if (value.isEmpty) {
      return "* Required";
    } else if (value.length < 6) {
      return "username should be atleast 6 characters";
    } else if (RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]').hasMatch(value)) {
      return "username should be just characters";
    } else
      return null;
  }

  @override
  Widget build(BuildContext context) {

    return AppBarComponent(
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 20,
                  child: Text("Login".tr()),
                ),
                Form(
                  key: formkey,
                  child: Column(
                    children: [
                      TextFieldComponent( callback:
                      validateusername,hinttext: "username".tr(),textcontroller: username,
                      ),
                      TextFieldComponent(
                        hinttext: "password".tr(),callback: validatePassword,textcontroller: password,
                      ),
                    ],
                  ),
                ),

                InkWell(onTap: () {
                  if(formkey.currentState!.validate()){
                LoginCubit.get(context).login(context,username.text.toString(), password.text.toString());
                  }
                },
                  child: BlocBuilder<LoginCubit, LoginState>(
                    builder: (context, state) {
                      return Container(
                        height: 40,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.7,
                        child: Center(child: Text("Login".tr())),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue
                        ),
                      );
                    },
                  ),
                )],
              ),
            ),

        ),
      );
  }
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:tasktest/login_cubit.dart';
import 'package:tasktest/setting_cubit.dart';

import 'screen/main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await translator.init(
    localeType: LocalizationDefaultType.asDefined,
    languagesList: <String>['en', 'ar'],
    assetsDirectory: 'assets/lang/',
  );
  runApp(LocalizedApp(child: MyApp()));
}

class MyApp extends StatelessWidget {
  final String defaultSystemLocale = Platform.localeName;
  final List<Locale> systemLocales = WidgetsBinding.instance.window.locales;

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => SettingCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        localizationsDelegates: translator.delegates,
        locale: translator.activeLocale,
        supportedLocales: translator.locals(),
        home: BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) {
            return Directionality(
                textDirection: translator.activeLanguageCode == 'ar'
                    ? TextDirection.rtl
                    : TextDirection.ltr,
                child: LoginCubit.get(context).username == "" &&
                        LoginCubit.get(context).username == null
                    ? Main()
                    : Main());
          },
        ),
      ),
    );
  }
}

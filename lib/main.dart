import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:glass/signup.dart';

void main()async {
    WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
 
  runApp(
    
    EasyLocalization(
      supportedLocales: [Locale("ar"),Locale("en")],
      path: 'assets/tranlate',
      fallbackLocale: Locale('ar'),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      home: signup(),
    );
  }
}

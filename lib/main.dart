import 'package:e_library/feature/onboarding/services/auth_services.dart';
import 'package:e_library/helpers/components/app_icon.dart';
import 'package:e_library/helpers/page_layout/page_layout.dart';
import 'package:e_library/helpers/theme.dart';
import 'package:e_library/screen_loader.dart';
import 'package:e_library/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



void main() async{
    WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banky Tv',
      debugShowCheckedModeBanner: false,
          theme: ElibraryTheme.lightTheme,
          home: FutureBuilder(
              future: AuthServices().checkIfAuth(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState != ConnectionState.done) {
                  return PageLayout(
                    noAppBar: true,
                    navPop: false,
                    child: Container(
                      color: Colors.white,
                      child: Center(child: AppIcon())
                    ),
                  );
                }

                return snapshot.data["token"] != null
                  ? ScreenLoader()
                  :  WelcomeOnBoardingPage();
              }),
    );
  }
}


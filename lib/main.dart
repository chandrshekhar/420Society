import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:four20society/constants/routes/app_routes.dart';
import 'package:four20society/constants/routes/routes_name.dart';

import 'feature/auth/login/bloc/seller_login_bloc.dart';

import 'feature/auth/registration/bloc/seller_signup_bloc.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(create: (context) => LoginBloc()),
        BlocProvider<SignupBloc>(create: (context) => SignupBloc()),
        // BlocProvider<UserProfileBloc>(create:(context)=>UserProfileBloc()),

      ],
      child: MaterialApp(

        theme: ThemeData(
            visualDensity: VisualDensity.standard,
            useMaterial3: true
        ),
        title: '420 Society',

        debugShowCheckedModeBanner: false,
               onGenerateRoute: RoutesGenerator.generateRoute,
       initialRoute:AppRoute.splaceScreen,
        // initialRoute: AppRoute.DashboardScreen,
        // home: MyTest(),
      ),
    );
  }
}

class MyTest extends StatelessWidget {
  const MyTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),
      ),
      body: Center(child: Text("Body Test")),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meals_delivery/views/categories_meals_screen.dart';
import 'package:meals_delivery/views/categories_screen.dart';
import 'package:meals_delivery/views/meal_detail_screen.dart';

import 'views/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(235, 255, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                bodyText2: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                headline6: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotCondensed',
                ),
              )),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (_) => TabsScreen(),
        CategoryMealScreen.routeNames: (context) => CategoryMealScreen(),
        MealDetailScreen.routeNames: (context) => MealDetailScreen(),
      },
      // onGenerateRoute: (settings) {
      //   return MaterialPageRoute(
      //     builder: (ctx) => CategoriesScreen(),
      //   );
      // },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => CategoriesScreen(),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meal_app/screen/meal_detail_screen.dart';
import './screen/tabs_screen.dart';
import './screen/categories_meal_screen.dart';
import './screen/categories_screen.dart';
import './screen/filters_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
      return MaterialApp(
        title: 'DesiMeals',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            body2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            title: TextStyle(
              fontSize: 24,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )
          )
        ),
        //home: CategoriesScreen(),
        initialRoute: '/',  // default is '/'
        routes: {
          //'/': (ctx) => CategoriesScreen(),
          '/': (ctx) => TabsScreen(),
          CategoriesMealScreen.routeName: (ctx)=>CategoriesMealScreen(),
          MealDetailScreen.routeName: (ctx)=>MealDetailScreen(),
          FiltersScreen.routeName: (ctx) => FiltersScreen(),
        },
        onGenerateRoute: (settings){
          print(settings.arguments);
          return MaterialPageRoute(builder: (ctx)=>CategoriesScreen());
        },
        onUnknownRoute: (settings){
          return MaterialPageRoute(builder: (ctx)=>CategoriesScreen());
        },
      );
  }
}

// class MyHomePage extends StatefulWidget{
//   _MyHomePageState createState() => _MyHomePageState();
// } 

// class _MyHomePageState extends State<MyHomePage>{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('DeliMeals')),
//         body: Center(
//           child: Text('Navigation Time!')
//           ),
//     );
//   }

//}


import 'package:desafio/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(
    MaterialApp(
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
       theme: ThemeData.light(),
       darkTheme: ThemeData.dark(),
    ),
  );
}

// class CurrencyTile extends StatelessWidget {
//   const CurrencyTile({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Currency Tile',
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData.light(),
//         darkTheme: ThemeData.dark(),
//         home: Currency()

//         // home:  Container ( color: Colors.purpleAccent,
//         //   alignment: Alignment.center,
//         //   child: Container(
//         //     width:404 ,
//         //     height: 302,
//         //     decoration: BoxDecoration (
//         //     color: Colors.black,
//         //     border: Border.all(
//         //       color:Colors.purpleAccent,
//         //     ),
//         //     borderRadius: BorderRadius.horizontal(

//         //     )

//         //     ),
//         //     ),
//         //     ),
//         );
//   }
// }

// class Currency extends StatelessWidget {
//   const Currency({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Currency Tile'),
//       ),
//       body: Container(
//         alignment: Alignment.center,
//         color: theme.colorScheme.primary,
//         child: Text(
//           'Currency Tile',
//           style: theme.textTheme.bodyText2,
//         ),
//       ),
//     );
//   }
// }

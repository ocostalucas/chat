import 'package:flutter/material.dart';
import 'package:chat/chat_screen.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) => ThemeData(
        primarySwatch: Colors.indigo,
        brightness: brightness
       ),
       themedWidgetBuilder:(context, theme){
         return MaterialApp(
           debugShowCheckedModeBanner: false,
           theme: theme,
           title: 'Chat Flutter',
           home: ChatScreen(),
         );
       }
    );
  
    // return MaterialApp(
    //   title: 'Chat Flutter',
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //     iconTheme: IconThemeData(
    //       color: Colors.blue
    //     )
    //   ),
    //   home: ChatScreen(),"
    // );
  }
}
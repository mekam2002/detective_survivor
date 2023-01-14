import 'package:flutter/material.dart';
import 'package:myliferpg/repositories/api_communication.dart';
import 'package:web_socket_channel/io.dart';

import 'screen/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Life Rpg',
      theme: ThemeData(
        canvasColor: Color.fromARGB(255, 82, 81, 81),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ).copyWith(
          secondary: Colors.yellow,
        ),
      ),
      home: const ChatScreen(),
    );
  }
}

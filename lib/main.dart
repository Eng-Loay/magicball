import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
backgroundColor:Color(0xFF4597F9) ,
        appBar:AppBar(
          title: Text("Ask Me Anything",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35.0),
          ),
          centerTitle: true,
          foregroundColor: Color(0xFFbfc8d0),
          backgroundColor: Color(0xFF2a4690),
        ) ,
        body: MagicPage(),
     ),
    );
  }
}
class MagicPage extends StatefulWidget {
  const MagicPage({super.key});

  @override
  State<MagicPage> createState() => _MagicPageState();
}
class _MagicPageState extends State<MagicPage> {
  int image_random=1;
  void changeImage()
  {
    setState(() {
      image_random=Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeImage();
              },
              child: Image.asset('images/ball$image_random.png'),
            ),
          ),


        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    //My text style for this task
    final TextStyle textStyle = TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.bold,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "My giraffe profile",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              // Shadow for the text
              // shadows: [
              //   Shadow(
              //     color: Colors.black.withOpacity(0.5),
              //     offset: Offset(2.0, 2.0),
              //     blurRadius: 3.0,
              //   ),
              // ],
            ),
          ),
          backgroundColor: Colors.yellow.shade400,
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20, top: 80),
                decoration: BoxDecoration(
                  shape: BoxShape.circle, //Make the container circular
                  border: Border.all(
                    color: Colors.black,
                    width: 2, // Border width
                  ),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/MyAnimal.jpg',
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(7),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.yellow.shade400,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Name: Melman", style: textStyle),
                    Text("Gender: Male", style: textStyle),
                    Text("Age: 35", style: textStyle),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

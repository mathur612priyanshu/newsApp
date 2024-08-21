import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 255, 243, 243),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 250,
              ),
              Image.network(
                  "https://i.pinimg.com/originals/bf/73/5d/bf735da9e11a1fd910c8cf0a682f8015.png"),
              Text(
                "News App",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                "APP CREATED BY",
                style: TextStyle(
                    color: const Color.fromARGB(255, 118, 117, 117),
                    fontSize: 15),
              ),
              Text(
                "PRIYASHU MATHUR",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}

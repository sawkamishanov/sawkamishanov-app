import 'package:flutter/material.dart';

main(List<String> args) => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Keksimus Maximus',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            const Color.fromRGBO(69, 104, 220, 1.0),
            const Color.fromRGBO(176, 106, 179, 1.0)
          ]),
        ),
        child: Center(
          child: Container(
            width: 256.0,
            height: 256.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage('assets/images/dva.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

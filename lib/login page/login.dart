import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: ,
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 98, 105, 110),
          Color.fromARGB(255, 226, 175, 56),
        ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                _getbox(),
                _getavatar(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _getbox() {
    return Container(
      height: 290,
      width: 330,
      margin: const EdgeInsets.all(40.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(57, 243, 237, 237),
        borderRadius: BorderRadius.circular(9.0),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Sign In",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email address',
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    // borderSide:BorderSide(color:borderColor),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: const Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                    minimumSize: Size(220, 50),
                    backgroundColor: Colors.blue[600]),
                onPressed: () {},
                child: const Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ))
          ]),
    );
  }

  _getavatar() {
    return Container(
      alignment: Alignment.topCenter,
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: const Color.fromARGB(57, 243, 237, 237),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: const Icon(
        Icons.person_outline_sharp,
        color: Colors.black54,
        size: 60,
      ),
    );
  }
}

import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Center(
            child: Container(
              alignment: Alignment.center,
              height: 400,
              child: Card(
                semanticContainer: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                color: Colors.blueGrey[50],
                elevation: 20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    inputField(),
                    inputFieldEmail(),
                    inputFieldPass(),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextButton(
                        child: Text("Register", style: TextStyle(color: Colors.white)),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class inputField extends StatelessWidget {
  const inputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        decoration: InputDecoration(
            fillColor: Colors.grey,
            hintText: "Username",
            prefixIcon: Icon(Icons.person),
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(26))),
      ),
    );
  }
}

class inputFieldEmail extends StatelessWidget {
  const inputFieldEmail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.grey,
          hintText: "Email",
          prefixIcon: Icon(Icons.email),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26),
          ),
        ),
      ),
    );
  }
}

class inputFieldPass extends StatelessWidget {
  const inputFieldPass({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        decoration: InputDecoration(
            fillColor: Colors.grey,
            hintText: "Password",
            prefixIcon: Icon(Icons.lock),
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(26))),
      ),
    );
  }
}

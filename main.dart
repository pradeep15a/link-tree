import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.all(80),
            children: [
              Text(
                'Login',
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.center,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter Username',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter Password',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  print('icon pressed');
                },
                icon: Icon(Icons.login),
                label: Text('Login'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  padding: const EdgeInsets.all(20),
                  textStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

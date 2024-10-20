import 'package:flutter/material.dart';
import 'login.dart'; // Import halaman login

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(), // Set LoginPage sebagai halaman awal
    );
  }
}

class HomePage extends StatelessWidget {
  final String name;
  final String role;
  final String sekolah;
  final String aboutMe;

  const HomePage({
    Key? key,
    required this.name,
    required this.role,
    required this.sekolah,
    required this.aboutMe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.shortestSide,
              padding: EdgeInsets.all(20.10),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Color.fromRGBO(255, 255, 255, 1),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 100.0,
                        backgroundImage: AssetImage('images/pp.jpg'),
                      ),
                      Text(name,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18)),
                      Text("Role: $role", style: TextStyle(fontSize: 16)),
                      Text("Sekolah: $sekolah", style: TextStyle(fontSize: 16)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "About Me: $aboutMe",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

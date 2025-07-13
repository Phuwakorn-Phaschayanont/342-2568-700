import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily:'Kanit'),
      home: Container (
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background2.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar (
            title: Center(child: const Text('Welcome to My Profile', style: TextStyle(color: Colors.white))),
            backgroundColor: Colors.deepPurpleAccent
          ),
          body: Column(children: [
              const SizedBox(height: 30),
              CircleAvatar(backgroundImage: AssetImage('assets/images/profile1.jpg'),
                radius: 110,
              ),
              const SizedBox(height: 30),
              const ListTile(
                title: Text(' Name : Phuwakorn Phaschayanont', style: TextStyle(fontSize: 20, color: Colors.white)
                ),
                leading: Icon(
                  Icons.person, color: Colors.lightGreenAccent, size: 30,
                ),
              ),
              const ListTile(
                title: Text(' Date of birth : Nov 10, 2004', style: TextStyle(fontSize: 20, color: Colors.white)
                ),
                leading: Icon(
                  Icons.cake, color: Colors.lightGreenAccent, size: 30,
                ),
              ),
              const ListTile (
                title: Text(' Education : Kasetsart University, Information Technology', style: TextStyle(fontSize: 20, color: Colors.white)
                ),
                leading: Icon(
                  Icons.school, color: Colors.lightGreenAccent, size: 30,
                ),
              ),
              const ListTile(
                title: Text(' Address : 102/2, Mueang City, Nakhon Pathom, 73000', style: TextStyle(fontSize: 20, color: Colors.white)
                ),
                leading: Icon(
                  Icons.location_on, color: Colors.lightGreenAccent, size: 30,
                ),
              ),
              const ListTile(
                title: Text(' Phone : +66 1408 2087', style: TextStyle(fontSize: 20, color: Colors.white)
                ),
                leading: Icon(
                  Icons.phone, color: Colors.lightGreenAccent, size: 30,
                ),
              ),
              const ListTile(
                title: Text(' Email : phuwakorn.p@ku.th', style: TextStyle(fontSize: 20, color: Colors.white)
                ),
                leading: Icon(
                  Icons.email, color: Colors.lightGreenAccent, size: 30,
                ),
              )
            ],
          ),
        ), 
      )
    );
  }
}

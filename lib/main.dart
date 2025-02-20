import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Profile()));
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int point = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            point++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: const Color.fromARGB(255, 193, 193, 120),
      ),
      appBar: AppBar(
          title: Text("My Profile"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 211, 195, 134)),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("images/p1.png"),
                radius: 60,
              ),
            ),
            Divider(
              height: 20,
              color: Colors.black,
              thickness: 2,
            ),
            Text(
              "Name",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              "Sachini",
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Email",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Row(
              children: [
                Icon(Icons.email),
                SizedBox(width: 10),
                Text("Sachini@gmail.com"),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Phone Number",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Row(
              children: [
                Icon(Icons.phone),
                SizedBox(width: 10),
                Text("0758564789"),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Address",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Row(
              children: [
                Icon(Icons.location_on),
                SizedBox(width: 10),
                Text("Colombo, Sri Lanka"),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Date of Birth",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Row(
              children: [
                Icon(Icons.cake),
                SizedBox(width: 10),
                Text("2000/08/28"),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "Points",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Row(
              children: [
                Icon(Icons.star),
                SizedBox(width: 10),
                Text("$point"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

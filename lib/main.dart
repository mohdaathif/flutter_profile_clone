import 'package:flutter/material.dart';

void main() {
  runApp(MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith( 
        colorScheme: ColorScheme.light( 
          primary: Colors.white, 
          secondary: Colors.grey, 
          background: Colors.white, 
        ),
      ),
      home: MyProfileScreen(),
    );
  }
}

class MyProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                child: Text(
                  "My Profile",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/profile_picture.png'),
                  backgroundColor: Colors.grey, 
                ),
              ),
              SizedBox(height: 20),
              Text(
                "NAME",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              Text(
                "Michonne",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "ACCOUNT LEVEL",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              Text(
                "10",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Personal Details"),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    ),
                    ListTile(
                      leading: Icon(Icons.credit_card),
                      title: Text("My Card"),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    ),
                    ListTile(
                      leading: Icon(Icons.shopping_bag),
                      title: Text("My Orders"),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    ),
                    ListTile(
                      leading: Icon(Icons.question_answer),
                      title: Text("FAQs"),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    ),
                    ListTile(
                      leading: Icon(Icons.privacy_tip),
                      title: Text("Privacy Policy"),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    ),
                    ListTile(
                      leading: Icon(Icons.rule),
                      title: Text("Terms and Conditions"),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add),
                  backgroundColor: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

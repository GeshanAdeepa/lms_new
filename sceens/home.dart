import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning Management System',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      home: HomePage(
        userName: 'Hana Shafa',
        userPicture: 'https://www.sundayobserver.lk/sites/default/files/u165/Yo-08-A1_7.jpg', // Replace with the actual user picture URL
        recentCourses: [
          'Course 1',
          'Course 2',
          'Course 3',
          'Course 4',
          'Course 5',
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final String userName;
  final String userPicture;
  final List<String> recentCourses;

  HomePage({required this.userName, required this.userPicture, required this.recentCourses});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(userPicture),
              ),
              SizedBox(width: 10),
              Text(userName),
            ],
          ),
          flexibleSpace: Image.asset(
            "assests/123.jpg",
            fit: BoxFit.cover,
          )
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'Recent Courses',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: recentCourses.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      //border: Border.all(color: Colors.grey),
                      image: DecorationImage(
                        image: NetworkImage('https://img.freepik.com/free-vector/dark-low-poly-background_1048-7971.jpg'), // Replace with the actual course background image URL
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        recentCourses[index],
                        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyProfilePage(),
    );
  }
}

class MyProfilePage extends StatefulWidget {
  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Implement menu functionality
            },
          ),
        ],
        flexibleSpace: Image.asset(
          "assests/123.jpg",
          fit: BoxFit.cover,
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assests/pfp.png'),
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.edit),
                  title: Text('Edit Profile'),
                  onTap: () {
                    // Implement edit profile functionality
                  },
                ),
                ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text('Notification'),
                  onTap: () {
                    // Implement notification functionality
                  },
                ),
                ListTile(
                  leading: Icon(Icons.security),
                  title: Text('Security'),
                  onTap: () {
                    // Implement security functionality
                  },
                ),
                ListTile(
                  leading: Icon(Icons.dark_mode),
                  title: Text('Dark Mode'),
                  onTap: () {
                    // Implement dark mode functionality
                  },
                ),
                ListTile(
                  leading: Icon(Icons.privacy_tip),
                  title: Text('Privacy Policy'),
                  onTap: () {
                    // Implement privacy policy functionality
                  },
                ),
                ListTile(
                  leading: Icon(Icons.help),
                  title: Text('Help Center'),
                  onTap: () {
                    // Implement help center functionality
                  },
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Logout'),
                  onTap: () {
                    // Implement logout functionality
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: BottomNavigationBar(
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.grey,),
              label: ('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications,color: Colors.grey,),
              label: ('Notifications'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,color: Colors.grey,),
              label: ('Profile'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book,color: Colors.grey,),
              label: ('Courses'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // User Profile Picture
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/profile_picture.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // User Name
          Text('Test', style: TextStyle(fontSize: 24)),

          // User Email or Username
          Text('test@example.com',
              style: TextStyle(fontSize: 18, color: Colors.grey)),

          // User Statistics
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text('Playlists', style: TextStyle(fontSize: 18)),
                    Text('5', style: TextStyle(fontSize: 24)),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text('Followers', style: TextStyle(fontSize: 18)),
                    Text('100K', style: TextStyle(fontSize: 24)),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text('Following', style: TextStyle(fontSize: 18)),
                    Text('500', style: TextStyle(fontSize: 24)),
                  ],
                ),
              ],
            ),
          ),

          // Most Played Songs or Artists
          Text('Most Played', style: TextStyle(fontSize: 24)),
          // Add a list of most played songs or artists here
        ],
      ),
    );
  }
}

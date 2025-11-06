import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PLAYER PROFILE'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.orangeAccent,
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'PlayerOne',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Level 42',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.orangeAccent,
                ),
              ),
              const SizedBox(height: 40),
              _buildStatCard('Kills', '1,234'),
              const SizedBox(height: 15),
              _buildStatCard('Deaths', '567'),
              const SizedBox(height: 15),
              _buildStatCard('K/D Ratio', '2.18'),
              const SizedBox(height: 15),
              _buildStatCard('Matches Played', '890'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatCard(String title, String value) {
    return Card(
      color: const Color(0xFF2A2A2A),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(fontSize: 18, color: Colors.white70),
            ),
            Text(
              value,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.orangeAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

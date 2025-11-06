import 'package:flutter/material.dart';

class MultiplayerScreen extends StatelessWidget {
  const MultiplayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MULTIPLAYER'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            _buildGameModeCard(
              context,
              'Battle Royale',
              'Last one standing wins!',
              Icons.people,
            ),
            const SizedBox(height: 20),
            _buildGameModeCard(
              context,
              'Team Deathmatch',
              '5v5. First team to 50 kills.',
              Icons.group_work,
            ),
            const SizedBox(height: 20),
            _buildGameModeCard(
              context,
              'Capture the Flag',
              'Steal the enemy flag to score.',
              Icons.flag,
            ),
            const Spacer(),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.orangeAccent),
            ),
            const SizedBox(height: 20),
            const Text(
              'Searching for a match...',
              style: TextStyle(fontSize: 18, color: Colors.white70),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildGameModeCard(BuildContext context, String title, String subtitle, IconData icon) {
    return Card(
      color: const Color(0xFF2A2A2A),
      child: ListTile(
        leading: Icon(icon, color: Colors.orangeAccent, size: 40),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        subtitle: Text(subtitle, style: const TextStyle(color: Colors.white70)),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white30),
        onTap: () {
          // Start matchmaking for this mode
        },
      ),
    );
  }
}

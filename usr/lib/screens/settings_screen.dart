import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _isSoundEnabled = true;
  double _graphicsQuality = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SETTINGS'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Audio',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.orangeAccent),
            ),
            SwitchListTile(
              title: const Text('Sound Effects'),
              value: _isSoundEnabled,
              onChanged: (bool value) {
                setState(() {
                  _isSoundEnabled = value;
                });
              },
              activeColor: Colors.orangeAccent,
            ),
            const SizedBox(height: 20),
            Text(
              'Graphics',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.orangeAccent),
            ),
            ListTile(
              title: const Text('Graphics Quality'),
              subtitle: Slider(
                value: _graphicsQuality,
                onChanged: (double value) {
                  setState(() {
                    _graphicsQuality = value;
                  });
                },
                min: 0.0,
                max: 1.0,
                divisions: 2,
                label: _graphicsQuality < 0.4 ? 'Low' : (_graphicsQuality < 0.8 ? 'Medium' : 'High'),
                activeColor: Colors.orangeAccent,
                inactiveColor: Colors.white30,
              ),
            ),
             const SizedBox(height: 20),
            Text(
              'Controls',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.orangeAccent),
            ),
            ListTile(
              title: const Text('Customize Controls'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to a detailed controls customization screen
              },
            ),
          ],
        ),
      ),
    );
  }
}

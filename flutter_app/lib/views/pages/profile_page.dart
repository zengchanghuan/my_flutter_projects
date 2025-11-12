import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _controller = TextEditingController();
  bool _isChecked = false;
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
          onEditingComplete: () => setState(() {}),
        ),
        Text(_controller.text),
        Checkbox(
            value: _isChecked,
            onChanged: (bool? value) {
              setState(() {
                _isChecked = value!;
              });
            }),
        CheckboxListTile(
            title: const Text('click me'),
            value: _isChecked,
            onChanged: (bool? value) {
              setState(() {
                _isChecked = value!;
              });
            }),
        Switch(value: _isSwitched, onChanged: (value){
          setState(() {
            _isSwitched = value;
          });
        }),
        SwitchListTile(
          title: const Text('switch me'),
            value: _isSwitched, onChanged: (bool value){
          setState(() {
            _isSwitched = value;
          });
        })
      ],
    );
  }
}

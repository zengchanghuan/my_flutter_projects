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
  double _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              width: 150,
              height: 50,
              color: Colors.blue.shade100,
              child: const FittedBox(
                // 默认 BoxFit.contain：在盒子里等比缩放
                child: Text(
                  'Hello Flutter',
                  style: TextStyle(fontSize: 40, color: Colors.black),
                ),
              ),
            ),
            Container(
              width: 200,
              height: 80,
              color: Colors.grey.shade300,
              child: FittedBox(
                fit: BoxFit.cover, // 试试 contain / cover / fill 的不同效果
                child: Image.asset('assets/images/banner.png'),
              ),
            ),

            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              onEditingComplete: () => setState(() {}),
            ),
            Text(_controller.text),
            Checkbox.adaptive(
                value: _isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    _isChecked = value!;
                  });
                }),
            CheckboxListTile.adaptive(
                title: const Text('click me'),
                value: _isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    _isChecked = value!;
                  });
                }),
            Switch.adaptive(
                value: _isSwitched,
                onChanged: (value) {
                  setState(() {
                    _isSwitched = value;
                  });
                }),
            SwitchListTile.adaptive(
                title: const Text('switch me'),
                value: _isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    _isSwitched = value;
                  });
                }),
            Slider(
              max: 10.0,
                value: _sliderValue,
                onChanged: (double value) {
                  setState(() {
                    _sliderValue = value;
                  });
                }),

          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:solid_software_test_task/theme/my_theme.dart';
import 'package:solid_software_test_task/util/util.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color _bgColor = Util.randomColor();
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bgColor,
      body: homeBody(),
      floatingActionButton: myFloatingActionButton(),
    );
  }

  Widget homeBody() {
    return InkWell(
      onTap: () {
        changeColor();
      },
      child: Center(
        child: Text.rich(
          style: myTheme.textTheme.bodyLarge,
          textAlign: TextAlign.center,
          TextSpan(
            children: [
              const TextSpan(text: "Hey there"),
              TextSpan(text: _isVisible ? '\n\n Your background color is: $_bgColor' : null),
            ],
          ),
        ),
      ),
    );
  }

  void changeColor() {
    setState(() => _bgColor = Util.randomColor());
  }

  FloatingActionButton myFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        changeVisibility();
      },
      child: Icon(_isVisible ? Icons.visibility : Icons.visibility_off),
    );
  }

  void changeVisibility() {
    setState(() => _isVisible = !_isVisible);
  }
}

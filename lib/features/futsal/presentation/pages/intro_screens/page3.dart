import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/icons/mobile.png',
                fit: BoxFit.fill,
              ),
            ),
            const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Just follow the marked points, and the \nphone will tell you to hurry up if \nnecessary, or offer a short break',
                  textAlign: TextAlign.center,
                )),
          ],
        ),
      ),
    );
  }
}

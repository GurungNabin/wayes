import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({
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
                'assets/icons/location.png',
                fit: BoxFit.fill,
              ),
            ),
            const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'This app will create the best route for you \nand calculate the duration of each \nsection',
                  textAlign: TextAlign.center,
                )),
          ],
        ),
      ),
    );
  }
}

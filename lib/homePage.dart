import 'package:flutter/material.dart';
import './appController.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          SwitchTheme(),
        ],
        title: Text(
          'Home Page',
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Switch theme',
                style: TextStyle(fontSize: 20),
              ),
              SwitchTheme(),
            ]),
            Text(
              'Paint your Screen!',
              style: TextStyle(fontSize: 20),
            ),
            // Espaçamento
            Container(
              height: 10,
            ),
            Container(
              width: 155,
              height: 55,
              color: Colors.black26,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.green,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.white,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.exit_to_app),
        onPressed: () {},
      ),
    );
  }
}

class SwitchTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}

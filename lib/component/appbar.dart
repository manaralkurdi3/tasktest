import 'package:flutter/material.dart';
import 'package:tasktest/screen/setting.dart';

class AppBarComponent extends StatefulWidget {
  Widget body1;

  AppBarComponent(this.body1);

  @override
  State<AppBarComponent> createState() => _AppBarComponentState();
}

class _AppBarComponentState extends State<AppBarComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'LoginPage',
          ),
        ),
        drawer: Drawer(
            child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            Column(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Setting()));
                    },
                    child: Text("setting")),
              ],
            )
          ],
        )),
        body: widget.body1,
      ),
    );
  }
}

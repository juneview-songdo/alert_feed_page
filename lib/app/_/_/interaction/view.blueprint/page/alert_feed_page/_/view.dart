import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '../item/view.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({super.key});

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("Notifications")
            .textStyle(Theme.of(context).textTheme.titleLarge!)
            .fontWeight(FontWeight.bold),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          ItemView(
            imagePath: 'assets/view/alert_feed_page/winter.jpg',
            name: "Display Name",
            description: " likes your post.",
            timeAge: " 3 hours ago",
          ),
          ItemView(
            imagePath: 'assets/view/alert_feed_page/winter.jpg',
            name: "Display Name",
            description: " appreciates your like.",
            timeAge: " 3 hours ago",
          ),
          // Add more Row widgets as needed for each notification
        ],
      ),
      floatingActionButton: FloatingActionButtonKit(),
    );
  }
}

main() async {
  return buildApp(appHome: NewView());
}

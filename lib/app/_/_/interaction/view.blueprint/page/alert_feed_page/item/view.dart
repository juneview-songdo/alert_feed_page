import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class ItemView extends StatefulWidget {
  ItemView(
      {super.key,
      required this.imagePath,
      required this.name,
      required this.description,
      required this.timeAge});

  final String imagePath;
  final String name;
  final String description;
  final String timeAge;

  @override
  State<ItemView> createState() => StateChild();
}

class ItemViewState extends State<ItemView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(widget.imagePath),
        ),
        Gap(20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: widget.name,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: widget.description,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.normal,
                          color: Theme.of(context).textTheme.bodyLarge!.color),
                    ),
                    TextSpan(
                      text: widget.timeAge,
                      style: Theme.of(context).textTheme.bodyLarge!,
                    ).textColor(Colors.grey),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ).padding(bottom: 20);
  }
}

main() async {
  return buildApp(appHome: ItemView(
    imagePath: "assets/view/alert_feed_page/winter.jpg",
    name: "Display Name",
    description: " appreciates your like.",
    timeAge: " 3 hours ago",
  ).center());
}

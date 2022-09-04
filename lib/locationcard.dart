import 'package:flutter/material.dart';

class LocationCard extends StatefulWidget {
  const LocationCard({Key? key}) : super(key: key);

  @override
  State<LocationCard> createState() => _LocationCardState();
}

class _LocationCardState extends State<LocationCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Icon(Icons.location_history),
            Text("Wandegeya"),
          ],
        ),
        Row(
          children: const [
            Text("Go to map"),
            Icon(Icons.arrow_circle_right),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class MapButton extends StatelessWidget {
  final Function() onPressed;
  final IconData icon;
  const MapButton({super.key, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(5),
        ),
        child: IconButton(
          icon: Icon(icon),
          color: Colors.white,
          onPressed: onPressed,
        ));
  }
}

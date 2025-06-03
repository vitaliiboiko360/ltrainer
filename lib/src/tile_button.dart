import 'package:flutter/material.dart';

class TileButton extends FloatingActionButton {
  const TileButton({
    super.key,
    super.onPressed,
    tooltip = 'Increment',
    child = const Icon(Icons.add),
  });
}

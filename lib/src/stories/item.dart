import 'package:flutter/material.dart';
import 'package:ltrainer/src/home/tile_buttons.dart';

const double sizeX = 420;
const double sizeY = 360;

class Item extends StatefulWidget {
  const Item({
    super.key,
    required this.name,
    required this.dirUrl,
    required this.imageUrl,
  });

  final String name;
  final String dirUrl;
  final String imageUrl;

  @override
  State<Item> createState() => _ItemState();
}

class RoundedClipper extends CustomClipper<RRect> {
  RoundedClipper();

  final double radius = 16;

  @override
  RRect getClip(Size size) {
    return RRect.fromRectAndCorners(
      Rect.fromLTWH(1, 13, sizeX - 20, sizeY - 20),
      topLeft: Radius.circular(radius),
      topRight: Radius.circular(radius),
      bottomLeft: Radius.circular(radius),
      bottomRight: Radius.circular(radius),
    );
  }

  @override
  bool shouldReclip(CustomClipper<RRect> oldClipper) {
    return true;
  }
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, '/stories-0');
      },
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll<Color>(
          const Color.fromARGB(115, 151, 208, 255),
        ),
        fixedSize: WidgetStateProperty.resolveWith<Size?>((
          Set<WidgetState> states,
        ) {
          return Size(sizeX, sizeY);
        }),
        shape: WidgetStateProperty.resolveWith<OutlinedBorder?>((
          Set<WidgetState> states,
        ) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(radius)),
          );
        }),
        padding: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
          return EdgeInsetsGeometry.all(10);
        }),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(widget.name),
          Container(
            alignment: Alignment.center,
            child: ClipRRect(
              clipper: RoundedClipper(),
              child: Image(
                alignment: Alignment.center,
                height: sizeX,
                width: sizeY,
                filterQuality: FilterQuality.high,
                isAntiAlias: true,
                image: AssetImage('/${widget.dirUrl}/${widget.imageUrl}'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

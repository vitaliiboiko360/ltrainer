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
    required this.order,
  });

  final String name;
  final String dirUrl;
  final String imageUrl;
  final int order;

  @override
  State<Item> createState() => _ItemState();
}

class RoundedClipper extends CustomClipper<RRect> {
  RoundedClipper(this.width, this.height);

  final double width;
  final double height;
  final double radius = 16;

  @override
  RRect getClip(Size size) {
    return RRect.fromRectAndCorners(
      Rect.fromLTWH(0, 0, width, height),
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

var buttonStyle = ButtonStyle(
  backgroundColor: WidgetStatePropertyAll<Color>(
    const Color.fromARGB(20, 151, 175, 255),
  ),
  fixedSize: WidgetStateProperty.resolveWith<Size?>((Set<WidgetState> states) {
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
  elevation: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
    return 20;
  }),
);

class _ItemState extends State<Item> {
  // getImageSize() {
  //   AssetImage image = AssetImage('/${widget.dirUrl}/${widget.imageUrl}');
  //   return (image);
  // }

  // double imageWidth = sizeX;
  // double imageHeight = sizeY;

  // @override
  // void initState() {
  //   super.initState();
  //   // var (imageWidth, imageHeight) = getImageSize();
  //   // this.imageWidth = imageWidth;
  //   // this.imageHeight = imageHeight;
  // }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(
          context,
          '/stories-0/story-${widget.order}',
          arguments: {'dirUrl': widget.dirUrl},
        );
      },

      style: TextButton.styleFrom(
        // backgroundColor: Color.fromARGB(20, 151, 175, 255),
        // fixedSize: Size(sizeX, sizeY),
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.all(Radius.circular(radius)),
        // ),
        // padding: EdgeInsetsGeometry.all(10),
        // shadowColor: Colors.black,
        backgroundColor: Colors.transparent,
        overlayColor: Colors.transparent,
      ),
      child: Container(
        width: sizeX,
        height: sizeY,
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(55, 121, 188, 250),
          backgroundBlendMode: BlendMode.src,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withAlpha(64),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        padding: EdgeInsetsGeometry.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 0,
          children: [
            Padding(
              padding: EdgeInsetsGeometry.directional(top: 20, bottom: 0),
              child: Text(
                widget.name,
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.zero,
              child: ClipRRect(
                clipper: RoundedClipper(sizeX - 80, sizeY - 80),
                child: Image(
                  width: sizeX - 90,
                  height: sizeY - 90,
                  filterQuality: FilterQuality.high,
                  isAntiAlias: true,
                  image: AssetImage('/${widget.dirUrl}/${widget.imageUrl}'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

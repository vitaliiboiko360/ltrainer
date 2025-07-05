import 'dart:math';

import 'package:flutter/material.dart';

const double sizeX = 240;
const double sizeY = 240;

const double radius = 32;

class TileButton extends StatelessWidget {
  const TileButton({super.key, required this.onPressed, required this.name});

  final VoidCallback onPressed;
  final String name;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
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
      ),
      child: Text(name),
    );
  }
}

class HiraganaButton extends StatelessWidget {
  const HiraganaButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/hiragana');
          },
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll<Color>(
              const Color.fromARGB(115, 195, 223, 255),
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
          ),
          child: Stack(
            children: [
              Container(
                decoration: ShapeDecoration(
                  color: const Color.fromARGB(171, 187, 172, 255),
                  shape: CircleBorder(),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'あ',
                  style: TextStyle(fontSize: 140, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                height: 32,
                width: 32,
                filterQuality: FilterQuality.high,
                isAntiAlias: true,
                image: AssetImage(
                  'writing-hand_light-skin-tone_270d-1f3fb_1f3fb.png',
                ),
              ),
              Text(' '),
              Text('Hiragana', style: TextStyle(fontSize: 24)),
            ],
          ),
        ),
      ],
    );
  }
}

class KatakanaButton extends StatelessWidget {
  const KatakanaButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/katakana');
          },
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll<Color>(
              const Color.fromARGB(115, 206, 195, 255),
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
          ),
          child: Stack(
            children: [
              Container(
                decoration: ShapeDecoration(
                  color: const Color.fromARGB(171, 172, 205, 255),
                  shape: CircleBorder(),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'ア',
                  style: TextStyle(fontSize: 140, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                height: 32,
                width: 32,
                filterQuality: FilterQuality.high,
                isAntiAlias: true,
                image: AssetImage('input-latin-letters_1f524.png'),
              ),
              Text(' '),
              Text('Katakana', style: TextStyle(fontSize: 24)),
            ],
          ),
        ),
      ],
    );
  }
}

class KanjiButton extends StatelessWidget {
  const KanjiButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/kanji');
          },
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll<Color>(
              const Color.fromARGB(115, 172, 218, 255),
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
          ),
          child: Stack(
            children: [
              Container(
                decoration: ShapeDecoration(
                  color: const Color.fromARGB(171, 255, 172, 227),
                  shape: CircleBorder(),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  '漢字',
                  style: TextStyle(fontSize: 90, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                height: 32,
                width: 32,
                filterQuality: FilterQuality.high,
                isAntiAlias: true,
                image: AssetImage('open-book_1f4d6.png'),
              ),
              Text(' '),
              Text('Kanji', style: TextStyle(fontSize: 24)),
            ],
          ),
        ),
      ],
    );
  }
}

class CircleRevealClipper extends CustomClipper<Rect> {
  CircleRevealClipper();

  @override
  Rect getClip(Size size) {
    return Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: size.width / 2,
    );
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}

class RoundedRevealClipper extends CustomClipper<RRect> {
  RoundedRevealClipper();

  final double radius = 24;

  @override
  RRect getClip(Size size) {
    return RRect.fromRectAndCorners(
      Rect.fromLTWH(1, 13, 214, 214),
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

class StoriesButton extends StatelessWidget {
  const StoriesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
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
          ),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                child: ClipRRect(
                  clipper: RoundedRevealClipper(),
                  child: Image(
                    alignment: Alignment.center,
                    height: sizeX,
                    width: sizeY,
                    filterQuality: FilterQuality.high,
                    isAntiAlias: true,
                    image: AssetImage('icon_miscelenious.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Level', style: TextStyle(fontSize: 24)),
              Text(' '),
              Image(
                height: 32,
                width: 32,
                filterQuality: FilterQuality.high,
                isAntiAlias: true,
                image: AssetImage('keycap-digit-zero_30-fe0f-20e3.png'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class StoriesButtonLevel1 extends StatelessWidget {
  const StoriesButtonLevel1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/stories-1');
          },
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll<Color>(
              const Color.fromARGB(115, 187, 151, 255),
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
          ),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                child: ClipRRect(
                  clipper: RoundedRevealClipper(),
                  child: Image(
                    alignment: Alignment.center,
                    height: sizeX,
                    width: sizeY,
                    filterQuality: FilterQuality.high,
                    isAntiAlias: true,
                    image: AssetImage('81Jb6LBy9ZL_2.jpg'),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Level', style: TextStyle(fontSize: 24)),
              Text(' '),
              Image(
                height: 32,
                width: 32,
                filterQuality: FilterQuality.high,
                isAntiAlias: true,
                image: AssetImage('keycap-digit-one_31-fe0f-20e3.png'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

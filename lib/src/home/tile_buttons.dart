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

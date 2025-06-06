import 'package:flutter/material.dart';

class ButtonLetter extends StatefulWidget {
  ButtonLetter({super.key, required this.text, required this.onPressed});

  final String text;
  final VoidCallback onPressed;
  bool selected = false;

  @override
  State<ButtonLetter> createState() => _ButtonLetterState();
}

class _ButtonLetterState extends State<ButtonLetter> {
  late final WidgetStatesController statesController;

  ButtonStyle style = ButtonStyle(
    padding: WidgetStateProperty.resolveWith<EdgeInsetsDirectional?>((
      Set<WidgetState> states,
    ) {
      return EdgeInsetsDirectional.only(bottom: 10);
    }),
    shape: WidgetStateProperty.resolveWith<CircleBorder?>((
      Set<WidgetState> states,
    ) {
      return CircleBorder();
    }),
    textStyle: WidgetStateProperty.resolveWith<TextStyle?>((
      Set<WidgetState> states,
    ) {
      return TextStyle(fontSize: 22);
    }),
    foregroundColor: WidgetStateProperty<Color?>.fromMap(<WidgetState, Color>{
      WidgetState.selected: Colors.white,
    }),
    backgroundColor: WidgetStateProperty<Color?>.fromMap({
      WidgetState.selected: Colors.indigo,
      WidgetState.any: Color(0xfff2ecf2),
    }),
  );

  @override
  void initState() {
    super.initState();
    statesController = WidgetStatesController(<WidgetState>{
      if (widget.selected) WidgetState.selected,
    });
  }

  @override
  void didUpdateWidget(ButtonLetter oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.selected != oldWidget.selected) {
      statesController.update(WidgetState.selected, widget.selected);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          widget.selected = !widget.selected;
        });
        widget.onPressed();
      },
      style: style,
      child: Text(widget.text),
    );
  }
}

class SelectableButton extends StatefulWidget {
  const SelectableButton({
    super.key,
    required this.selected,
    this.style,
    required this.onPressed,
    required this.child,
  });

  final bool selected;
  final ButtonStyle? style;
  final VoidCallback? onPressed;
  final Widget child;

  @override
  State<SelectableButton> createState() => _SelectableButtonState();
}

class _SelectableButtonState extends State<SelectableButton> {
  late final WidgetStatesController statesController;

  @override
  void initState() {
    super.initState();
    statesController = WidgetStatesController(<WidgetState>{
      if (widget.selected) WidgetState.selected,
    });
  }

  @override
  void didUpdateWidget(SelectableButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.selected != oldWidget.selected) {
      statesController.update(WidgetState.selected, widget.selected);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      statesController: statesController,
      style: widget.style,
      onPressed: widget.onPressed,
      child: widget.child,
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool selected = false;

  /// Sets the button's foreground and background colors.
  /// If not selected, resolves to null and defers to default values.
  static const ButtonStyle style = ButtonStyle(
    foregroundColor: WidgetStateProperty<Color?>.fromMap(<WidgetState, Color>{
      WidgetState.selected: Colors.white,
    }),
    backgroundColor: WidgetStateProperty<Color?>.fromMap(<WidgetState, Color>{
      WidgetState.selected: Colors.indigo,
    }),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SelectableButton(
          selected: selected,
          style: style,
          onPressed: () {
            setState(() {
              selected = !selected;
            });
          },
          child: const Text('toggle selected'),
        ),
      ),
    );
  }
}

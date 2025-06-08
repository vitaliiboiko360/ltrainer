import 'package:flutter/material.dart';

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

class ButtonLetter extends StatefulWidget {
  ButtonLetter({
    super.key,
    required this.text,
    required this.onPressed,
    required this.selected,
  });

  final String text;
  final VoidCallback onPressed;
  bool selected;

  @override
  State<ButtonLetter> createState() => _ButtonLetterState();
}

class _ButtonLetterState extends State<ButtonLetter> {
  static ButtonStyle style = ButtonStyle(
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
      WidgetState.selected: const Color.fromARGB(255, 63, 132, 181),
      WidgetState.any: Color(0xfff2ecf2),
    }),
  );

  @override
  Widget build(BuildContext context) {
    return SelectableButton(
      selected: widget.selected,
      style: style,
      onPressed: () {
        setState(() {
          widget.selected = !widget.selected;
        });
        widget.onPressed();
      },
      child: Text(widget.text),
    );
  }
}

class ButtonChild extends StatefulWidget {
  ButtonChild({
    super.key,
    required this.child,
    required this.onPressed,
    required this.selected,
  });

  final Widget child;
  final VoidCallback onPressed;
  bool selected;

  @override
  State<ButtonChild> createState() => _ButtonChildState();
}

class _ButtonChildState extends State<ButtonChild> {
  static ButtonStyle style = ButtonStyle(
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
      WidgetState.selected: const Color.fromARGB(255, 63, 132, 181),
      WidgetState.any: Color(0xfff2ecf2),
    }),
  );

  @override
  Widget build(BuildContext context) {
    return SelectableButton(
      selected: widget.selected,
      style: style,
      onPressed: () {
        setState(() {
          widget.selected = !widget.selected;
        });
        widget.onPressed();
      },
      child: widget.child,
    );
  }
}

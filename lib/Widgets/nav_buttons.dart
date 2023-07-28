import 'package:flutter/material.dart';

class NavButton extends StatefulWidget {
  final VoidCallback? onPressed;
  final String text;
  final bool isSelected;

  const NavButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.isSelected = false,
  }) : super(key: key);

  @override
  State<NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton>
    with SingleTickerProviderStateMixin {
  bool isHover = false;
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 200),
    vsync: this,
  );
  late final Animation<double> _animation = Tween<double>(
    begin: 1.2,
    end: 5.0,
  ).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          isHover = true;
        });
        _controller.forward();
      },
      onExit: (event) {
        setState(() {
          isHover = false;
        });
        _controller.reverse();
      },
      child: GestureDetector(
        onTap: widget.onPressed,
        child: Container(
          decoration: BoxDecoration(
            color: widget.isSelected
                ? Colors.white
                : isHover
                    ? Color.fromARGB(255, 24, 24, 24)
                    : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) => Text(
              widget.text,
              style: TextStyle(
                color:
                    widget.isSelected ? Colors.black : Colors.white,
                letterSpacing: _animation.value,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

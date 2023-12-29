import 'package:flutter/material.dart';

class ChoiBtn extends StatefulWidget {
  final double width;
  final String name;
  final Widget? icon;
  const ChoiBtn({Key? key, required this.width, required this.name, this.icon})
      : super(key: key);

  @override
  _ChoiBtnState createState() => _ChoiBtnState();
}

class _ChoiBtnState extends State<ChoiBtn> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected; // Toggle the selected state
        });
      },
      child: Container(
        width: widget.width,
        height: 28,
        padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              color: selected
                  ? Colors.blueAccent
                  : Color.fromRGBO(52, 85, 153, 0.35)),
          // Change background color when selected
        ),
        child: Center(
            child: Row(
          children: [
            Text(
              widget.name,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: selected
                      ? Colors.blueAccent
                      : Color.fromRGBO(52, 85, 153, 0.35)),
            ),
            if (widget.icon != null) ...[
              widget.icon!,
              SizedBox(
                width: 0,
              )
            ],
          ],
        )),
      ),
    );
  }
}

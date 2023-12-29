import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CarFeatures extends StatelessWidget {
  final String leadText;
  final String trailText;
  final String? imagaddress;
  final Color clr;
  const CarFeatures(
      {super.key,
      required this.leadText,
      required this.trailText,
      this.imagaddress,
      required this.clr});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 16,
      padding: EdgeInsets.only(bottom: 2, left: 3, right: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: clr)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            leadText,
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 10, color: clr),
          ),
          Text(
            trailText,
            style: TextStyle(
                color: clr, fontWeight: FontWeight.w700, fontSize: 10),
          ),
          SvgPicture.asset('$imagaddress')
        ],
      ),
    );
  }
}

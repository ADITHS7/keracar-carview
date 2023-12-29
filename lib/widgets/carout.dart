import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:keracarbtn/Component/cardtls.dart';
import 'package:keracarbtn/Component/carimage.dart';

class CarOut extends StatefulWidget {
  const CarOut({super.key});

  @override
  State<CarOut> createState() => _CarOutState();
}

class _CarOutState extends State<CarOut> {
  bool wishlisted = false;
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Container(
        width: 327,
        height: 180,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color.fromRGBO(155, 155, 155, 1))),
        child: Column(
          children: [
            Row(
              children: [CarImage(), CarDtls()],
            ),
            Container(
              color: Color(0x528AFF).withOpacity(.12),
              padding: EdgeInsets.symmetric(horizontal: 8),
              width: 326,
              height: 48,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: "Current Bid: ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 14,
                                  letterSpacing: .1),
                              children: [
                            TextSpan(
                                text: "9,00,000",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ))
                          ])),
                      Text(
                        "Fair market value: 9,60,000",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('lib/assets/Clock.svg'),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        '02:23:42',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Color.fromRGBO(33, 33, 33, 1)),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

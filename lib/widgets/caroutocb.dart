import 'package:flutter/material.dart';
import 'package:keracarbtn/Component/cardtls.dart';
import 'package:keracarbtn/Component/carimage.dart';

class CarOutOcb extends StatefulWidget {
  const CarOutOcb({super.key});

  @override
  State<CarOutOcb> createState() => _CarOutOcbState();
}

class _CarOutOcbState extends State<CarOutOcb> {
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
                              text: "OCB PRICE: ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 16,
                                  letterSpacing: .1),
                              children: [
                            TextSpan(
                                text: "9,00,000",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ))
                          ])),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:keracarbtn/widgets/carfeatures.dart';

class CarDtls extends StatefulWidget {
  const CarDtls({super.key});

  @override
  State<CarDtls> createState() => _CarDtlsState();
}

class _CarDtlsState extends State<CarDtls> {
  bool wishlisted = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 152,
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              children: [
                Container(
                  width: 106,
                  height: 60,
                  decoration: BoxDecoration(),
                  child: RichText(
                      text: TextSpan(
                          text: "2019 Hyundai",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 16,
                              letterSpacing: .1),
                          children: [
                        TextSpan(
                            text: "\nVENUE\nS 1.2 ",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ))
                      ])),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 58, left: 5, bottom: 7),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        wishlisted = !wishlisted; // Toggle the selected state
                      });
                    },
                    child: SvgPicture.asset(wishlisted
                        ? 'lib/assets/wishlisticonfilled.svg'
                        : 'lib/assets/wishlisticon.svg'),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CarFeatures(
                        leadText: 'ENGINE',
                        trailText: '5',
                        imagaddress: 'lib/assets/Star.svg',
                        clr: Color.fromRGBO(83, 190, 0, 1),
                      ),
                      CarFeatures(
                        leadText: '24,934 km',
                        trailText: '',
                        clr: Colors.blueAccent,
                        imagaddress: 'lib/assets/speed.svg',
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CarFeatures(
                        leadText: 'Owner  ',
                        trailText: '1ˢᵗ',
                        clr: Colors.blueAccent,
                      ),
                      CarFeatures(
                        leadText: 'Petrol',
                        trailText: '',
                        clr: Colors.blueAccent,
                        imagaddress: 'lib/assets/local_fire_department.svg',
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 4),
        ],
      ),
    );
  }
}

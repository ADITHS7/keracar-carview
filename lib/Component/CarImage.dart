import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarImage extends StatefulWidget {
  const CarImage({Key? key}) : super(key: key);

  @override
  State<CarImage> createState() => _CarImageState();
}

class _CarImageState extends State<CarImage> {
  final List<String> dummyImages = [
    'lib/assets/carImages/hyundai_venue.jpg',
    'lib/assets/carImages/hyundai_venue_frontview.jpg',
    'lib/assets/carImages/hyundai_venue_rearview.jpg',
    'lib/assets/carImages/hyundai_venue_taillight.jpg',
    'lib/assets/carImages/hyundai_venue_alloy_wheels.jpg',
    'lib/assets/carImages/hyundai_venue_logo.jpg',
    'lib/assets/carImages/hyundai_venue_fog_light.jpg',
    'lib/assets/carImages/hyundai_venue_headlight.jpg'
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 173,
        height: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
            border: Border(
                right: BorderSide(color: Color.fromRGBO(155, 155, 155, .35)))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CarouselSlider(
              items: dummyImages.map((url) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      height: 130,
                      margin: EdgeInsets.symmetric(horizontal: 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                        // Add border radius here
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          topLeft: Radius.circular(8),
                        ),
                        child: Image.asset(
                          url,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                aspectRatio: 1.323076924,
                viewportFraction: 1.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                  // Do something when the page changes
                },
              ),
            ),
          ],
        ),
      ),
      Positioned(
          bottom: 4,
          child: Container(
            width: 173,
            child: Container(
              width: 57,
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        SvgPicture.asset('lib/assets/location.svg'),
                        SizedBox(width: 7),
                        const Text(
                          'Calicut',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 8,
                            color: Color.fromRGBO(155, 155, 155, 1),
                            shadows: [
                              Shadow(
                                color: Color.fromRGBO(0, 0, 0, 0.5),
                                blurRadius: 2,
                                offset: Offset(0, 1),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 69,
                    height: 13.01,
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: Color.fromRGBO(155, 155, 155, 1))),
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            '${_currentIndex + 1}/8',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 8,
                                color: Color.fromRGBO(155, 155, 155, 1)),
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: dummyImages
                              .asMap()
                              .entries
                              .where((entry) =>
                                  entry.key >= _currentIndex &&
                                  entry.key < _currentIndex + 5)
                              .map((entry) {
                            return Padding(
                              padding: EdgeInsets.only(right: 3.0),
                              child: _currentIndex == entry.key
                                  ? SvgPicture.asset('lib/assets/Ellipse.svg')
                                  : SvgPicture.asset(
                                      'lib/assets/Ellipse Fill.svg'),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    ]);
  }
}

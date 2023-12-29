import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:keracarbtn/widgets/choibtn.dart';

class FiltersPage extends StatelessWidget {
  const FiltersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Container(
          height: 28, // Set a fixed height for the inner ListView
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ChoiBtn(
                width: 99,
                name: 'Saved ',
                icon: SizedBox(
                    child: SvgPicture.asset('lib/assets/Menu_Alt_02.svg')),
              ),
              SizedBox(width: 8),
              ChoiBtn(
                width: 61,
                name: 'Petrol',
              ),
              SizedBox(width: 8),
              ChoiBtn(
                width: 62,
                name: 'Diesel',
              ),
              SizedBox(width: 8),
              ChoiBtn(
                width: 64,
                name: '>2020',
              ),
              SizedBox(width: 8),
              ChoiBtn(
                width: 178,
                name: 'No Structural Damage',
              ),
            ],
          )),
    );
  }
}

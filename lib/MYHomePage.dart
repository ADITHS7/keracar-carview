import 'package:flutter/material.dart';
import 'package:keracarbtn/Component/FiltersPage.dart';
import 'package:keracarbtn/widgets/carout.dart';
import 'package:keracarbtn/widgets/caroutocb.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool toggleValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(children: [
        Center(
          child: AnimatedContainer(
              duration: Duration(milliseconds: 1000),
              height: 40,
              width: 216,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(82, 138, 255, 0.12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 36,
                    width: 102,
                    decoration: BoxDecoration(
                      color:
                          toggleValue ? Colors.transparent : Colors.blueAccent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        toggleValue ? toggleButton() : ();
                      },
                      child: Text(
                        "Auctions",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: toggleValue
                                ? Color.fromRGBO(155, 155, 155, 1)
                                : Colors.white),
                      ),
                      key: UniqueKey(),
                    ),
                  ),
                  Container(
                    height: 36,
                    width: 102,
                    decoration: BoxDecoration(
                      color:
                          toggleValue ? Colors.blueAccent : Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        toggleValue ? () : toggleButton();
                      },
                      child: Text(
                        "OCB",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: toggleValue
                                ? Colors.white
                                : Color.fromRGBO(155, 155, 155, 1)),
                      ),
                      key: UniqueKey(),
                    ),
                  ),
                ],
              )),
        ),
        FiltersPage(),
        SizedBox(height: 20),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: toggleValue
                ? Column(
                    children: [
                      CarOutOcb(),
                      SizedBox(height: 12),
                      CarOutOcb(),
                      SizedBox(height: 12),
                      CarOutOcb(),
                      SizedBox(height: 12),
                      CarOutOcb(),
                      SizedBox(height: 12),
                    ],
                  )
                : Column(
                    children: [
                      CarOut(),
                      SizedBox(
                        height: 12,
                      ),
                      CarOut(),
                      SizedBox(height: 12),
                      CarOut(),
                      SizedBox(height: 12),
                      CarOut(),
                      SizedBox(height: 12),
                      CarOut(),
                      SizedBox(height: 12),
                      CarOut(),
                    ],
                  ))
      ]),
    );
  }

  toggleButton() {
    setState(() {
      toggleValue = !toggleValue;
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FctnOfRow extends StatelessWidget {
  String name;

  String price;
  Color clr;
  Color clr2;
  FctnOfRow(
      {required this.name,
      required this.price,
      required this.clr,
      required this.clr2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 25.0, left: 15, right: 20, bottom: 25),
      child: Container(
        height: MediaQuery.of(context).size.height * .240,
        width: MediaQuery.of(context).size.height * .280,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: clr //Color(0xff3A0F55),
            ),
        child: Column(
          children: [
            Expanded(
                flex: 4,
                child: Center(
                  child: Text(
                    "22 June 2022",
                    style: TextStyle(fontSize: 22, color: Color(0xff5F5B5B)),
                  ),
                )),
            Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18), color: clr2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "$name",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.white38),
                            ),
                            Text(
                              "\$$price",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.white38),
                            ),
                          ],
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white60,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.network(
                              "https://cdn-icons-png.flaticon.com/512/5631/5631225.png",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

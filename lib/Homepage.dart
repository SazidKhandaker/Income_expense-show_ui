import 'package:day12/Listofindex.dart';
import 'package:day12/fctnrow.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 35.0, bottom: 5),
                            child: Text(
                              "\$6,890",
                              style: fctnstyle(
                                  24,
                                  Color.fromARGB(106, 48, 43, 48)
                                      .withOpacity(0.6),
                                  FontWeight.bold),
                            ),
                          ),
                          Text(
                            "June earning",
                            style: fctnstyle(
                                20,
                                Color.fromARGB(106, 48, 43, 48)
                                    .withOpacity(0.6)),
                          ),
                        ],
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: Colors.deepPurpleAccent),
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(100),
                                topLeft: Radius.circular(100),
                                bottomRight: Radius.circular(100),
                                topRight: Radius.circular(100))),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1565079527389-eb2640ee27fc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                            ),
                            Text(
                              " :",
                              style: fctnstyle(28, Colors.black),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22, vertical: 22),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        rowconainerfctn("Week", Colors.white),
                        rowconainerfctn("Month", Colors.transparent),
                        rowconainerfctn("Year", Colors.transparent),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22.0, top: 15),
                  child: Text(
                    "Upcoming Bills",
                    style: fctnstyle(24, Colors.black54, FontWeight.bold),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      FctnOfRow(
                        name: "Evernote",
                        price: "9.50",
                        clr: Color(0xff3A0F55),
                        clr2: Colors.white38,
                      ),
                      FctnOfRow(
                        name: "Xoom TV",
                        price: "9.50",
                        clr: Color(0xffF98B4D).withOpacity(0.75),
                        clr2: Colors.orange.withOpacity(0.9),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 20, bottom: 20),
                  child: Text(
                    "Week Transactions",
                    style: fctnstyle(18, Colors.black38),
                  ),
                ),
                SingleChildScrollView(
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: listclass.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Card(
                            child: ListTile(
                              leading: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  width:
                                      MediaQuery.of(context).size.height * 0.1,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: listclass[index].price > 0
                                          ? Colors.green.withOpacity(0.2)
                                          : Colors.red.withOpacity(0.2)),
                                  child: Center(
                                      child: listclass[index].price > 0
                                          ? Icon(
                                              Icons.arrow_upward,
                                              color: Colors.green,
                                            )
                                          : Icon(
                                              Icons.arrow_downward,
                                              color: Colors.red,
                                            )),
                                ),
                              ),
                              title: Text(
                                "${listclass[index].title}",
                                style: fctnstyle(
                                    22, Colors.black, FontWeight.bold),
                              ),
                              subtitle: Text(
                                "${listclass[index].subtitle}",
                                style: fctnstyle(18, Colors.black38),
                              ),
                              trailing: listclass[index].price > 0
                                  ? Text("+${listclass[index].price}",
                                      style: listclass[index].price > 0
                                          ? fctnstyle(22, Colors.green)
                                          : fctnstyle(22, Colors.red))
                                  : Text("${listclass[index].price}",
                                      style: listclass[index].price > 0
                                          ? fctnstyle(22, Colors.green)
                                          : fctnstyle(22, Colors.red)),
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  fctnstyle(double size, Color clr, [FontWeight? fw]) {
    return TextStyle(
      fontSize: size,
      color: clr,
      fontWeight: fw,
    );
  }

  rowconainerfctn(String name, Color clr) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(14), color: clr),
        child: Text(
          "$name",
          style: fctnstyle(19, Colors.black54, FontWeight.bold),
        ),
      ),
    );
  }
}

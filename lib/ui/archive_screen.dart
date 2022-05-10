import 'package:flutter/material.dart';
import 'package:test_currency/ui/popups/details_popup.dart';
import 'package:test_currency/ui/widgets/bar_widget.dart';

class ArchiveScreen extends StatefulWidget {
  const ArchiveScreen({Key? key}) : super(key: key);

  @override
  State<ArchiveScreen> createState() => _ArchiveScreenState();
}

class _ArchiveScreenState extends State<ArchiveScreen> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(deviceWidth, deviceHeight * 0.07),
        child: barWidget(
          deviceHeight: deviceHeight,
          deviceWidth: deviceWidth,
          context: context,
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: deviceHeight * 0.1,
          left: deviceHeight * 0.07,
        ),
        alignment: Alignment.center,
        child: Column(children: [
          Row(
            children: [
              Icon(
                Icons.star,
                size: deviceWidth * 0.07,
                color: Color.fromARGB(255, 49, 49, 49),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailsPopUP(),
                    ),
                  );
                },
                child: Container(
                  width: deviceWidth * 0.7,
                  height: deviceWidth * 0.13,
                  padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.053),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: SizedBox(
                    width: deviceWidth * 0.75,
                    height: deviceWidth * 0.13,
                    child: Card(
                      color: Color.fromARGB(255, 241, 234, 234),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: deviceHeight * 0.015,
                          ),
                          child: Text(
                            '3000TND',
                            style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}

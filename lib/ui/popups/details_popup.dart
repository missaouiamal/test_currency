import 'package:flutter/material.dart';

/// {@nodoc}
@immutable
class DetailsPopUP extends StatefulWidget {
  const DetailsPopUP({key}) : super(key: key);

  @override
  _DetailsPopUPState createState() => _DetailsPopUPState();
}

/// {@nodoc}
class _DetailsPopUPState extends State<DetailsPopUP> {
  bool animate = false;

  @override
  void initState() {
    super.initState();

    initAnnimation();
  }

  @override
  Future<void> initAnnimation() async {
    await Future.delayed(Duration(milliseconds: 10));
    setState(() {
      animate = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    double deviceWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: GestureDetector(
          onTap: () async {
            setState(() {
              animate = false;
            });

            await Future.delayed(Duration(milliseconds: 300));

            Navigator.pop(context);
          },
          child: AnimatedContainer(
            width: deviceWidth,
            //height: deviceHeight,
            duration: const Duration(milliseconds: 300),
            color: Colors.transparent,
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 300),
                    opacity: animate ? 1 : 0,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      child: Center(
                        child: Container(
                          width: deviceWidth * 0.8,
                          height: deviceWidth * 0.6,
                          padding: EdgeInsets.symmetric(
                            vertical: deviceHeight * 0.04,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(deviceWidth * 0.08)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                offset: const Offset(0.0, 1.0), //(x,y)
                                blurRadius: 10.0,
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  height: deviceWidth * 0.07,
                                  padding: EdgeInsets.only(
                                    left: deviceWidth * 0.07,
                                  ),
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: deviceWidth * 0.008, left: deviceWidth * 0.03),
                                        child: Text(
                                          "Details About the Conversion",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: deviceWidth * 0.038,
                                            fontWeight: FontWeight.w600,
                                            color: const Color(0xFF8E1149),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: deviceWidth * 0.106,
                                    left: deviceWidth * 0.07,
                                    bottom: deviceWidth * 0.206,
                                    right: deviceWidth * 0.07,
                                  ),
                                  child: Card(
                                    child: Column(children: [
                                      Text(
                                        "From TND to EURO",
                                      ),
                                      Text(
                                        "3000TND ==> 0 £",
                                      ),
                                      Text(
                                        "10 Mai 2022 , à 19:12",
                                      )
                                    ]),
                                  ),
                                ),
                              ),
                              //Btns row
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

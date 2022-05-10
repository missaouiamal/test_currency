import 'package:flutter/material.dart';
import 'package:test_currency/ui/widgets/bar_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    const IconData currency_exchange = IconData(0xf04dc, fontFamily: 'MaterialIcons');
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(deviceWidth, deviceHeight * 0.07),
        child: barWidget(
          deviceHeight: deviceHeight,
          deviceWidth: deviceWidth,
          context: context,
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: deviceHeight * 0.2),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: deviceWidth * 0.11),
                child: Row(
                  children: [
                    Container(
                        width: deviceWidth * 0.35,
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
                          child: TextField(
                            maxLines: 1,
                            minLines: 1,
                            autofocus: true,
                            // controller: _inputController,
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                              hintText: "From",
                              hintStyle: TextStyle(
                                fontSize: deviceWidth * 0.038,
                                fontWeight: FontWeight.w600,
                                color: Colors.black54,
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent),
                                gapPadding: 0,
                              ),
                              fillColor: Color.fromARGB(255, 147, 102, 224),
                              errorMaxLines: 1,
                              isDense: true,
                              filled: true,
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent),
                                gapPadding: 0,
                              ),
                              errorBorder: const OutlineInputBorder(
                                gapPadding: 0,
                                borderSide: BorderSide(color: Colors.transparent),
                              ),
                            ),
                            style: TextStyle(
                              fontSize: deviceWidth * 0.038,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        )),
                    const Icon(
                      currency_exchange,
                      color: Colors.black,
                      size: 30.0,
                    ),
                    Container(
                      width: deviceWidth * 0.35,
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
                        child: TextField(
                          maxLines: 1,
                          minLines: 1,
                          autofocus: true,
                          // controller: _inputController,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            hintText: "To",
                            hintStyle: TextStyle(
                              fontSize: deviceWidth * 0.038,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54,
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              gapPadding: 0,
                            ),
                            fillColor: Color.fromARGB(255, 147, 102, 224),
                            errorMaxLines: 1,
                            isDense: true,
                            filled: true,
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              gapPadding: 0,
                            ),
                            errorBorder: const OutlineInputBorder(
                              gapPadding: 0,
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                          ),
                          style: TextStyle(
                            fontSize: deviceWidth * 0.038,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceHeight * 0.03,
              ),
              Container(
                width: deviceWidth * 0.77,
                height: deviceWidth * 0.13,
                padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.053),
                child: SizedBox(
                  width: deviceWidth * 0.75,
                  height: deviceWidth * 0.13,
                  child: TextField(
                    maxLines: 1,
                    minLines: 1,
                    autofocus: true,
                    // controller: _inputController,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      hintText: "Input Amount",
                      hintStyle: TextStyle(
                        fontSize: deviceWidth * 0.038,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        gapPadding: 0,
                      ),
                      fillColor: Color.fromARGB(255, 147, 102, 224),
                      errorMaxLines: 1,
                      isDense: true,
                      filled: true,
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        gapPadding: 0,
                      ),
                      errorBorder: const OutlineInputBorder(
                        gapPadding: 0,
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                    style: TextStyle(
                      fontSize: deviceWidth * 0.038,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(
                height: deviceHeight * 0.03,
              ),
              Container(
                width: deviceWidth * 0.77,
                height: deviceWidth * 0.13,
                padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.053),
                child: SizedBox(
                  width: deviceWidth * 0.75,
                  height: deviceWidth * 0.13,
                  child: TextField(
                    maxLines: 1,
                    minLines: 1,
                    autofocus: true,
                    // controller: _inputController,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      hintText: "Amount converted",
                      hintStyle: TextStyle(
                        fontSize: deviceWidth * 0.038,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        gapPadding: 0,
                      ),
                      fillColor: Color.fromARGB(255, 147, 102, 224),
                      errorMaxLines: 1,
                      isDense: true,
                      filled: true,
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        gapPadding: 0,
                      ),
                      errorBorder: const OutlineInputBorder(
                        gapPadding: 0,
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                    style: TextStyle(
                      fontSize: deviceWidth * 0.038,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(
                height: deviceHeight * 0.2,
              ),
              Container(
                  width: deviceWidth * 0.66,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                    ),
                    child: Icon(
                      Icons.save_rounded,
                    ),
                  )),
              SizedBox(
                height: deviceHeight * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: deviceHeight * 0.05),
                child: Container(
                  width: deviceWidth * 0.66,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.delete_rounded,
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

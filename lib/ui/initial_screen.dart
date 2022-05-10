import 'package:flutter/material.dart';
import 'package:test_currency/ui/main_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    const IconData currency_exchange = IconData(0xf04dc, fontFamily: 'MaterialIcons');
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: deviceHeight * 0.6,
            width: deviceWidth,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/image1.png',
                  fit: BoxFit.contain,
                  height: deviceHeight * 0.13,
                ),
                SizedBox(
                  height: deviceHeight * 0.15,
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
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        hintText: "Username",
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
                  width: deviceWidth * 0.4,
                  child: TextButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(
                              color: Color.fromARGB(255, 53, 154, 56),
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MainScreen()),
                        );
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(
                          color: Color.fromARGB(255, 53, 154, 56),
                          fontSize: deviceHeight * 0.025,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

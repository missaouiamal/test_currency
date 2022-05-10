import 'package:flutter/material.dart';
import 'package:test_currency/ui/archive_screen.dart';

Widget barWidget({
  required double deviceHeight,
  required double deviceWidth,
  required BuildContext context,
}) {
  return Material(
    elevation: 0.0,
    color: Colors.transparent,
    child: Material(
      type: MaterialType.transparency, // likely needed
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        padding: EdgeInsets.only(top: deviceHeight * 0.02),
        height: deviceHeight * 0.085,
        child: Padding(
          padding: EdgeInsets.only(
            left: deviceWidth * 0.02,
            right: deviceWidth * 0.02,
            top: deviceWidth * 0.02,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/image1.png',
                fit: BoxFit.contain,
                height: deviceHeight * 0.05,
              ),
              SizedBox(
                width: deviceWidth * 0.62,
              ),
              GestureDetector(
                onTap: () {
                   Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ArchiveScreen()),
                        );
                },
                child: const Icon(
                  Icons.storage_rounded,
                  color: Colors.black,
                  size: 43.0,
                ),
              ),
              SizedBox(
                width: deviceWidth * 0.02,
              ),
              const Icon(
                Icons.settings,
                color: Colors.black,
                size: 43.0,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

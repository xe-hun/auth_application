import 'package:auth_appication/presentation/shared/sizes.dart';
import 'package:flutter/material.dart';

Widget buildCustombutton(
    {required String label, required Function() onPressed}) {
  return SizedBox(
    height: 45,
    child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Text(
          label,
          style: TextStyle(
            fontSize: displaySize2,
          ),
        )),
  );
}

Widget buildPageLabel({required String label}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 100),
    child: Center(
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: displaySize5, fontWeight: FontWeight.w700),
      ),
    ),
  );
}

PreferredSizeWidget buildAppBar() {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.grey.shade600),
    elevation: 0,
    backgroundColor: Colors.transparent,
  );
}

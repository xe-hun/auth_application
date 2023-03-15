import 'package:auth_appication/domain/failures/value_failure.dart';
import 'package:auth_appication/presentation/sizes.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

Widget buildTextInputField(
    {required String label,
    required TextEditingController tec,
    Either<ValueFailure, String> Function(String)? validator,
    bool obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          label,
          style: TextStyle(fontSize: displaySize3, fontWeight: FontWeight.w500),
        ),
      ),
      const SizedBox(height: 8),
      TextFormField(
        validator: (value) => validator?.call(value!).fold(
            (l) => l.when(
                  invalidEmail: () => 'Please Enter a valid Email!',
                  stringTooShort: (value) => '$value is too short!',
                  empty: (value) => '$value can not be empty!',
                ),
            (r) => null),
        obscureText: obscureText,
        obscuringCharacter: '●',
        controller: tec,
        style: TextStyle(fontSize: displaySize2),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          border: _buildInputBorder(),
          enabledBorder: _buildInputBorder(),
          focusedBorder: _buildInputBorder(),
        ),
      ),
      const SizedBox(
        height: 30,
      )
    ],
  );
}

InputBorder _buildInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(width: 1, color: Colors.grey.shade400));
}

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

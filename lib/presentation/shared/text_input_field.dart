import 'package:auth_appication/domain/failures/value_failure.dart';
import 'package:auth_appication/presentation/shared/sizes.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TextInputField extends HookWidget {
  const TextInputField._(
      {Key? key,
      required this.label,
      required this.tec,
      this.validator,
      this.isPassword = false})
      : super(key: key);

  factory TextInputField.password({
    required String label,
    required TextEditingController tec,
    Either<ValueFailure, String> Function(String)? validator,
  }) {
    return TextInputField._(
        label: label, tec: tec, isPassword: true, validator: validator);
  }

  factory TextInputField.input({
    required String label,
    required TextEditingController tec,
    Either<ValueFailure, String> Function(String)? validator,
  }) {
    return TextInputField._(
        label: label, tec: tec, isPassword: false, validator: validator);
  }

  final String label;
  final TextEditingController tec;
  final Either<ValueFailure, String> Function(String)? validator;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    final showPassword = useState<bool>(false);
    return _buildTextInputField(
        label: label,
        tec: tec,
        validator: validator,
        isPassword: isPassword,
        showPassword: showPassword);
  }

  Widget _buildTextInputField(
      {required String label,
      required TextEditingController tec,
      Either<ValueFailure, String> Function(String)? validator,
      bool isPassword = false,
      required ValueNotifier<bool> showPassword}) {
    return SizedBox(
      height: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              label,
              style: TextStyle(
                  fontSize: displaySize3, fontWeight: FontWeight.w500),
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
            obscureText: isPassword == true ? !showPassword.value : false,
            obscuringCharacter: '●',
            controller: tec,
            style: TextStyle(fontSize: displaySize2),
            decoration: InputDecoration(
              suffixIcon: isPassword == false
                  ? null
                  : ValueListenableBuilder(
                      valueListenable: showPassword,
                      builder: (context, value, child) {
                        return Padding(
                          padding: const EdgeInsets.all(2),
                          child: SizedBox(
                            height: 40,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Material(
                                child: IconButton(
                                    style: IconButton.styleFrom(
                                        tapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        padding: EdgeInsets.zero),
                                    icon: value == true
                                        ? const Icon(CupertinoIcons.eye_slash)
                                        : const Icon(CupertinoIcons.eye),
                                    onPressed: () {
                                      showPassword.value = !showPassword.value;
                                    }),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              border: _buildInputBorder(),
              enabledBorder: _buildInputBorder(),
              focusedBorder: _buildInputBorder(),
            ),
          ),
        ],
      ),
    );
  }

  InputBorder _buildInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(width: 1, color: Colors.grey.shade400));
  }
}

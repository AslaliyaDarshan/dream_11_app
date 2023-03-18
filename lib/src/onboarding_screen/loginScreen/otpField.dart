import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPField extends StatefulWidget {
  final int fieldLength;
  final Function(String) onSubmit;

  const OTPField({
    required this.fieldLength,
    required this.onSubmit,
    Key? key,
  }) : super(key: key);

  @override
  State<OTPField> createState() => _OTPFieldState();
}

class _OTPFieldState extends State<OTPField> {
  final List<TextEditingController> _controllers = [];
  final List<FocusNode> _focusNodes = [];

  @override
  void initState() {
    for (int i = 0; i < widget.fieldLength; i++) {
      _controllers.add(TextEditingController());
      _focusNodes.add(FocusNode());
    }
    otp = "";
    super.initState();
  }
  String otp = "";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (MediaQuery.of(context).size.width / _controllers.length) - (_controllers.length * 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          _controllers.length,
          (index) => Container(
            height: (MediaQuery.of(context).size.width / _controllers.length) -
                (_controllers.length * 4),
            width: (MediaQuery.of(context).size.width / _controllers.length) -
                (_controllers.length * 4),
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  blurRadius: 5,
                  spreadRadius: 5)
            ]),
            margin: const EdgeInsets.all(6),
            alignment: Alignment.topCenter,
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,
              controller: _controllers[index],
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
              textInputAction: index == _controllers.length - 1
                  ? TextInputAction.done
                  : TextInputAction.next,
              focusNode: _focusNodes[index],
              onChanged: (value) {
                if (index == 0) {
                  otp = "";
                }
                if (value.length == 1) {
                  otp = otp + value;
                  _focusNodes[index].nextFocus();
                } else if (value.isEmpty) {
                  List dmOtp = otp.split('');
                  dmOtp.removeLast();
                  otp = dmOtp.join();
                  _focusNodes[index].previousFocus();
                }
                if (index == _controllers.length - 1) {
                  _controllers.forEach((element) {
                    element.clear();
                  });
                  if (otp.length == widget.fieldLength) {
                    widget.onSubmit(otp);
                  }
                }
              },
              decoration: InputDecoration(
                // hintText: "*",
                contentPadding:  EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.01),
                filled: true,
                fillColor: const Color.fromRGBO(217, 217, 217, 1),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
            ),
          ),
        ),
      ),
    );
  }
}

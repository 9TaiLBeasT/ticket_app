import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class FindTicketButton extends StatelessWidget {
  const FindTicketButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 33, 67, 221),
        border: Border.all(
            color: const Color.fromARGB(255, 242, 236, 236), width: 2),
      ),
      child: Center(
        child: Text(
          "find tickets",
          style: AppStyles.textStyle.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}

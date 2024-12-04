import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TicketBall extends StatelessWidget {
  final double? right;
  final double? left;
  const TicketBall({super.key, this.right, this.left});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: left,
        right: right,
        top: 251,
        child: Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 2,
              color: AppStyles.textColor,
            ),
          ),
          child: CircleAvatar(
            maxRadius: 4,
            backgroundColor: AppStyles.textColor,
          ),
        ));
  }
}

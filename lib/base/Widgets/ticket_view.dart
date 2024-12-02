import 'package:flutter/material.dart';
import 'package:ticket_app/base/Widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/Widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/Widgets/big_circle.dart';
import 'package:ticket_app/base/Widgets/big_dot.dart';
import 'package:ticket_app/base/Widgets/text_style_fourth.dart';
import 'package:ticket_app/base/Widgets/text_style_third.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  Row(
                    children: [
                      const TextStyleThird(
                        text: "NYC",
                      ),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutbuilderWidget(
                              randomDivider: 6,
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.57,
                              child: const Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      Text(
                        "LDN",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: "New-York",
                          align: TextAlign.start,
                        ),
                      ),
                      Expanded(child: Container()),
                      const TextStyleFourth(
                        text: "8H 30M",
                      ),
                      Expanded(child: Container()),
                      const SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: "London",
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  BigCircle(
                    isRight: false,
                  ),
                  Expanded(
                      child: AppLayoutbuilderWidget(
                    randomDivider: 16,
                    width: 6,
                  )),
                  BigCircle(
                    isRight: true,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        align: CrossAxisAlignment.start,
                        topText: "1 MAY",
                        bottomText: "Date",
                      ),
                      AppColumnTextLayout(
                        align: CrossAxisAlignment.center,
                        topText: "08:00 AM",
                        bottomText: "Departure Time",
                      ),
                      AppColumnTextLayout(
                        topText: "23",
                        bottomText: "Number",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

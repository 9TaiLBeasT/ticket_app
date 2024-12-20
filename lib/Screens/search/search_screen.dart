import 'package:flutter/material.dart';
import 'package:ticket_app/Screens/search/widgets/app_text_icon.dart';
import 'package:ticket_app/Screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/Screens/search/widgets/find_ticket_button.dart';
import 'package:ticket_app/Screens/search/widgets/ticket_promotion.dart';
import 'package:ticket_app/base/Widgets/app_double_text.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "What are\nyou looking for?",
            style: AppStyles.headLineStyle1.copyWith(fontSize: 45),
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTabs(firstTab: "All tickets", secondTab: "Hotels"),
          const SizedBox(
            height: 25,
          ),
          const AppTextIcon(
            icon: Icons.flight_takeoff_rounded,
            text: "Departure",
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTextIcon(
            icon: Icons.flight_land_rounded,
            text: "Arrival",
          ),
          const SizedBox(
            height: 25,
          ),
          const FindTicketButton(),
          const SizedBox(
            height: 40,
          ),
          AppDoubleText(
            bigText: "Upcoming Flights",
            smallText: "View all",
            func: () {
              Navigator.pushNamed(context, "all_tickets");
            },
          ),
          const SizedBox(
            height: 15,
          ),
          const TicketPromotion()
        ],
      ),
    );
  }
}

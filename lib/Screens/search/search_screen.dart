import 'package:flutter/material.dart';
import 'package:ticket_app/Screens/search/widgets/app_ticket_tabs.dart';
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
          const AppTicketTabs(),
        ],
      ),
    );
  }
}

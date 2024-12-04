import 'package:flutter/material.dart';
import 'package:ticket_app/Screens/home/all_hotels.dart';
import 'package:ticket_app/Screens/home/all_tickets.dart';
import 'package:ticket_app/Screens/hotel_detail.dart';
import 'package:ticket_app/Screens/ticket/ticket_screen.dart';
import 'package:ticket_app/Screens/ticket/widgets/ticket_ball.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const BottomNavBar(),
        "all_tickets": (context) => const AllTickets(),
        "all_hotels": (context) => const AllHotels(),
        "ticket_screens": (context) => const TicketScreen(),
        "hotel_detail": (context) => const HotelDetail(),
      },
    );
  }
}

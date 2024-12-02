import 'package:flutter/material.dart';
import 'package:ticket_app/Screens/home/widgets/hotel.dart';
import 'package:ticket_app/base/utils/all_json.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Hotels'),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: hotelList
                  .map((singleHotel) => Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Hotel(hotel: singleHotel)))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  late int index = 0;
  @override
  void didChangeDependencies() {
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    index = args["index"];

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            floating: false,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppStyles.primaryColor,
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              //title: Text(hotelList[index]["place"]),
              background: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      "assets/images/${hotelList[index]["image"]}",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      bottom: 20,
                      right: 20,
                      child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          color: Colors.black.withOpacity(0.5),
                          child: Text(
                            hotelList[index]["place"],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                shadows: [
                                  Shadow(
                                      blurRadius: 10.0,
                                      color: AppStyles.primaryColor,
                                      offset: Offset(2.0, 2.0))
                                ]),
                          ))),
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                  "Welcome to The Grand Horizon Hotel, where elegance and comfort come together to create an unforgettable experience. Located in the heart of the city, our hotel offers a sanctuary of luxury, perfect for both business and leisure travelers. Each of our meticulously designed rooms and suites features plush bedding, modern decor, and panoramic views of the skyline or serene natural landscapes. Guests can savor culinary masterpieces at our signature restaurant, enjoy handcrafted cocktails at the rooftop bar, or relax in our tranquil spa and wellness center. For those with a taste for adventure, we are just minutes away from major attractions, shopping districts, and cultural landmarks. Business travelers will appreciate our state-of-the-art conference facilities, high-speed internet, and dedicated concierge services. Whether you're here for a short stay or an extended retreat, The Grand Horizon Hotel ensures a seamless blend of comfort, style, and exceptional service to make every moment extraordinary."),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "More Images",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: const EdgeInsets.all(16),
                        child: Image.network(
                            "https://via.placeholder.com/200x200"));
                  }),
            )
          ]))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';
import 'package:flutter_application_1/base/utils/all_json.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  late int index = 0; // Declare the hotel as a Map to match your data

  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      index = args["index"];
    }

    super.didChangeDependencies();
    print(index);
  }

  // 'assets/images/${hotel["image"]

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250.0,
            floating: false,
            pinned: true,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppStyles.primaryColor.withOpacity(0.7),
                ),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              // title: Text(
              //   hotelList[index]["place"],
              //   style: const TextStyle(color: Colors.white),
              // ),
              background: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      "assets/images/${hotelList[index]["image"]}",
                      fit: BoxFit.fill,
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                      bottom: 15,
                      left: 20,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 5),
                        decoration: BoxDecoration(
                            color: Colors.black54.withOpacity(0.7),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30))),
                        child: Text(
                          hotelList[index]["place"],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        ),
                      ))
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                hotelList[index]["description"],
                style: AppStyles.defaultTextstyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "More images",
                style: AppStyles.headLine3,
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(8),
                      height: 175,
                      width: 175,
                      child: Image.network(
                          "https://picsum.photos/seed/picsum/175/175"),
                    );
                  }),
            )
          ]))
        ],
      ),
    );
  }
}

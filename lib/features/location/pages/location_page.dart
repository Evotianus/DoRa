import 'package:dora_app/core/palette.dart';
import 'package:dora_app/features/article/pages/article_page.dart';
import 'package:dora_app/features/history/pages/history_page.dart';
import 'package:dora_app/features/home/pages/home_page.dart';
import 'package:dora_app/features/home/widget/location_card.dart';
import 'package:dora_app/features/location/pages/detail_location_page.dart';
import 'package:dora_app/features/location/widget/location_page_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final deviceWidth = size.width;
    final deviceHeight = size.height;

    final deviceWidthWithoutPadding = deviceWidth - 48;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 52.0,
            ),
            child: Column(
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.arrow_back_rounded,
                      size: 20,
                      color: Palette.primaryColor,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Location',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    color: Palette.whiteColor,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Palette.blackColor.withOpacity(0.05),
                        blurRadius: 10,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      hintText: "Cari Lokasi...",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Palette.blackColor.withOpacity(0.3),
                        fontWeight: FontWeight.normal,
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Palette.primaryColor,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                LocationPageCard(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DetailLocationPage()));
                  },
                  image: 'assets/hospital.jpeg',
                  name: 'RSUD Dr. Soetomo',
                  phone: '031-5501078',
                  address:
                      'Jl. Mayjen Prof. Dr. Moestopo No.6-8, Airlangga, Kec. Gubeng, Kota SBY, Jawa Timur 60131',
                ),
                const SizedBox(height: 16),
                LocationPageCard(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DetailLocationPage()));
                  },
                  image: 'assets/hospital.jpeg',
                  name: 'RSUD Dr. Soetomo',
                  phone: '031-5501078',
                  address:
                      'Jl. Mayjen Prof. Dr. Moestopo No.6-8, Airlangga, Kec. Gubeng, Kota SBY, Jawa Timur 60131',
                ),
                const SizedBox(height: 16),
                LocationPageCard(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DetailLocationPage()));
                  },
                  image: 'assets/hospital.jpeg',
                  name: 'RSUD Dr. Soetomo',
                  phone: '031-5501078',
                  address:
                      'Jl. Mayjen Prof. Dr. Moestopo No.6-8, Airlangga, Kec. Gubeng, Kota SBY, Jawa Timur 60131',
                ),
                const SizedBox(height: 16),
                LocationPageCard(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DetailLocationPage()));
                  },
                  image: 'assets/hospital.jpeg',
                  name: 'RSUD Dr. Soetomo',
                  phone: '031-5501078',
                  address:
                      'Jl. Mayjen Prof. Dr. Moestopo No.6-8, Airlangga, Kec. Gubeng, Kota SBY, Jawa Timur 60131',
                ),
                const SizedBox(height: 16),
                LocationPageCard(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DetailLocationPage()));
                  },
                  image: 'assets/hospital.jpeg',
                  name: 'RSUD Dr. Soetomo',
                  phone: '031-5501078',
                  address:
                      'Jl. Mayjen Prof. Dr. Moestopo No.6-8, Airlangga, Kec. Gubeng, Kota SBY, Jawa Timur 60131',
                ),
                const SizedBox(height: 16),
                LocationPageCard(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DetailLocationPage()));
                  },
                  image: 'assets/hospital.jpeg',
                  name: 'RSUD Dr. Soetomo',
                  phone: '031-5501078',
                  address:
                      'Jl. Mayjen Prof. Dr. Moestopo No.6-8, Airlangga, Kec. Gubeng, Kota SBY, Jawa Timur 60131',
                ),
                const SizedBox(height: 16),
                LocationPageCard(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DetailLocationPage()));
                  },
                  image: 'assets/hospital.jpeg',
                  name: 'RSUD Dr. Soetomo',
                  phone: '031-5501078',
                  address:
                      'Jl. Mayjen Prof. Dr. Moestopo No.6-8, Airlangga, Kec. Gubeng, Kota SBY, Jawa Timur 60131',
                ),
                const SizedBox(height: 16),
                LocationPageCard(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DetailLocationPage()));
                  },
                  image: 'assets/hospital.jpeg',
                  name: 'RSUD Dr. Soetomo',
                  phone: '031-5501078',
                  address:
                      'Jl. Mayjen Prof. Dr. Moestopo No.6-8, Airlangga, Kec. Gubeng, Kota SBY, Jawa Timur 60131',
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            child: Container(
              width: deviceWidthWithoutPadding,
              height: 60,
              decoration: BoxDecoration(
                color: Palette.whiteColor,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Palette.blackColor.withOpacity(0.05),
                    blurRadius: 10,
                    spreadRadius: 5,
                    offset: const Offset(0, -5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: const Icon(
                        Icons.home,
                        color: Palette.primaryColor,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HistoryPage(),
                      ));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: const Icon(
                        Icons.access_time,
                        color: Palette.primaryColor,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Palette.primaryColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Palette.whiteColor,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Location",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Palette.whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ArticlePage(),
                      ));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: const Icon(
                        Icons.article_outlined,
                        color: Palette.primaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

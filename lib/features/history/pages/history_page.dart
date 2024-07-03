import 'package:dora_app/core/palette.dart';
import 'package:dora_app/features/article/pages/article_page.dart';
import 'package:dora_app/features/history/widget/history_card.dart';
import 'package:dora_app/features/home/pages/home_page.dart';
import 'package:dora_app/features/location/pages/location_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

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
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(
                        Icons.arrow_back_rounded,
                        size: 20,
                        color: Palette.primaryColor,
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      'History',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const HistoryCard(
                  date: '3 Jul',
                  year: '2024',
                  title: 'Lorem ipsum dolor sit amet',
                  isVerified: true,
                ),
                const SizedBox(height: 8),
                const HistoryCard(
                  date: '2 Jul',
                  year: '2024',
                  title: 'Lorem ipsum dolor sit amet',
                  isVerified: false,
                ),
                const SizedBox(height: 8),
                const HistoryCard(
                  date: '1 Jul',
                  year: '2024',
                  title: 'Lorem ipsum dolor sit amet',
                  isVerified: true,
                ),
                const SizedBox(height: 8),
                const HistoryCard(
                  date: '30 Jun',
                  year: '2024',
                  title: 'Lorem ipsum dolor sit amet',
                  isVerified: false,
                ),
                const SizedBox(height: 8),
                const HistoryCard(
                  date: '29 Jun',
                  year: '2024',
                  title: 'Lorem ipsum dolor sit amet',
                  isVerified: false,
                ),
                const SizedBox(height: 8),
                const HistoryCard(
                  date: '28 Jun',
                  year: '2024',
                  title: 'Lorem ipsum dolor sit amet',
                  isVerified: false,
                ),
                const SizedBox(height: 8),
                const HistoryCard(
                  date: '27 Jun',
                  year: '2024',
                  title: 'Lorem ipsum dolor sit amet',
                  isVerified: true,
                ),
                const SizedBox(height: 8),
                const HistoryCard(
                  date: '26 Jun',
                  year: '2024',
                  title: 'Lorem ipsum dolor sit amet',
                  isVerified: true,
                ),
                const SizedBox(height: 8),
                const HistoryCard(
                  date: '25 Jun',
                  year: '2024',
                  title: 'Lorem ipsum dolor sit amet',
                  isVerified: true,
                ),
                const SizedBox(height: 8),
                const HistoryCard(
                  date: '24 Jun',
                  year: '2024',
                  title: 'Lorem ipsum dolor sit amet',
                  isVerified: true,
                ),
                const SizedBox(height: 8),
                const HistoryCard(
                  date: '23 Jun',
                  year: '2024',
                  title: 'Lorem ipsum dolor sit amet',
                  isVerified: true,
                ),
                const SizedBox(height: 8),
                const HistoryCard(
                  date: '22 Jun',
                  year: '2024',
                  title: 'Lorem ipsum dolor sit amet',
                  isVerified: true,
                ),
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
                          Icons.access_time,
                          color: Palette.whiteColor,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "History",
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
                        builder: (context) => const LocationPage(),
                      ));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: const Icon(
                        Icons.location_on_outlined,
                        color: Palette.primaryColor,
                      ),
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

import 'package:dora_app/core/palette.dart';
import 'package:dora_app/features/article/pages/article_page.dart';
import 'package:dora_app/features/article/pages/detail_article_page.dart';
import 'package:dora_app/features/authentication/pages/verification_page.dart';
import 'package:dora_app/features/history/pages/history_page.dart';
import 'package:dora_app/features/home/widget/location_card.dart';
import 'package:dora_app/features/location/pages/detail_location_page.dart';
import 'package:dora_app/features/location/pages/location_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePageUnverified extends StatelessWidget {
  const HomePageUnverified({super.key});

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
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 65,
                            height: 65,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset('assets/profile.jpeg'),
                            ),
                          ),
                          const SizedBox(width: 16),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Selamat pagi,"),
                              Text(
                                "Evo",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Palette.primaryColor,
                      ),
                      Text("Rumah Talenta BCA, Jl Pakuan No.3"),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: deviceWidthWithoutPadding / 2 - 10,
                        height: 170,
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Palette.whiteColor,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Palette.blackColor.withOpacity(0.05),
                              blurRadius: 10,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.handshake_rounded,
                              color: Palette.primaryColor,
                              size: 36,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Donasi Darah"),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const VerificationPage(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "Perlu Verifikasi",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: deviceWidthWithoutPadding / 2 - 10,
                        height: 170,
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Palette.whiteColor,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Palette.blackColor.withOpacity(0.05),
                              blurRadius: 10,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.share_arrival_time_outlined,
                              color: Palette.primaryColor,
                              size: 36,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Donor Selanjutnya"),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const VerificationPage(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "Perlu Verifikasi",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     const Text(
                  //       "Layanan",
                  //       style: TextStyle(
                  //         fontSize: 15,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),
                  //     const SizedBox(height: 8),
                  //     Column(
                  //       children: [
                  //         Container(
                  //           padding: const EdgeInsets.all(12.0),
                  //           decoration: BoxDecoration(
                  //             color: Palette.whiteColor,
                  //             borderRadius: BorderRadius.circular(8.0),
                  //             boxShadow: [
                  //               BoxShadow(
                  //                 color: Palette.blackColor.withOpacity(0.05),
                  //                 blurRadius: 10,
                  //                 spreadRadius: 2,
                  //               ),
                  //             ],
                  //           ),
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Row(
                  //                 children: [
                  //                   Container(
                  //                     padding: const EdgeInsets.all(10.0),
                  //                     decoration: BoxDecoration(
                  //                       color: Palette.secondaryColor,
                  //                       borderRadius:
                  //                           BorderRadius.circular(8.0),
                  //                     ),
                  //                     child: const Icon(
                  //                       Icons.local_hospital_rounded,
                  //                       color: Palette.primaryColor,
                  //                     ),
                  //                   ),
                  //                   const SizedBox(width: 12),
                  //                   const Text("Donasi Darah"),
                  //                 ],
                  //               ),
                  //               const Icon(
                  //                 Icons.arrow_forward_ios_rounded,
                  //                 color: Palette.primaryColor,
                  //                 size: 18,
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         const SizedBox(height: 12),
                  //         Container(
                  //           padding: const EdgeInsets.all(12.0),
                  //           decoration: BoxDecoration(
                  //             color: Palette.whiteColor,
                  //             borderRadius: BorderRadius.circular(8.0),
                  //             boxShadow: [
                  //               BoxShadow(
                  //                 color: Palette.blackColor.withOpacity(0.05),
                  //                 blurRadius: 10,
                  //                 spreadRadius: 2,
                  //               ),
                  //             ],
                  //           ),
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Row(
                  //                 children: [
                  //                   Container(
                  //                     padding: const EdgeInsets.all(10.0),
                  //                     decoration: BoxDecoration(
                  //                       color: Palette.secondaryColor,
                  //                       borderRadius:
                  //                           BorderRadius.circular(8.0),
                  //                     ),
                  //                     child: const Icon(
                  //                       Icons.local_hospital_rounded,
                  //                       color: Palette.primaryColor,
                  //                     ),
                  //                   ),
                  //                   const SizedBox(width: 12),
                  //                   const Text("Donasi Darah"),
                  //                 ],
                  //               ),
                  //               const Icon(
                  //                 Icons.arrow_forward_ios_rounded,
                  //                 color: Palette.primaryColor,
                  //                 size: 18,
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ],
                  //     )
                  //   ],
                  // ),
                  // const SizedBox(height: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Lokasi",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Column(
                        children: [
                          LocationCard(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const DetailLocationPage(),
                              ));
                            },
                            image: 'assets/hospital.jpeg',
                            name: 'Rumah Sakit Hosannia',
                            time: '06:00 - 24:00',
                            phone: '0812-3456-7890',
                            collected: '10',
                            progress: 0.5,
                            total: '20',
                          ),
                          const SizedBox(height: 12),
                          LocationCard(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const DetailLocationPage(),
                              ));
                            },
                            image: 'assets/hospital.jpeg',
                            name: 'Rumah Sakit Ariya',
                            time: '06:00 - 24:00',
                            phone: '0812-3456-7890',
                            collected: '30',
                            progress: 0.9,
                            total: '35',
                          ),
                          SizedBox(height: 12),
                          LocationCard(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const DetailLocationPage(),
                              ));
                            },
                            image: 'assets/hospital.jpeg',
                            name: 'Rumah Sakit Ariya',
                            time: '06:00 - 24:00',
                            phone: '0812-3456-7890',
                            collected: '30',
                            progress: 0.9,
                            total: '35',
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Artikel",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Column(
                        children: [
                          const SizedBox(height: 12),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const DetailArticlePage(),
                              ));
                            },
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(12),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Palette.whiteColor,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Palette.blackColor
                                            .withOpacity(0.05),
                                        blurRadius: 10,
                                        spreadRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        height: 100,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.asset(
                                            'assets/hospital.jpeg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start, // Ensure text aligns and wraps well
                                          children: [
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 18,
                                                  height: 18,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    child: Image.asset(
                                                      'assets/hospital.jpeg',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                RichText(
                                                  text: const TextSpan(
                                                    style: TextStyle(
                                                      color: Palette.blackColor,
                                                      fontSize: 12,
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                          text: 'Luke Orlando'),
                                                      TextSpan(text: ' | '),
                                                      TextSpan(
                                                          text: '3 Weeks Ago'),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            const Text(
                                              'Berbagai manfaat mendonor darah untuk kesehatan',
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 6,
                                            ),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                vertical: 2,
                                                horizontal: 8,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Palette.primaryColor
                                                    .withOpacity(0.1),
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                              ),
                                              child: const Text(
                                                'Kesehatan',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const DetailArticlePage(),
                              ));
                            },
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(12),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Palette.whiteColor,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Palette.blackColor
                                            .withOpacity(0.05),
                                        blurRadius: 10,
                                        spreadRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        height: 100,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.asset(
                                            'assets/hospital.jpeg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start, // Ensure text aligns and wraps well
                                          children: [
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 18,
                                                  height: 18,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    child: Image.asset(
                                                      'assets/hospital.jpeg',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                RichText(
                                                  text: const TextSpan(
                                                    style: TextStyle(
                                                      color: Palette.blackColor,
                                                      fontSize: 12,
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                          text: 'Luke Orlando'),
                                                      TextSpan(text: ' | '),
                                                      TextSpan(
                                                          text: '3 Weeks Ago'),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            const Text(
                                              'Berbagai manfaat mendonor darah untuk kesehatan',
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 6,
                                            ),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                vertical: 2,
                                                horizontal: 8,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Palette.primaryColor
                                                    .withOpacity(0.1),
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                              ),
                                              child: const Text(
                                                'Kesehatan',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const DetailArticlePage(),
                              ));
                            },
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(12),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Palette.whiteColor,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Palette.blackColor
                                            .withOpacity(0.05),
                                        blurRadius: 10,
                                        spreadRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        height: 100,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.asset(
                                            'assets/hospital.jpeg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start, // Ensure text aligns and wraps well
                                          children: [
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 18,
                                                  height: 18,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    child: Image.asset(
                                                      'assets/hospital.jpeg',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                RichText(
                                                  text: const TextSpan(
                                                    style: TextStyle(
                                                      color: Palette.blackColor,
                                                      fontSize: 12,
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                          text: 'Luke Orlando'),
                                                      TextSpan(text: ' | '),
                                                      TextSpan(
                                                          text: '3 Weeks Ago'),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            const Text(
                                              'Berbagai manfaat mendonor darah untuk kesehatan',
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 6,
                                            ),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                vertical: 2,
                                                horizontal: 8,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Palette.primaryColor
                                                    .withOpacity(0.1),
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                              ),
                                              child: const Text(
                                                'Kesehatan',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const DetailArticlePage(),
                              ));
                            },
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(12),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Palette.whiteColor,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Palette.blackColor
                                            .withOpacity(0.05),
                                        blurRadius: 10,
                                        spreadRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        height: 100,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.asset(
                                            'assets/hospital.jpeg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start, // Ensure text aligns and wraps well
                                          children: [
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 18,
                                                  height: 18,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    child: Image.asset(
                                                      'assets/hospital.jpeg',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                RichText(
                                                  text: const TextSpan(
                                                    style: TextStyle(
                                                      color: Palette.blackColor,
                                                      fontSize: 12,
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                          text: 'Luke Orlando'),
                                                      TextSpan(text: ' | '),
                                                      TextSpan(
                                                          text: '3 Weeks Ago'),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            const Text(
                                              'Berbagai manfaat mendonor darah untuk kesehatan',
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 6,
                                            ),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                vertical: 2,
                                                horizontal: 8,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Palette.primaryColor
                                                    .withOpacity(0.1),
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                              ),
                                              child: const Text(
                                                'Kesehatan',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
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
                          Icons.home,
                          color: Palette.whiteColor,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Home",
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

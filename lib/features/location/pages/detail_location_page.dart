import 'package:dora_app/core/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailLocationPage extends StatelessWidget {
  const DetailLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final deviceWidth = size.width;
    final deviceHeight = size.height;

    final deviceWidthWithoutPadding = deviceWidth - 48;

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 52.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                  'Stok Darah',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 64),
            const Text(
              "Stok Darah\nPMI Kota Jakarta Selatan",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              alignment: WrapAlignment.center,
              children: [
                Container(
                  width: deviceWidthWithoutPadding / 2 - 12,
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
                    children: [
                      Container(
                        width: double.infinity,
                        height: 32,
                        decoration: const BoxDecoration(
                          color: Palette.primaryColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'A',
                            style: TextStyle(
                              color: Palette.whiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Wrap(
                              children: [
                                Text('WB'),
                                SizedBox(
                                  width: 24,
                                ),
                                Text('15'),
                              ],
                            ),
                            SizedBox(height: 4),
                            Wrap(
                              children: [
                                Text('WB'),
                                SizedBox(
                                  width: 24,
                                ),
                                Text('15'),
                              ],
                            ),
                            SizedBox(height: 4),
                            Wrap(
                              children: [
                                Text('WB'),
                                SizedBox(
                                  width: 24,
                                ),
                                Text('15'),
                              ],
                            ),
                            SizedBox(height: 4),
                            Wrap(
                              children: [
                                Text('WB'),
                                SizedBox(
                                  width: 24,
                                ),
                                Text('15'),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: deviceWidthWithoutPadding / 2 - 12,
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
                    children: [
                      Container(
                        width: double.infinity,
                        height: 32,
                        decoration: const BoxDecoration(
                          color: Palette.primaryColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'B',
                            style: TextStyle(
                              color: Palette.whiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Wrap(
                              children: [
                                Text('WB'),
                                SizedBox(
                                  width: 24,
                                ),
                                Text('15'),
                              ],
                            ),
                            SizedBox(height: 4),
                            Wrap(
                              children: [
                                Text('WB'),
                                SizedBox(
                                  width: 24,
                                ),
                                Text('15'),
                              ],
                            ),
                            SizedBox(height: 4),
                            Wrap(
                              children: [
                                Text('WB'),
                                SizedBox(
                                  width: 24,
                                ),
                                Text('15'),
                              ],
                            ),
                            SizedBox(height: 4),
                            Wrap(
                              children: [
                                Text('WB'),
                                SizedBox(
                                  width: 24,
                                ),
                                Text('15'),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: deviceWidthWithoutPadding / 2 - 12,
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
                    children: [
                      Container(
                        width: double.infinity,
                        height: 32,
                        decoration: const BoxDecoration(
                          color: Palette.primaryColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'AB',
                            style: TextStyle(
                              color: Palette.whiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Wrap(
                              children: [
                                Text('WB'),
                                SizedBox(
                                  width: 24,
                                ),
                                Text('15'),
                              ],
                            ),
                            SizedBox(height: 4),
                            Wrap(
                              children: [
                                Text('WB'),
                                SizedBox(
                                  width: 24,
                                ),
                                Text('15'),
                              ],
                            ),
                            SizedBox(height: 4),
                            Wrap(
                              children: [
                                Text('WB'),
                                SizedBox(
                                  width: 24,
                                ),
                                Text('15'),
                              ],
                            ),
                            SizedBox(height: 4),
                            Wrap(
                              children: [
                                Text('WB'),
                                SizedBox(
                                  width: 24,
                                ),
                                Text('15'),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: deviceWidthWithoutPadding / 2 - 12,
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
                    children: [
                      Container(
                        width: double.infinity,
                        height: 32,
                        decoration: const BoxDecoration(
                          color: Palette.primaryColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'O',
                            style: TextStyle(
                              color: Palette.whiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Wrap(
                              children: [
                                Text('WB'),
                                SizedBox(
                                  width: 24,
                                ),
                                Text('15'),
                              ],
                            ),
                            SizedBox(height: 4),
                            Wrap(
                              children: [
                                Text('WB'),
                                SizedBox(
                                  width: 24,
                                ),
                                Text('15'),
                              ],
                            ),
                            SizedBox(height: 4),
                            Wrap(
                              children: [
                                Text('WB'),
                                SizedBox(
                                  width: 24,
                                ),
                                Text('15'),
                              ],
                            ),
                            SizedBox(height: 4),
                            Wrap(
                              children: [
                                Text('WB'),
                                SizedBox(
                                  width: 24,
                                ),
                                Text('15'),
                              ],
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
      ),
    );
  }
}

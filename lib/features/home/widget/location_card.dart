import 'package:dora_app/core/palette.dart';
import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  final String image;
  final String name;
  final String time;
  final String phone;
  final String collected;
  final double progress;
  final String total;
  final VoidCallback onTap;

  const LocationCard({
    super.key,
    required this.image,
    required this.name,
    required this.time,
    required this.phone,
    required this.collected,
    required this.progress,
    required this.total,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final deviceWidth = size.width;
    final deviceHeight = size.height;

    final deviceWidthWithoutPadding = deviceWidth - 48;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.all(12.0),
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 80,
              height: 80,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.access_time_rounded,
                      color: Palette.blackColor.withOpacity(0.4),
                      size: 18,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      time,
                      style: TextStyle(
                        color: Palette.blackColor.withOpacity(0.4),
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone_outlined,
                      color: Palette.blackColor.withOpacity(0.4),
                      size: 18,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      phone,
                      style: TextStyle(
                        color: Palette.blackColor.withOpacity(0.4),
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Donor terkumpul",
                      style: TextStyle(fontSize: 13),
                    ),
                    Stack(
                      children: [
                        Container(
                          width: deviceWidthWithoutPadding - 135,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Palette.secondaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        Container(
                          width: (deviceWidthWithoutPadding - 135) *
                              progress, // Calculate width based on progress
                          height: 5,
                          decoration: BoxDecoration(
                            color: Palette.primaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "$collected Liter",
                          style: const TextStyle(
                            fontSize: 12,
                            color: Palette.primaryColor,
                          ),
                        ),
                        const SizedBox(
                          width: 215,
                        ),
                        Text(
                          "$total Liter",
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

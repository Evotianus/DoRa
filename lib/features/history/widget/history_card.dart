import 'package:dora_app/core/palette.dart';
import 'package:flutter/material.dart';

class HistoryCard extends StatelessWidget {
  final String date;
  final String year;
  final String title;
  final bool isVerified;

  const HistoryCard({
    super.key,
    required this.date,
    required this.year,
    required this.title,
    required this.isVerified,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 55,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '$date,',
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                year,
                style: TextStyle(
                  fontSize: 13,
                  color: Palette.blackColor.withOpacity(0.5),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 16),
        Container(
          width: 3,
          height: 50,
          decoration: BoxDecoration(
            color: Palette.primaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Palette.whiteColor,
              boxShadow: [
                BoxShadow(
                  color: Palette.blackColor.withOpacity(0.05),
                  blurRadius: 10,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: isVerified
                            ? Palette.secondaryColor
                            : Palette.primaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        isVerified ? 'Verified' : 'Pending',
                        style: TextStyle(
                          color: isVerified
                              ? Palette.primaryColor
                              : Palette.whiteColor,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Palette.secondaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    isVerified
                        ? Icons.check_circle_outline_outlined
                        : Icons.access_time,
                    color: Palette.primaryColor,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

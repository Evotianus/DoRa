import 'package:dora_app/core/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationPageCard extends StatelessWidget {
  final String image;
  final String name;
  final String phone;
  final String address;
  final VoidCallback onTap;

  const LocationPageCard({
    super.key,
    required this.image,
    required this.name,
    required this.phone,
    required this.address,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
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
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(
                        Icons.phone_outlined,
                        color: Palette.blackColor.withOpacity(0.4),
                        size: 18,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        phone,
                        style: TextStyle(
                          color: Palette.blackColor.withOpacity(0.4),
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Palette.blackColor.withOpacity(0.4),
                        size: 18,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          address,
                          style: TextStyle(
                            color: Palette.blackColor.withOpacity(0.4),
                            fontSize: 13,
                          ),
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 30),
              // color: Palette.primaryColor,
              child: const Icon(
                Icons.arrow_forward,
                color: Palette.primaryColor,
                size: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}

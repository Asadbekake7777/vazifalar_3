import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vazifa_3/utils/string_extentions.dart';

class HomeWorkItem extends StatelessWidget {
  Color primaryColor;
  String title;
  String description;
  IconData icon;

  HomeWorkItem({
    required this.title,
    required this.description,
    required this.icon,
    required this.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "English Homework".capitalize(),
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title.capitalize(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "chapter-12".toUpperCase(),
                        style: TextStyle(
                          color: Colors.orange.shade900,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              Text(
                description,
                style: TextStyle(
                  color: Colors.grey.shade500,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      children: [
                        Text(
                          "Sumbit",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          CupertinoIcons.right_chevron,
                          size: 18,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 30),
                  Icon(
                    Icons.timer_outlined,
                    color: Colors.grey.shade500,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    "40 min",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
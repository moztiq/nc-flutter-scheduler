import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  final Color bgColor;
  final String startHour;
  final String startMinute;
  final String endHour;
  final String endMinute;
  final String title;
  final List<String> userList;

  const ScheduleCard({
    super.key,
    required this.bgColor,
    required this.startHour,
    required this.startMinute,
    required this.endHour,
    required this.endMinute,
    required this.title,
    required this.userList,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        child: Row(children: [
          Column(
            children: [
              Text(
                startHour,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                startMinute,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "|",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 30,
                    fontWeight: FontWeight.w300),
              ),
              Text(
                endHour,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                endMinute,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  height: 0.9,
                  fontSize: 50,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 40),
              Row(
                children: userList.map((user) {
                  return Row(
                    children: [
                      Text(user,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

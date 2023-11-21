import 'package:flutter/material.dart';
import 'package:nc_flutter_scheduler/widgets/schedule_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipOval(
                      child: Image.network(
                        "https://d1telmomo28umc.cloudfront.net/media/public/avatars/moztiq-avatar.jpg",
                        width: 75,
                        height: 75,
                      ),
                    ),
                    const Text(
                      "+",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "MONDAY 16",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const Text("TODAY",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w600)),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.circle_rounded,
                        color: Colors.red.withOpacity(0.7),
                        size: 12,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text("17",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 40,
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                      Text("18",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 40,
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                      Text("19",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 40,
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                      Text("20",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 40,
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                      Text("21",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 40,
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const ScheduleCard(
                  bgColor: Color(0xF4FFD736),
                  startHour: "11",
                  startMinute: "30",
                  endHour: "12",
                  endMinute: "20",
                  title: "DESIGN\nMEETING",
                  userList: ["ALEX", "HELENA", "NANA"],
                ),
                const SizedBox(
                  height: 10,
                ),
                const ScheduleCard(
                  bgColor: Color(0xF4AB83D9),
                  startHour: "12",
                  startMinute: "35",
                  endHour: "14",
                  endMinute: "10",
                  title: "DAILY\nPROJECT",
                  userList: ["ME", "RICHARD", "CIRY", "+4"],
                ),
                const SizedBox(
                  height: 10,
                ),
                const ScheduleCard(
                  bgColor: Color(0xF4ADC92F),
                  startHour: "15",
                  startMinute: "00",
                  endHour: "16",
                  endMinute: "30",
                  title: "WEEKLY\nPLANNING",
                  userList: ["DEN", "NANA", "MARK"],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

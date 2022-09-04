import 'package:flutter/material.dart';
import 'package:lookout_service/loginpage.dart';

import 'ambulance_home.dart';

class PoliceHomePage extends StatelessWidget {
  const PoliceHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.clear,
                  color: Color.fromARGB(255, 241, 241, 243),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AmbulanceHomePage()),
                    );
                  },
                  child: const Icon(
                    Icons.call,
                    color: Color.fromARGB(255, 241, 241, 243),
                  ),
                )
              ],
            ),
            pinned: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                width: double.infinity,
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                child: const Center(
                    child: Text(
                  "LookOut Police",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
              ),
            ),
            backgroundColor: const Color.fromARGB(255, 6, 16, 66),
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
                background: Container(
                    height: 300,
                    color: const Color.fromARGB(255, 6, 16, 66),
                    child: Center(
                      child: Container(
                        height: 150,
                        width: 300,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: const BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        child: const Icon(
                                          Icons.medication,
                                          size: 30,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: const [
                                          Text(
                                            "Victim name",
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            "Bawembye Tonny",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Text(
                                            "0771234567",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const LoginPage()),
                                              );
                                            },
                                            child: Container(
                                              width: 25,
                                              height: 25,
                                              decoration: const BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20))),
                                              child: const Icon(
                                                Icons.call,
                                                size: 15,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: 200,
                                decoration: const BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: const [
                                          Icon(Icons.location_history),
                                          Text("Wandegeya"),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Text("Go to map"),
                                          Icon(Icons.arrow_circle_right),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                              // SizedBox(width: 20),
                              // Icon(Icons.emergency,
                              //     color: Color.fromARGB(255, 235, 13, 13)),
                              // SizedBox(width: 20),
                              // Text(
                              //   "No active alarms",
                              //   style: TextStyle(
                              //       fontSize: 20,
                              //       color: Color.fromARGB(255, 235, 13, 13)),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ))),
          ),
          SliverFillRemaining(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    title: const Text(
                      "Alarm",
                      style: TextStyle(fontSize: 18),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Flexible(
                              child: Text(
                                  "Fatal accident including two cars and a motorcycle. Two injured, no one dead."),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Row(
                              children: const [
                                Text("Location: ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black)),
                                Text(
                                  "Kampala",
                                ),
                              ],
                            ),
                            const SizedBox(width: 20),
                            Row(
                              children: const [
                                Text("Date: ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black)),
                                Text("24/08/2022"),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    trailing: const Icon(
                      Icons.done,
                      color: Colors.green,
                    ),
                  );
                })),
          )
        ],
      ),
    );
  }
}

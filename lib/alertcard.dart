import 'package:flutter/material.dart';

class AlertCard extends StatefulWidget {
  const AlertCard({Key? key}) : super(key: key);

  @override
  State<AlertCard> createState() => _AlertCardState();
}

class _AlertCardState extends State<AlertCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                            "Vien Okoth",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
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
                          Container(
                            width: 25,
                            height: 25,
                            decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: const Icon(
                              Icons.call,
                              size: 15,
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
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: AlertCard(),
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
        ));
  }
}

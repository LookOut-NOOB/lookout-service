import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lookout_service/loginpage.dart';

import 'ambulance_home.dart';
import 'viewmodels/app_viewmodel.dart';

class PoliceHomePage extends StatefulWidget {
  const PoliceHomePage({Key? key}) : super(key: key);

  @override
  State<PoliceHomePage> createState() => _PoliceHomePageState();
}

class _PoliceHomePageState extends State<PoliceHomePage> {
  AppViewModel appViewModel = AppViewModel();

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
                //TODO: remove this, its just showing how to querry data.
                FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
                    future: appViewModel.getAppNameFromFirebase(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        Map<String, dynamic>? data =
                            snapshot.data?.docs.first.data();

                        print(":::::::::");
                        print(snapshot.data?.docs.length);
                        print(":::::::::");
                        return Text(data?["appName"] ?? "No data");
                      }
                    }),
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
                child: Center(
                    child: Text(
                  "LookOut Police",
                  style: Theme.of(context).textTheme.headline5,
                )),
              ),
            ),
            backgroundColor: const Color.fromARGB(255, 6, 16, 66),
            expandedHeight: 280,
            flexibleSpace: FlexibleSpaceBar(
                background: Container(
                    height: 280,
                    color: const Color.fromARGB(255, 6, 16, 66),
                    child: Center(
                      child: Container(
                        height: 160,
                        margin: const EdgeInsets.only(top: 20),
                        width: MediaQuery.of(context).size.width - 20,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                          Icons.person,
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
                                        children: [
                                          Text(
                                            "Bawembye Tonny",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                            // style: TextStyle(
                                            //     fontSize: 18,
                                            //     fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 4, horizontal: 6),
                                        decoration: BoxDecoration(
                                            color: Colors.blue.withOpacity(0.1),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(20))),
                                        child: Row(
                                          children: [
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
                                                            Radius.circular(
                                                                20))),
                                                child: const Icon(
                                                  Icons.call,
                                                  size: 15,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 16,
                                            ),
                                            const Text(
                                              "0771234567",
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.blue,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.location_on,
                                          size: 18,
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Text("Wandegeya"),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 2,
                                          height: 30,
                                          decoration: const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          margin:
                                              const EdgeInsets.only(right: 10),
                                        ),
                                        const Text("Go to map"),
                                        const Icon(
                                          Icons.arrow_forward_ios,
                                          size: 18,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ))),
          ),
          SliverFillRemaining(
            child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: ((context, index) {
                  return AlarmTile(
                    description:
                        "Fatal accident including two cars and a motorcycle. Two injured, no one dead.",
                    location: "Kampala",
                    dateTime: DateTime.now(),
                    status: "2",
                  );
                })),
          )
        ],
      ),
    );
  }
}

class AlarmTile extends StatelessWidget {
  final String? description;
  final DateTime dateTime;
  final String? location;
  final String? status;

  const AlarmTile({
    super.key,
    this.description,
    required this.dateTime,
    this.location,
    this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Icon(Icons.notifications_active_outlined,
                    color: Color.fromARGB(255, 235, 13, 13)),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "Alarm",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Row(
              children: [
                const Text("Date: ", style: TextStyle(color: Colors.grey)),
                Text(
                  dateTime.toLocal().toString().split(' ')[0],
                ),
              ],
            ),
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(vertical: 8),
              height: 1,
              color: Colors.grey.withOpacity(0.5),
            ),
            Row(
              children: [
                Flexible(
                  child: Text(description ?? "No description"),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Row(
                  children: [
                    const Icon(Icons.location_on),
                    const Text("Location: ",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, color: Colors.black)),
                    Text(
                      location ?? "Unknown",
                    ),
                  ],
                ),
                const SizedBox(width: 20),
              ],
            )
          ],
        ),
        trailing: status == "2"
            ? const Icon(
                Icons.done,
                color: Colors.green,
              )
            : status == "0"
                ? Icon(
                    Icons.cancel_outlined,
                    color: Colors.red.withOpacity(0.5),
                  )
                : const Icon(
                    Icons.more_horiz,
                    color: Colors.grey,
                  ),
      ),
    );
  }
}

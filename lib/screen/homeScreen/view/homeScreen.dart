import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/screen/homeScreen/model/DataModel.dart';
import 'package:weatherapp/screen/homeScreen/provider/HomeProvider.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: FutureBuilder(
          future: Provider.of<HomeProvider>(context, listen: true).Apicalling(Provider.of<HomeProvider>(context,listen: true).lat.toString(),Provider.of<HomeProvider>(context,listen: true).lat.toString()),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text("${snapshot.error}");
            } else if (snapshot.hasData) {
              DataModel d1 = snapshot.data!;
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${d1.sys!.country} (${d1.name})"),
                        SizedBox(
                          width: 5,
                        ),
                        PopupMenuButton(itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                                child: InkWell(
                                    onTap: () {
                                      Provider.of<HomeProvider>(context,listen: false).Changecity("21.1702", "72.8311");
                                      }, child: Text("surat"))),
                            PopupMenuItem(
                                child: InkWell(
                                    onTap: () {
                                      Provider.of<HomeProvider>(context,listen: false).Changecity("23.02252", "72.5714");
                                    }, child: Text("ahemdabad"))),
                            PopupMenuItem(
                                child: InkWell(
                                    onTap: () {
                                      Provider.of<HomeProvider>(context,listen: false).Changecity("22.3072", "73.1812");
                                    }, child: Text("vadodara"))),
                            PopupMenuItem(
                                child: InkWell(
                                    onTap: () {
                                      Provider.of<HomeProvider>(context,listen: false).Changecity("22.3039", "70.8022");
                                    }, child: Text("rajkot"))),
                            PopupMenuItem(
                                child: InkWell(
                                    onTap: () {
                                      Provider.of<HomeProvider>(context,listen: false).Changecity("20.5992", "72.9342");
                                    }, child: Text("valsad"))),
                          ];
                        })
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "🌥",
                          style: TextStyle(fontSize: 40),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            Text(
                              "31 JAN",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "FRIDAY",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${d1.main!.temp}",
                          style: TextStyle(fontSize: 50),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "${d1.weather![0].description}",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        height: 180,
                        width: 450,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  "🌡",
                                  style: TextStyle(fontSize: 35),
                                ),
                                Text(
                                  "${d1.main!.temp}",
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  width: 150,
                                ),
                                Text(
                                  "☁",
                                  style: TextStyle(fontSize: 35),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "${d1.clouds!.all}",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  "💨",
                                  style: TextStyle(fontSize: 35),
                                ),
                                Text(
                                  "${d1.wind!.speed}",
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  width: 150,
                                ),
                                Text(
                                  "🛡",
                                  style: TextStyle(fontSize: 35),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "${d1.wind!.deg}",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 140,
                      width: 450,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Humidity"),
                              Text(
                                "💧",
                                style: TextStyle(fontSize: 30),
                              ),
                              Text("${d1.main!.humidity}"),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Visibility"),
                              Text(
                                "👁",
                                style: TextStyle(fontSize: 30),
                              ),
                              Text("${d1.visibility}"),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Humidity"),
                              Text(
                                "🌅",
                                style: TextStyle(fontSize: 30),
                              ),
                              Text("${d1.sys!.sunrise}"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
            return Center(child: CircularProgressIndicator());
          },

        ),
      ),
    );
  }
}

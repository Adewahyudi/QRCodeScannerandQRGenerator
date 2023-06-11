// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../util/job_card.dart';
import '../util/recent_job_card.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List jobsForYou = [
    ["Smart Barcode", 'QR Generator', "lib/icons/Smart-Barcode.png", 0],
    ["Smart Scan", 'Scanner', "lib/icons/Smart-Scan.png", 0],
    ["Data", 'Data Assets', "lib/icons/Data.png", 0],
  ];

  final List recentJobs = [
    ["Data", 'Data Assets', "lib/icons/Data.png", 0],
    ["Smart Scan", 'Scanner', "lib/icons/Smart-Scan.png", 0],
    ["Smart Barcode", 'QR Generator', "lib/icons/Smart-Barcode.png", 0],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF2F6),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Container(
              height: 50,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                //   border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(12),
                //  color: Colors.white,
              ),
              child: Icon(
                Icons.sort_outlined,
                size: 40,
                color: Colors.grey[800],
              ),
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              'Discover a New Path',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(height: 25),

          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      //        border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 30,
                            child: Icon(
                              Icons.search_outlined,
                              size: 40,
                              color: Colors.grey[800],
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search for a job',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    //    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.playlist_play_outlined,
                    size: 40,
                    color: Colors.grey[800],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 50),

          // for yu
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              'Saran untuk Anda',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.grey[800],
              ),
            ),
          ),
          SizedBox(height: 25),

          Container(
            height: 160,
            child: ListView.builder(
              itemCount: jobsForYou.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return JobCard(
                  companyName: jobsForYou[index][0],
                  jobTitle: jobsForYou[index][1],
                  logoImagePath: jobsForYou[index][2],
                  hourlyRate: jobsForYou[index][3],
                );
              },
            ),
          ),
          SizedBox(height: 50),

          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              "Histori",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.grey[800],
              ),
            ),
          ),
          //   SizedBox(height: 25),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView.builder(
                  itemCount: recentJobs.length,
                  itemBuilder: (context, index) {
                    return RecentJobCard(
                      companyName: recentJobs[index][0],
                      jobTitle: recentJobs[index][1],
                      logoImagePath: recentJobs[index][2],
                      hourlyRate: recentJobs[index][3],
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

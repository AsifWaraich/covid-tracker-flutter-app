import 'package:covidapp/View/world_states.dart';
import 'package:flutter/material.dart';
class DetailScreen extends StatefulWidget {
  final String image;
  final String name;
  int totalCases, totalDeaths, totalRecovered, active, critical, todayRecovered, test;
  DetailScreen({
    required this.image,
    required this.name,
    required this.totalCases,
    required this.totalDeaths,
    required this.totalRecovered,
    required this.active,
    required this.critical,
    required this.todayRecovered,
    required this.test,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // CircleAvatar(
          //   radius: 50,
          //   backgroundImage: NetworkImage(widget.image),
          // ),
          Stack(
              children : [
                Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.067),
                  child: Card(
                    child: Column(
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height * 0.06,),
                        ReusableRow(title: 'Cases', value: widget.totalCases.toString()),
                        ReusableRow(title: 'total Recovered', value: widget.totalRecovered.toString()),
                        ReusableRow(title: 'totalDeaths', value: widget.totalDeaths.toString()),
                        ReusableRow(title: 'Critical', value: widget.critical.toString()),
                        ReusableRow(title: 'Active', value: widget.active.toString()),
                        ReusableRow(title: 'Test', value: widget.test.toString()),
                        ReusableRow(title: 'Today Recovered', value: widget.todayRecovered.toString()),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(widget.image),
                  ),
                ),
              ]
          ),
        ],
      ),
    );
  }
}

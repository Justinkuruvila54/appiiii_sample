// ignore_for_file: annotate_overrides

import 'package:appiiii_sample/controller/homescreencontroller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  void initState() {
    fetchdata();
    super.initState();
  }

  fetchdata() async {
    await Provider.of<Homescreencontroller>(context, listen: false).fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    final controlonobj = Provider.of<Homescreencontroller>(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: Consumer(
        builder: (context, value, child) => ListView.builder(
          itemCount: controlonobj.resmodel.newspapers?.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Text(
                    controlonobj.resmodel.newspapers?[index].lccn ?? "",
                    style: TextStyle(color: Colors.green),
                  ),
                  Text(
                    controlonobj.resmodel.newspapers?[index].url ?? "",
                    style: TextStyle(color: Colors.blue),
                  ),
                  Text(
                    controlonobj.resmodel.newspapers?[index].state ?? "",
                    style: TextStyle(color: Colors.red),
                  ),
                  Text(
                    controlonobj.resmodel.newspapers?[index].title ?? "",
                    style: TextStyle(color: Colors.orange),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

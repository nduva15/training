import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({Key? key}) : super(key: key);
  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}
class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[700],
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/profile.jpg"
                ),
              ),
            ),
          ),
          Text("Training", style: TextStyle(color: Colors.white,fontSize: 20),),
          Text("timothynduva349@gmai.com",
            style: TextStyle(color: Colors.white,
              fontSize: 14),)
        ],
      ),


    );
  }
}

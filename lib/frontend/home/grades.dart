import 'package:flutter/material.dart';

class Grades extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text(
            "Course",
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: height * 0.025,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: width * 0.075),
                  child: Text(
                    "Grades",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
            SizedBox(
              height: height * 0.025,
            ),
            NewText(width: width),
            Divider(
              color: Colors.grey,
              indent: 25,
              endIndent: 25,
            ),
            ListTile(
              title: Text("Homework1"),
              trailing: Text("9/10"),
            )
          ],
        ));
  }
}

class NewText extends StatelessWidget {
  NewText({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: width * 0.075),
          child: Text(
            "Homework",
            style: TextStyle(fontSize: 16),
          ),
        )
      ],
    );
  }
}

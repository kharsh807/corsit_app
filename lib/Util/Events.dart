import 'package:flutter/material.dart';

class HomeTile extends StatelessWidget {
  const HomeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 25),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black45,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(11),
                child: Image.network(
                    'https://www.corsit.org/img/Events/img1.jpg')),
            Text(
              'RoboExpo',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 6,),
            Text(
                'ROBOEXPO is an annual event organized by the Robotics club of SIT CORSIT. The primary objective is to introduce the club and its activities to the newcomers by displaying the bots that the members have created over the year'
              ,style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:threads_clone/data/model.dart';

class ThreadPage extends StatelessWidget {
  thread threadList;
  ThreadPage(this.threadList,{super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/${threadList.profileImage}'),
              ),
              title: Row(
                children: [
                  Text(
                    threadList.name ?? 'name',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    threadList.posted!,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
              subtitle: Text(
                threadList.description!,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            if(threadList.image != '')
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 70),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber,
                    image: DecorationImage(
                        image: AssetImage('images/${threadList.image}'), fit: BoxFit.cover),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 70),
                child: Row(
                  children: [
                    Icon(Icons.favorite_border),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.chat_bubble_outline),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.cached),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.send),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              alignment: Alignment.bottomLeft,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Text(
                  '${threadList.replies} replies . ${threadList.likes} likes',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          ],
        ),
        Positioned(
          left: 35,
          top: 63,
          child: Container(
            height: 400,
            width: 3,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(1)),
          ),
        ),
        Positioned(
          right: 330,
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(1)),
            child: const Stack(
              children: [
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/p1.jpg'),
                    radius: 9,
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 10,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/p2.jpg'),
                    radius: 7,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 8,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/p3.jpg'),
                    radius: 6,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

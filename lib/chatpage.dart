import 'package:flutter/material.dart';
import 'chatpageelement.dart';

class Chatpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateChatpage();
  }
}

class _StateChatpage extends State<Chatpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
          children: List.generate(10, (index) {
        return Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10),
              width: 200,
              height: 200,
              child: Chatpageelement(),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              width: 200,
              height: 200,
              child: Chatpageelement(),
            ),
          ],
        );
      })),
    );
  }
}

//     ListView.separated(
//       separatorBuilder: (context, index) => Divider(
//             color: Colors.black,
//             height: 5,
//           ),
//       itemCount: 30,
//       itemBuilder: (context, index) => Padding(
//             padding: EdgeInsets.all(0),
//             child: Center(child: new ContactCard()),
//           ),
//     );
//   }
// }

// class ContactCard extends StatefulWidget {
//   @override
//   ContactCardState createState() {
//     return new ContactCardState();
//   }
// }

// class ContactCardState extends State<ContactCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(0),
//       child: new Row(
//         children: <Widget>[
//           Icon(
//             Icons.face,
//             size: 75,
//           ),
//           Padding(
//             padding: EdgeInsets.all(10),
//           ),
//           Column(
//             children: <Widget>[
//               Text(
//                 'Name Name',
//                 style: TextStyle(fontSize: 20),
//               ),
//               Text(
//                 '@Username',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

/*new Chip(backgroundColor: Colors.grey[200], label: new Row(
        children: <Widget>[
          Icon(Icons.face, size: 75,),
          Padding(padding: EdgeInsets.all(10),),
          Column(
            children: <Widget>[
              Text('Name Name', style: TextStyle(fontSize: 20),),
              Text('@Username', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),)
            ],
          )
        ],
      ), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)));
    
  }
} */

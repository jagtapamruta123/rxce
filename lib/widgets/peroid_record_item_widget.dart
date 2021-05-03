import 'package:flutter/material.dart';
import 'package:rxce/widgets/custom_text_widget.dart';

class RecordItemWidget extends StatelessWidget {
  String period;
  String price;
  String number;
  String results;
  RecordItemWidget({
    this.number,
    this.period,
    this.price,
    this.results,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomTextWidget(
                title: period,
                fontSize: 15,
                letterSpecing: 1.5,
                fontFamily: 'Archia',
                lines: 1,
                overFlow: TextOverflow.ellipsis,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
              CustomTextWidget(
                title: price,
                fontSize: 15,
                lines: 1,
                overFlow: TextOverflow.ellipsis,
                letterSpecing: 1.5,
                fontFamily: 'Archia',
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
              CustomTextWidget(
                title: number,
                fontSize: 15,
                letterSpecing: 1.5,
                lines: 1,
                overFlow: TextOverflow.ellipsis,
                fontFamily: 'Archia',
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
              Icon(
                Icons.circle,
                size: 18,
                color: Colors.red,
              )
              // CustomTextWidget(
              //   title: results,
              //   fontSize: 15,
              //   letterSpecing: 1.5,
              //   lines: 1,
              //   overFlow: TextOverflow.ellipsis,
              //   fontFamily: 'Archia',
              //   color: Colors.black,
              //   fontWeight: FontWeight.normal,
              // ),
            ],
          ),
        ),
        Divider(
          thickness: 1,
        )
      ],
    );
  }
}

// class RecordItemWidget extends StatelessWidget {
//   String period;
//   String price;
//   String number;
//   String results;
//   RecordItemWidget({
//     this.number,
//     this.period,
//     this.price,
//     this.results,
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           height: 40,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               CustomTextWidget(
//                 title: period,
//                 fontSize: 15,
//                 letterSpecing: 1.5,
//                 fontFamily: 'Archia',
//                 lines: 1,
//                 overFlow: TextOverflow.ellipsis,
//                 color: Colors.black,
//                 fontWeight: FontWeight.normal,
//               ),
//               CustomTextWidget(
//                 title: price,
//                 fontSize: 15,
//                 lines: 1,
//                 overFlow: TextOverflow.ellipsis,
//                 letterSpecing: 1.5,
//                 fontFamily: 'Archia',
//                 color: Colors.black,
//                 fontWeight: FontWeight.normal,
//               ),
//               CustomTextWidget(
//                 title: number,
//                 fontSize: 15,
//                 letterSpecing: 1.5,
//                 lines: 1,
//                 overFlow: TextOverflow.ellipsis,
//                 fontFamily: 'Archia',
//                 color: Colors.black,
//                 fontWeight: FontWeight.normal,
//               ),
//               Icon(
//                 Icons.circle,
//                 size: 18,
//                 color: Colors.red,
//               )
//               // CustomTextWidget(
//               //   title: results,
//               //   fontSize: 15,
//               //   letterSpecing: 1.5,
//               //   lines: 1,
//               //   overFlow: TextOverflow.ellipsis,
//               //   fontFamily: 'Archia',
//               //   color: Colors.black,
//               //   fontWeight: FontWeight.normal,
//               // ),
//             ],
//           ),
//         ),
//         Divider(
//           thickness: 1,
//         )
//       ],
//     );
//   }
// }

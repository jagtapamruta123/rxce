import 'package:flutter/material.dart';
import 'package:rxce/widgets/custom_text_widget.dart';

class MinePageCardItem extends StatelessWidget {
  Function onTap;
  IconData icon;
  String name;
  MinePageCardItem({
    this.icon,
    this.name,
    this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 45,
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 10, 8, 8),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              //  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 8,
                ),
                Icon(
                  icon,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 20,
                ),
                CustomTextWidget(
                  title: name,
                  fontSize: 15,
                  color: Colors.black,
                  letterSpecing: 1,
                  fontFamily: 'Archia',
                  fontWeight: FontWeight.bold,
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.grey,
                  size: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

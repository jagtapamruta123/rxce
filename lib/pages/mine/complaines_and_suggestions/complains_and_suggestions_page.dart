import 'package:flutter/material.dart';
import 'package:rxce/pages/mine/complaines_and_suggestions/add_complains_suggestion.dart';
import 'package:rxce/widgets/custom_text_widget.dart';

class ComplainsAndSuggestionsPage extends StatefulWidget {
  static String id = 'complains';
  @override
  _ComplainsAndSuggestionsPageState createState() =>
      _ComplainsAndSuggestionsPageState();
}

class _ComplainsAndSuggestionsPageState
    extends State<ComplainsAndSuggestionsPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build throw UnimplementedError();

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(
                Icons.add,
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AddSuggestionsAndComplainsPage.id,
                );
              },
            )
          ],
          leadingWidth: 25,
          title: CustomTextWidget(
            title: 'Complains And Suggestions',
            fontSize: 20,
            color: Colors.white,
            letterSpecing: 1.5,
            fontFamily: 'Archia',
            fontWeight: FontWeight.bold,
          ),
          bottom: TabBar(tabs: [
            Tab(
              child: CustomTextWidget(
                title: 'COMPLETED',
                fontSize: 12,
                color: Colors.white,
                letterSpecing: 0.5,
                fontFamily: 'Poppins',
                // fontWeight: FontWeight.bold,
              ),
            ),
            Tab(
              child: CustomTextWidget(
                title: 'WAITING',
                fontSize: 12,
                color: Colors.white,
                letterSpecing: 0.2,
                fontFamily: 'Poppins',
                // /  fontWeight: FontWeight.w800,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

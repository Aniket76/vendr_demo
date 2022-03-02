import 'package:flutter/material.dart';
import 'package:vendr_demo/utils/colors_constants.dart';

class ShowroomScreen extends StatefulWidget {
  const ShowroomScreen({Key? key}) : super(key: key);

  @override
  _ShowroomScreenState createState() => _ShowroomScreenState();
}

class _ShowroomScreenState extends State<ShowroomScreen> {

  final TextEditingController _searchInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(16,8,16,8),
          color: offWhiteColor,
          child: TextField(
            decoration: InputDecoration(
              contentPadding:const EdgeInsets.fromLTRB(10,0,10,0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              prefixIcon: const Icon(
                  Icons.search
              ),
              filled: true,
              fillColor: const Color(0xffe6e6e6),
              hintText: 'Search',
            ),
            controller: _searchInputController,
          ),
        )
      ],
    );
  }
}

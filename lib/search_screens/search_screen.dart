import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 48,
      decoration: BoxDecoration(
        color: Color(0xff3A3F47),
      ),
      child: TextField(
        controller: myController,
        autofocus: false,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xff67686D),
          contentPadding: EdgeInsets.only(left: 19),
          suffixIcon: IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(
              Icons.search_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              print('${myController.text}');
            },
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(18)),
          ),
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}

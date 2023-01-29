import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: TextStyle(color: Color(0xFF717171), fontSize: 20.0),
        contentPadding: EdgeInsets.all(10.0),
        suffixIcon: Icon(Icons.search, size: 30.0, color: Colors.white),
        filled: true,
        fillColor: Color(0xFF333333),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 0.0),
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40.0))),
      ),
    );
  }
}

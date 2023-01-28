import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFF333333),
        contentPadding: const EdgeInsets.all(10.0),
        hintText: 'Search',
        hintStyle: const TextStyle(
          color: Color(0xFF717171),
          fontSize: 20.0,
        ),
        suffixIcon: const Icon(
          Icons.search,
          color: Colors.white,
          size: 30.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.0),
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 0.0,
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SearchTextFieldWidget extends StatelessWidget {
  const SearchTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Search',
          ),
          onChanged: (text) {
            // Handle search text change
          },
        ),
      ),
    );
  }
}

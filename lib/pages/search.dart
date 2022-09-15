import 'package:flutter/material.dart';

import '../utils/search_grid.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            color: Colors.grey[300],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 6,),
                  Text(
                    'Search'
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: Center(child: SearchGrid()),
    );
  }
}

import 'package:flutter/material.dart';

class Search_Delegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios_new_outlined),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    //arama sonuçları
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Arama önerileri (isteğe bağlı)
    return Container();
  }
}
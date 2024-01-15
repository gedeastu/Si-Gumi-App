import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String _selectedResult = '';
  final TextEditingController _searchController = TextEditingController();
  final List<String> _searchResults = [
    'Result 1',
    'Result 2',
    'Result 3',
    'Result 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    _searchController.clear();
                    setState(() {
                      _selectedResult = '';
                    });
                  },
                ),
              ),
              onChanged: (value) {
                setState(() {
                  _selectedResult = '';
                });
              },
            ),
            const SizedBox(height: 16.0),
            DropdownButton<String>(
              isExpanded: true,
              value: _selectedResult,
              hint: const Text('Select a result'),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedResult = newValue!;
                  _searchController.text = newValue;
                });
              },
              items: _searchResults.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

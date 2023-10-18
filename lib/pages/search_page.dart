import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Search for music...',
                prefixIcon: Icon(Icons.search),
              ),
              onSubmitted: (query) {
                // Handle search query submission
                // You might want to call an API to fetch search results here.
              },
            ),
            SizedBox(height: 16),

            // Search Results
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Example: Display 10 search results
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.music_note),
                    title: Text('Song Title $index'),
                    subtitle: Text('Artist $index'),
                    onTap: () {
                      // Handle selection of a search result (e.g., navigate to the player screen).
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

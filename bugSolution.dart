```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      //Check if jsonData is a map and contains the 'name' key
      if (jsonData is Map && jsonData.containsKey('name')){
        final String name = jsonData['name'];
        print('Name: $name');
      } else {
        print('Unexpected JSON structure');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    rethrow;
  }
}

void main() async {
  await fetchData();
}
```
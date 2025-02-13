# Dart Bug: Handling Unexpected JSON Responses

This repository demonstrates a common error in Dart applications that interact with APIs: assuming a consistent JSON response structure. The `bug.dart` file contains code that attempts to access a specific field ('name') from a JSON response. However, if the API returns a different structure, the code throws an exception.

The solution, in `bugSolution.dart`, shows how to handle this by implementing robust error handling and checking the JSON structure before accessing specific fields.
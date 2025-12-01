import 'dart:convert';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

class FloorplanRepository {
  static const String _baseUrl = "http://192.168.1.4:8000"; // IP جهازك

  Future<Uint8List> generateFloorplan(String prompt) async {
    final url = Uri.parse("$_baseUrl/generate-floorplan/");

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"prompt": prompt}),
    );

    print("STATUS CODE: ${response.statusCode}");
    print("RAW BODY: ${response.body}");

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      if (data is! Map<String, dynamic>) {
        throw Exception("Server must return a JSON object");
      }

      if (data["error"] != null) {
        throw Exception("Server error: ${data["error"]}");
      }

      final b64 = data["image_base64"] as String?;
      if (b64 == null) {
        throw Exception(
          "No image_base64 in response. Keys: ${data.keys.toList()}",
        );
      }

      return base64Decode(b64);
    } else {
      throw Exception(
        "API error: ${response.statusCode} - ${response.body}",
      );
    }
  }
}

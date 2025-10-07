import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as httpClient;
import 'package:medicare/data/remote/api/urls.dart';

class ApiHelper {
  Future<dynamic> generateAImsg({
    required String url,
    required String prompt,
  }) async {
    try {
      var mUri = Uri.parse(url);
      var response = await httpClient.post(
        mUri,
        body: jsonEncode({
          "contents": [
            {
              "parts": [
                {"text": prompt},
              ],
            },
          ],
        }),
        headers: {"Content-Type": "application/json", "key": "${Urls.API_KEY}"},
      );
      print(response.body.toString());
      if (response.statusCode == 200) {
        var mdata = jsonDecode(response.body);
        //   if(mdata['error']! = null){
        //     throw(HttpException("Error: $mdata['error'][]"));
        //   }
        //   return mdata;
      } else {
        throw (HttpException("Server error: ${response.statusCode}"));
      }
    } catch (e) {
      throw (HttpException(e.toString()));
    }
  }
}

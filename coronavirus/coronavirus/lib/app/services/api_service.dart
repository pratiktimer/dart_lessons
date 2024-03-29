import 'dart:convert';

import 'package:http/http.dart' as http;

import 'api.dart';
import 'endpoint_data.dart';

class APIService {
  APIService(this.api);
  final API api;

  Future<String> getAccessToken() async {
    final response = await http.post(
      api.tokenUri(),
      headers: {'Authorization': 'Basic ${api.apiKey}'},
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final accessToken = data['access_token'];
      if (accessToken != null) {
        return accessToken;
      }
    }
    print(
        'Request ${api.tokenUri()} failed\nResponse: ${response.statusCode} ${response.reasonPhrase}');
    throw response;
  }

  Future<EndpointData> getEndpointData({
    required String? accessToken,
    required Endpoint endpoint,
  }) async {
    final uri = api.endpointUri(endpoint);
    final response = await http.get(
      uri,
      headers: {'Authorization': 'Bearer $accessToken'},
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body) as List<dynamic>;
      if (data.isNotEmpty) {
        final endpointData = data[0] as Map<String, dynamic>;
        final responseJsonKey = _responseJsonKeys[endpoint] as String;
        final value = endpointData[responseJsonKey] as int?;
        final dateString = endpointData['date'] as String;
        final date = DateTime.tryParse(dateString);
        if (value != null) {
          return EndpointData(value: value, date: date);
        }
      }
    }
    print(
        'Request $uri failed\nResponse: ${response.statusCode} ${response.reasonPhrase}');
    throw response;
  }

  static Map<Endpoint, String> _responseJsonKeys = {
    Endpoint.cases: 'cases',
    Endpoint.casesSuspected: 'data',
    Endpoint.casesConfirmed: 'data',
    Endpoint.deaths: 'data',
    Endpoint.recovered: 'data',
  };
}

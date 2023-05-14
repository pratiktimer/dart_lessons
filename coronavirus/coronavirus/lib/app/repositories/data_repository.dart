
import 'package:http/http.dart';

import '../services/api.dart';
import '../services/api_service.dart';

class DataRepository {
  DataRepository({required this.apiService});
  final APIService apiService;

  String _accessToken = '';

  Future<int> getEndpointData(Endpoint endpoint) async {
    try {
      return await apiService.getEndpointData(
          accessToken: _accessToken, endpoint: endpoint);
    } on Response catch (response) {
      // if unauthorized, get access token again
      if (response.statusCode == 401) {
        _accessToken = await apiService.getAccessToken();
        return await apiService.getEndpointData(
            accessToken: _accessToken, endpoint: endpoint);
      }
      rethrow;
    }
  }
}

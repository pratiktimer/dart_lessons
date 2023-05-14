import 'package:coronavirus/app/services/api_keys.dart';

enum Endpoint {
  cases,
  casesSuspected,
  casesConfirmed,
  deaths,
  recovered,
}
// abstract class API {
//   String get apiKey;
//   Uri tokenUri();
//   Uri endpointUri(Endpoint endpoint);
// }

class API {
  API({required this.apiKey});
  final String apiKey;

  factory API.sandbox() => API(apiKey: APIKeys.ncovSandBoxKey);

  static final String host = 'ncov2019-admin.firebaseapp.com';

  Uri tokenUri() => Uri(
        scheme: 'https',
        host: host,
        path: 'token',
      );

  Uri endpointUri(Endpoint endpoint) => Uri(
        scheme: 'https',
        host: host,
        path: _paths[endpoint],
      );

  static final Map<Endpoint, String> _paths = {
    Endpoint.cases: 'cases',
    Endpoint.casesSuspected: 'casesSuspected',
    Endpoint.casesConfirmed: 'casesConfirmed',
    Endpoint.deaths: 'deaths',
    Endpoint.recovered: 'recovered',
  };
}

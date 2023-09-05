class Api {
  static const String baseUrl = 'http://192.168.11.101:8000/api';

  static const String login = '/login';
  static const String register = '/register';

  static const String about = '/about';

  static String getFullUrl(String endpoint) {
    print('$baseUrl$endpoint');
    return '$baseUrl$endpoint';
  }
}

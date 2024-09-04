class ApiEndpoints {
  factory ApiEndpoints() {
    return _instance;
  }

  ApiEndpoints._internal();

  static final _instance = ApiEndpoints._internal();

  /// Enpoint que trae listado de Raza de gatos
  static const String breeds = '/breeds';
}

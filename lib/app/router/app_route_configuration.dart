class AppRouteConfiguration {
  final String pageName;

  AppRouteConfiguration.home() : pageName = '';
  AppRouteConfiguration.about() : pageName = 'About';

  bool get isHomePage => pageName == '';
  bool get isAboutPage => pageName == 'About';
}

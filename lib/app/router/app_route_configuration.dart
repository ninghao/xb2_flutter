class AppRouteConfiguration {
  final String pageName;
  final String? resourceId;

  AppRouteConfiguration.home()
      : pageName = '',
        resourceId = null;

  AppRouteConfiguration.about()
      : pageName = 'About',
        resourceId = null;

  AppRouteConfiguration.postShow(this.resourceId) : pageName = 'PostShow';

  bool get isHomePage => pageName == '';
  bool get isAboutPage => pageName == 'About';
  bool get isPostShow => pageName == 'PostShow' && resourceId != null;
}

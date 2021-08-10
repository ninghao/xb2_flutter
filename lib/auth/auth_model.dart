class AuthModel {
  bool isLoggedIn = false;
  String name = '';

  login() {
    isLoggedIn = true;
    name = 'wanghao';
    print('请求登录！');
  }

  logout() {
    isLoggedIn = false;
    name = '';
    print('退出登录！');
  }
}

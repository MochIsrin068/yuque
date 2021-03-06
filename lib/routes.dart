// import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';

import 'package:yuque/core/router.dart';
import 'package:yuque/core/router_handler.dart';

class Routes {
  static String root = "/";
  static String yuque = "/yuque";
  static String doc = "/doc";
  static String me = "/me";
  static String login = '/login';
  static String setting = '/setting';
  static String search = '/search';
  static String group = '/group';
  // static String book = '/book';
  static String searchResult = '/search_result';
  static String webview = '/webview';
  static String launcher = '/launcher';
  static String deeplink = "/message";

  static void configureRoutes(CupertinoRouter router) {
    router.notFoundHandler = new Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        print("Route was not found !!!");
      }
    );

    router.define(root, handler: rootHandler);
    router.define(yuque, handler: yuqueHandler);
    router.define(doc, handler: docHandler);
    router.define(me, handler: meHandler);
    router.define(setting, handler: settingHandler);
    router.define(login, handler: loginHandler);
    router.define(group, handler: groupHandler);
    // router.define(book, handler: bookHandler);
    router.define(search, handler: searchHandler);
    router.define(searchResult, handler: searchResultHandler);
    router.define(webview, handler: webviewHandler);
    router.define(launcher, handler: launcherHandler);
    router.define(deeplink, handler: deeplinkHandler);
  }
}
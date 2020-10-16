// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#import "FLTWebViewFlutterPluginFork.h"
#import "FLTCookieManager.h"
#import "FlutterWebView.h"

@implementation FLTWebViewFlutterPluginFork

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FLTWebViewFactory* webviewFactory =
      [[FLTWebViewFactory alloc] initWithMessenger:registrar.messenger];
  [registrar registerViewFactory:webviewFactory withId:@"plugins.flutter.io/webview.fork"];
  [FLTCookieManager registerWithRegistrar:registrar];
}

@end

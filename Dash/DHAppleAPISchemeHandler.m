//
//  DHAppleAPISchemeHandler.m
//  Dash
//
//  Created by chenhaoyu.1999 on 2021/3/28.
//  Copyright © 2021 Kapeli. All rights reserved.
//

#import "DHAppleAPISchemeHandler.h"
#import "DHDocsetManager.h"
#import "DHLatencyTester.h"
#import "DHWebViewController.h"
#import "DHTocBrowser.h"

@implementation DHAppleAPISchemeHandler

- (void)webView:(nonnull WKWebView *)webView startURLSchemeTask:(nonnull id<WKURLSchemeTask>)urlSchemeTask {
    @autoreleasepool {
        NSURLRequest *request = urlSchemeTask.request;
        NSURLResponse *response = [[NSURLResponse alloc] initWithURL:[request URL] MIMEType:@"text/html" expectedContentLength:-1 textEncodingName:nil];
        [urlSchemeTask didReceiveResponse:response];
        NSString *url = [[request.URL absoluteString] substringToString:@"#"];
        if(![url contains:@"&language="])
        {
            url = [url stringByAppendingFormat:@"&language=%@", ([DHAppleActiveLanguage currentLanguage] == DHNewActiveAppleLanguageObjC) ? @"occ" : @"swift"];
        }
        NSData *data = [@"<html><head><title>Error</title></head><body>Error. Please reinstall the Apple API Reference docset.</body></html>" dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
        [urlSchemeTask didReceiveData:data];
        [urlSchemeTask didFinish];
    }
}

- (void)webView:(nonnull WKWebView *)webView stopURLSchemeTask:(nonnull id<WKURLSchemeTask>)urlSchemeTask {
    
}



@end

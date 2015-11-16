//
//  DreamDeatailViewController.m
//  DreamOrder
//
//  Created by Allan on 15/11/15.
//  Copyright © 2015年 Allan. All rights reserved.
//

#import "DreamDeatailViewController.h"

@interface DreamDeatailViewController ()
@property(nonatomic,strong)UIWebView *webView;
@end

@implementation DreamDeatailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"梦想计划";
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.webView];
    
    NSURL *url = [NSURL URLWithString:@"http://192.168.2.193:9000/"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    NSLog(@"request=%@",request);
    return YES;
}


-(UIWebView*)webView{
    if (!_webView) {
        _webView = [[UIWebView alloc]initWithFrame:self.view.frame];
        _webView.backgroundColor = [UIColor whiteColor];
        _webView.delegate =(id<UIWebViewDelegate>) self;
    }
    return _webView;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

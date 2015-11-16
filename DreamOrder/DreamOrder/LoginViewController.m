//
//  LoginViewController.m
//  DreamOrder
//
//  Created by Allan on 15/11/15.
//  Copyright © 2015年 Allan. All rights reserved.
//

#import "LoginViewController.h"
#import "DreamTabBarViewController.h"
@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UIButton *registButton;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.passwordTextField setSecureTextEntry:YES];

    self.userNameTextField.text = @"Allan";
    self.passwordTextField.text = @"aaaaaaa";
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view  endEditing:YES];
}
- (IBAction)loginButtonCick:(id)sender {
    
    UIWindow *keyWindow = [[UIApplication sharedApplication]keyWindow];
    
    UIStoryboard*storyBoard= [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    DreamTabBarViewController *tabBar =  [storyBoard instantiateViewControllerWithIdentifier:@"DreamTabBarViewController"];
    
    keyWindow.rootViewController = tabBar;
    
}
- (IBAction)registButtonClick:(id)sender {
    
    
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

//
//  ViewController.m
//  Pateapi
//
//  Created by adin on 2024/3/28.
//

#import "ViewController.h"
#import "AdventureViewController.h"
#import "TrueViewController.h"
#import "curViewController.h"
#import "XMCustomAlertViewModel.h"
#import "XMCustomAlertViewConfiguration.h"
#import "XMCustomAlertViewIdentifier.h"
#import "XMCustomAlertView+CustomView.h"
#import "XMCustomAlertView_CustomView.h"
#import "XMCustomAlertViewAnimation.h"
#import "XMCustomAlertViewPush.h"
#import "XMCustomAlertView.h"
#import "XMCustomAlertViewAutoDismiss.h"
#import "PrivacyController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)mxz:(UIButton *)sender {
    AdventureViewController *nav=[[AdventureViewController alloc]init];
    [self presentViewController:nav animated:YES completion:nil];
    
}

- (IBAction)clearclick:(UIButton *)sender {
    
    XMCustomAlertView *alertView = [[XMCustomAlertView alloc] initWithTitle:@"Title" message:@"Are you sure you want to clear custom data?" delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:@[@"OK"]
                                                               clickHandler:^(XMCustomAlertView * _Nonnull alertView, NSInteger buttonIndex) {
        
       // [self loadimageview];
    }];
    
    [alertView show];
    
    // 创建 UIAlertController
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Title" message:@"Are you sure you want to clear custom data?" preferredStyle:UIAlertControllerStyleAlert];

    // 创建取消按钮
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];

    // 创建确定按钮
    UIAlertAction *confirmAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
      
    }];

    // 将按钮添加到提示框中
    [alertController addAction:cancelAction];
    [alertController addAction:confirmAction];

    // 显示提示框
    [self presentViewController:alertController animated:YES completion:nil];
}
- (IBAction)zdinyiclick:(UIButton *)sender {
    curViewController *nav=[[curViewController alloc]init];
    
    [self presentViewController:nav animated:YES completion:nil];
    
}
- (IBAction)zhenxinclick:(id)sender {
    
    TrueViewController *nav=[[TrueViewController alloc]init];
    
    [self presentViewController:nav animated:YES completion:nil];
    
}
- (IBAction)Privacyclick:(UIButton *)sender {
    PrivacyController *nav=[[PrivacyController alloc]init];
    
    [self presentViewController:nav animated:YES completion:nil];
    
}

@end

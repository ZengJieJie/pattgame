//
//  curViewController.m
//  Pateapi
//
//  Created by adin on 2024/3/28.
//

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
@interface curViewController ()

@end

@implementation curViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
}
- (IBAction)Addzxhclick:(UIButton *)sender {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Add"
                                                                             message:nil
                                                                      preferredStyle:UIAlertControllerStyleAlert];

    // 添加文本输入框
    [alertController addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"";
    }];

    // 添加取消按钮
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel"
                                                           style:UIAlertActionStyleCancel
                                                         handler:nil];
    [alertController addAction:cancelAction];

    // 添加确认按钮
    UIAlertAction *confirmAction = [UIAlertAction actionWithTitle:@"OK"
                                                            style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * _Nonnull action) {
                                                              UITextField *textField = alertController.textFields.firstObject;
                                                              NSString *inputText = textField.text;
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        
        NSMutableArray *zxharray = [[NSMutableArray alloc]initWithArray:[defaults objectForKey:@"zxh"]];
        
        [zxharray addObject:inputText];
        
        NSArray * arr=zxharray;
        NSLog(@"%@",arr);
        [defaults setObject:arr forKey:@"zxh"];
        // 立即同步数据
        [defaults synchronize];
        
        UIAlertController *alertController1 = [UIAlertController alertControllerWithTitle:@"Prompt"
                                                                                 message:@"Added successfully"
                                                                          preferredStyle:UIAlertControllerStyleAlert];

        UIAlertAction *okAction1 = [UIAlertAction actionWithTitle:@"OK"
                                                           style:UIAlertActionStyleDefault
                                                         handler:nil];
        [alertController1 addAction:okAction1];

        [self presentViewController:alertController1 animated:YES completion:nil];
                                                          }];
    [alertController addAction:confirmAction];


    [self presentViewController:alertController animated:YES completion:nil];
    
}
- (IBAction)AddAdveclick:(UIButton *)sender {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Add"
                                                                             message:nil
                                                                      preferredStyle:UIAlertControllerStyleAlert];

    // 添加文本输入框
    [alertController addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"";
    }];

    // 添加取消按钮
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel"
                                                           style:UIAlertActionStyleCancel
                                                         handler:nil];
    [alertController addAction:cancelAction];

    // 添加确认按钮
    UIAlertAction *confirmAction = [UIAlertAction actionWithTitle:@"OK"
                                                            style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * _Nonnull action) {
                                                              UITextField *textField = alertController.textFields.firstObject;
                                                              NSString *inputText = textField.text;
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        
        
        NSMutableArray *zxharray = [[NSMutableArray alloc]initWithArray:[defaults objectForKey:@"dmx"]];
        
       
        
        [zxharray addObject:inputText];
        
        NSArray * arr=zxharray;
        [defaults setObject:arr forKey:@"dmx"];
        // 立即同步数据
        [defaults synchronize];
        
        UIAlertController *alertController1 = [UIAlertController alertControllerWithTitle:@"Prompt"
                                                                                 message:@"Added successfully"
                                                                          preferredStyle:UIAlertControllerStyleAlert];

        UIAlertAction *okAction1 = [UIAlertAction actionWithTitle:@"OK"
                                                           style:UIAlertActionStyleDefault
                                                         handler:nil];
        [alertController1 addAction:okAction1];

        [self presentViewController:alertController1 animated:YES completion:nil];
                                                          }];
    [alertController addAction:confirmAction];


    [self presentViewController:alertController animated:YES completion:nil];
}
- (IBAction)BackClcik:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
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

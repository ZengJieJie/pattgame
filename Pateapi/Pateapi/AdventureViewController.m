//
//  AdventureViewController.m
//  Pateapi
//
//  Created by adin on 2024/3/28.
//
#import "Masonry.h"
#import "AdventureViewController.h"
#import "XMCustomAlertViewModel.h"
#import "XMCustomAlertViewConfiguration.h"
#import "XMCustomAlertViewIdentifier.h"
#import "XMCustomAlertView+CustomView.h"
#import "XMCustomAlertView_CustomView.h"
#import "XMCustomAlertViewAnimation.h"
#import "XMCustomAlertViewPush.h"
#import "XMCustomAlertView.h"
#import "XMCustomAlertViewAutoDismiss.h"
@interface AdventureViewController ()


@property (weak, nonatomic) IBOutlet UIButton *btn1;
@property (weak, nonatomic) IBOutlet UIButton *btn2;
@property (weak, nonatomic) IBOutlet UIButton *btn3;
@property (weak, nonatomic) IBOutlet UIButton *btn4;
@property (weak, nonatomic) IBOutlet UIButton *btn5;
@property (weak, nonatomic) IBOutlet UIButton *btn6;
@property (weak, nonatomic) IBOutlet UIButton *btn7;
@property (weak, nonatomic) IBOutlet UIButton *btn8;
@property (weak, nonatomic) IBOutlet UIButton *btn9;
@property (weak, nonatomic) IBOutlet UIButton *btn10;
@property (assign,nonatomic) CGFloat  topInset;
@property (strong,nonatomic) NSString * stringtext;
@property (assign,nonatomic) CGFloat  leftInset;

@property (assign,nonatomic) CGFloat  bottomInset;

@property (assign,nonatomic) CGFloat  rightInset;
@property (strong,nonatomic) UIView * alertview;
@property (assign,nonatomic) bool viewhide;
@end

@implementation AdventureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.topInset = 10.0;
    self. leftInset = 10.0;
    self. bottomInset = 10.0;
    self. rightInset = 10.0;
   
    [self loadimageview];
    
    _viewhide=YES;
}
-(void)loadimageview{
    _stringtext=@"";
    [self.btn1 setTitle:@"" forState:UIControlStateNormal];
    [self.btn2 setTitle:@"" forState:UIControlStateNormal];
    [self.btn3 setTitle:@"" forState:UIControlStateNormal];
    [self.btn4 setTitle:@"" forState:UIControlStateNormal];
    [self.btn5 setTitle:@"" forState:UIControlStateNormal];
    [self.btn6 setTitle:@"" forState:UIControlStateNormal];
    [self.btn7 setTitle:@"" forState:UIControlStateNormal];
    [self.btn8 setTitle:@"" forState:UIControlStateNormal];
    [self.btn9 setTitle:@"" forState:UIControlStateNormal];
    [self.btn10 setTitle:@"" forState:UIControlStateNormal];
    
    [self.btn1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.btn1.titleLabel.font = [UIFont systemFontOfSize:14];
   
     self.btn1.titleEdgeInsets = UIEdgeInsetsMake(self.topInset, self.leftInset,self. bottomInset, self.rightInset);
     self.btn1.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
      self.btn1.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
     self.btn1.titleLabel.numberOfLines = 0;
     self.btn1.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    
    [self.btn2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.btn2.titleLabel.font = [UIFont systemFontOfSize:14];
     self.btn2.titleEdgeInsets = UIEdgeInsetsMake(self.topInset, self.leftInset, self.bottomInset, self.rightInset);
     self.btn2.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
      self.btn2.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
     self.btn2.titleLabel.numberOfLines = 0;
     self.btn2.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    
    [self.btn3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.btn3.titleLabel.font = [UIFont systemFontOfSize:14];
     self.btn3.titleEdgeInsets = UIEdgeInsetsMake(self.topInset, self.leftInset, self.bottomInset, self.rightInset);
     self.btn3.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
      self.btn3.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
     self.btn3.titleLabel.numberOfLines = 0;
     self.btn3.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    
    [self.btn4 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.btn4.titleLabel.font = [UIFont systemFontOfSize:14];
     self.btn4.titleEdgeInsets = UIEdgeInsetsMake(self.topInset, self.leftInset, self.bottomInset, self.rightInset);
     self.btn4.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
      self.btn4.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
     self.btn4.titleLabel.numberOfLines = 0;
     self.btn4.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    
    [self.btn4 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.btn4.titleLabel.font = [UIFont systemFontOfSize:14];
     self.btn4.titleEdgeInsets = UIEdgeInsetsMake(self.topInset, self.leftInset, self.bottomInset, self.rightInset);
     self.btn4.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
      self.btn4.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
     self.btn4.titleLabel.numberOfLines = 0;
     self.btn4.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    
    
    [self.btn5 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.btn5.titleLabel.font = [UIFont systemFontOfSize:14];
     self.btn5.titleEdgeInsets = UIEdgeInsetsMake(self.topInset, self.leftInset, self.bottomInset, self.rightInset);
     self.btn5.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
      self.btn5.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
     self.btn5.titleLabel.numberOfLines = 0;
     self.btn5.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    
    
    [self.btn5 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.btn5.titleLabel.font = [UIFont systemFontOfSize:14];
     self.btn5.titleEdgeInsets = UIEdgeInsetsMake(self.topInset, self.leftInset, self.bottomInset, self.rightInset);
     self.btn5.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
      self.btn5.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
     self.btn5.titleLabel.numberOfLines = 0;
     self.btn5.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    
    
    [self.btn5 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.btn5.titleLabel.font = [UIFont systemFontOfSize:14];
     self.btn5.titleEdgeInsets = UIEdgeInsetsMake(self.topInset, self.leftInset, self.bottomInset, self.rightInset);
     self.btn5.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
      self.btn5.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
     self.btn5.titleLabel.numberOfLines = 0;
     self.btn5.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    
    [self.btn6 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.btn6.titleLabel.font = [UIFont systemFontOfSize:14];
     self.btn6.titleEdgeInsets = UIEdgeInsetsMake(self.topInset, self.leftInset, self.bottomInset, self.rightInset);
     self.btn6.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
      self.btn6.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
     self.btn6.titleLabel.numberOfLines = 0;
     self.btn6.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    
    [self.btn7 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.btn7.titleLabel.font = [UIFont systemFontOfSize:14];
     self.btn7.titleEdgeInsets = UIEdgeInsetsMake(self.topInset, self.leftInset, self.bottomInset, self.rightInset);
     self.btn7.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
      self.btn7.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
     self.btn7.titleLabel.numberOfLines = 0;
     self.btn7.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    
    [self.btn8 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.btn8.titleLabel.font = [UIFont systemFontOfSize:14];
     self.btn8.titleEdgeInsets = UIEdgeInsetsMake(self.topInset, self.leftInset, self.bottomInset, self.rightInset);
     self.btn8.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
      self.btn8.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
     self.btn8.titleLabel.numberOfLines = 0;
     self.btn8.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    
    [self.btn9 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.btn9.titleLabel.font = [UIFont systemFontOfSize:14];
     self.btn9.titleEdgeInsets = UIEdgeInsetsMake(self.topInset, self.leftInset, self.bottomInset, self.rightInset);
     self.btn9.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
      self.btn9.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
     self.btn9.titleLabel.numberOfLines = 0;
     self.btn9.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    
    
    [self.btn10 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.btn10.titleLabel.font = [UIFont systemFontOfSize:14];
     self.btn10.titleEdgeInsets = UIEdgeInsetsMake(self.topInset, self.leftInset, self.bottomInset, self.rightInset);
     self.btn10.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
      self.btn10.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
     self.btn10.titleLabel.numberOfLines = 0;
     self.btn10.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    
    [UIView transitionWithView:self.btn1
                         duration:1.5
                          options:UIViewAnimationOptionTransitionCrossDissolve
                       animations:^{
        int i =1;
        [self.btn1 setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d",i]] forState:UIControlStateNormal];
        self.btn1.tag=i;
                       }
                       completion:nil];
    
    [UIView transitionWithView:self.btn2
                         duration:1.5
                          options:UIViewAnimationOptionTransitionCrossDissolve
                       animations:^{
        int i =1;
        [self.btn2 setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d",i]] forState:UIControlStateNormal];
        self.btn2.tag=i;
                       }
                       completion:nil];
    
    [UIView transitionWithView:self.btn3
                         duration:1.5
                          options:UIViewAnimationOptionTransitionCrossDissolve
                       animations:^{
                         
        int i =1;
        [self.btn3 setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d",i]] forState:UIControlStateNormal];
        self.btn3.tag=i;
                       }
                       completion:nil];
    [UIView transitionWithView:self.btn4
                         duration:1.5
                          options:UIViewAnimationOptionTransitionCrossDissolve
                       animations:^{
        int i =1;
        [self.btn4 setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d",i]] forState:UIControlStateNormal];
        self.btn4.tag=i;
                       }
                       completion:nil];
    [UIView transitionWithView:self.btn5
                         duration:1.5
                          options:UIViewAnimationOptionTransitionCrossDissolve
                       animations:^{
                         
        int i =1;
        [self.btn5 setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d",i]] forState:UIControlStateNormal];
        self.btn5.tag=i;
                       }
                       completion:nil];
    [UIView transitionWithView:self.btn6
                         duration:1.5
                          options:UIViewAnimationOptionTransitionCrossDissolve
                       animations:^{
                         
        int i =1;
        [self.btn6 setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d",i]] forState:UIControlStateNormal];
        self.btn6.tag=i;
                       }
                       completion:nil];
    [UIView transitionWithView:self.btn7
                         duration:1.5
                          options:UIViewAnimationOptionTransitionCrossDissolve
                       animations:^{
                         
        int i =1;
        [self.btn7 setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d",i]] forState:UIControlStateNormal];
        self.btn7.tag=i;
                       }
                       completion:nil];
    [UIView transitionWithView:self.btn8
                         duration:1.5
                          options:UIViewAnimationOptionTransitionCrossDissolve
                       animations:^{
                         
        int i =1;
        [self.btn8 setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d",i]] forState:UIControlStateNormal];
        self.btn8.tag=i;
                       }
                       completion:nil];
    [UIView transitionWithView:self.btn9
                         duration:1.5
                          options:UIViewAnimationOptionTransitionCrossDissolve
                       animations:^{
                         
        int i =1;
        [self.btn9 setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d",i]] forState:UIControlStateNormal];
        self.btn9.tag=i;
                       }
                       completion:nil];
    [UIView transitionWithView:self.btn10
                         duration:1.5
                          options:UIViewAnimationOptionTransitionCrossDissolve
                       animations:^{
        int i =1;
        [self.btn10 setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d",i]] forState:UIControlStateNormal];
        self.btn10.tag=i;
                       }
                       completion:nil];

}

- (IBAction)btnfkclick:(UIButton *)sender {
    
   
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
                if (sender.tag==1) {
                    NSMutableArray *dmx = [defaults objectForKey:@"dmx"];
                   // NSLog(@"%@",dmx);
                    self.stringtext=dmx[arc4random_uniform(dmx.count)];
                    //[sender setTitle:str forState:UIControlStateNormal];
                    sender.tag=3;
                    
                    [sender setBackgroundImage:[UIImage imageNamed:@"3"] forState:UIControlStateNormal];
                }else if(sender.tag==0){
                    NSMutableArray *dmx = [defaults objectForKey:@"zxh"];
                    self.stringtext=dmx[arc4random_uniform(dmx.count)];
                    sender.tag=4;
                    [sender setBackgroundImage:[UIImage imageNamed:@"4"] forState:UIControlStateNormal];
                   
                }else if(sender.tag==3){
                    NSMutableArray *dmx = [defaults objectForKey:@"dmx"];
                    self.stringtext=dmx[arc4random_uniform(dmx.count)];
                    [self uiviewaler];
                    
                }else if(sender.tag==4){
                    NSMutableArray *dmx = [defaults objectForKey:@"zxh"];
                    self.stringtext=dmx[arc4random_uniform(dmx.count)];
                    [self uiviewaler];
                }
   
    
}


- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)Gameclick:(UIButton *)sender {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Title" message:@"re you sure you want to randomize again?" preferredStyle:UIAlertControllerStyleAlert];

    // 创建取消按钮
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
      
    }];

    // 创建确定按钮
    UIAlertAction *confirmAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self loadimageview];
    }];

    // 将按钮添加到提示框中
    [alertController addAction:cancelAction];
    [alertController addAction:confirmAction];

    // 显示提示框
    [self presentViewController:alertController animated:YES completion:nil];
   
}

- (IBAction)Rest:(UIButton *)sender {
    [self uiviewaler];
   
    
}
-(void)uiviewaler{
    if ([self.stringtext isEqual:@""]) {
        self.stringtext=@"There is currently no penalty please click on the card";
    }
    // 获取屏幕的宽度和高度
    CGFloat screenWidth = UIScreen.mainScreen.bounds.size.width;
    CGFloat screenHeight = UIScreen.mainScreen.bounds.size.height;
    
    self.alertview=[[UIView alloc]initWithFrame:CGRectMake(0,0,screenWidth,screenHeight)];
    [self.alertview setBackgroundColor:[UIColor clearColor]];
    UIImageView * image=[[UIImageView alloc]initWithFrame:CGRectMake((screenWidth-400)/2,  (screenHeight-200)/2,400, 200)];
    [image setImage:[UIImage imageNamed:@"11434"]];
    [self.alertview addSubview:image];
    [self.view bringSubviewToFront:self.alertview];
    
    // 创建一个 UILabel
    UILabel *label = [[UILabel alloc] init];
    //label.backgroundColor = [UIColor blueColor];
    label.text = self.stringtext; // 设置文本内容
    label.numberOfLines = 0; // 允许换行
    label.textAlignment = NSTextAlignmentCenter; // 文本居中对齐
    label.textColor=[UIColor whiteColor];
    [image addSubview:label];

    // 使用 Masonry 设置约束
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(image); // 水平居中
        make.centerY.equalTo(image); // 垂直居中
        make.left.equalTo(image).offset(50); // 距离左边缘 50 像素
        make.right.equalTo(image).offset(-50); // 距离右边缘 50 像素
//        make.top.equalTo(view).offset(50);
//        make.bottom.equalTo(view).offset(50);
    }];
    
    // 创建一个 UIButton
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.backgroundColor = [UIColor clearColor];
    [button setTitle:@"Back" forState:UIControlStateNormal]; // 设置按钮文字
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal]; // 设置按钮文字颜色
    [button setBackgroundImage:[UIImage imageNamed:@"112343"] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClicked) forControlEvents:UIControlEventTouchUpInside]; // 添加点击方法
    [self.alertview addSubview:button];

    // 使用 Masonry 设置约束
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.alertview); // 水平居中
        make.bottom.equalTo(self.alertview).offset(-40); // 距离下边缘 10 像素
        make.height.equalTo(@40); // 高度为 40
        make.width.equalTo(@150); // 宽度为 150
    }];
    
    [UIView animateWithDuration:1.0 animations:^{
        [self.view addSubview:self.alertview];
    }];
   
    
}
-(void)buttonClicked{
    if (self.viewhide==YES) {
        [UIView animateWithDuration:1.0 animations:^{
            self.alertview.hidden=YES;
            self.viewhide=YES;
        }];
       
    }else{
        [UIView animateWithDuration:1.0 animations:^{
           
        }];
        
    }
    
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

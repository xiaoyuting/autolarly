//
//  ViewController.m
//  hengshuping
//
//  Created by GM on 2017/12/15.
//  Copyright © 2017年 GM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong)UIButton  * btn ;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 self. btn = [[UIButton alloc]initWithFrame:CGRectMake(20, 20, self.view.frame.size.width-40, 100)];
    self.btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.btn];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
// 设备支持方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
}
// 默认方向
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return UIInterfaceOrientationPortrait; // 或者其他值 balabala~
}

// 开启自动转屏
- (BOOL)shouldAutorotate {
    return YES;
}
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    
    if (size.width > size.height) { // 横屏
        // 横屏布局 balabala
        self.btn.frame = CGRectMake(20, 20,size.width-40 , 100);
        NSLog(@"横屏布局");
    } else {
        // 竖屏布局 balabala
        NSLog(@"竖屏布局");
        self.btn.frame = CGRectMake(20, 20,size.width-40 , 100);
    }
}

- (void)layoutSubviews {
 
    // 通过状态栏电池图标来判断屏幕方向
    if ([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationMaskPortrait) {
        // 竖屏 balabala
    } else {
        // 横屏 balabala
    }
}


@end

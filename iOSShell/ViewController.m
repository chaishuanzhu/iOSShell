//
//  ViewController.m
//  iOSShell
//
//  Created by 柴栓柱 on 2018/8/20.
//  Copyright © 2018年 Monkey. All rights reserved.
//

#import "ViewController.h"
#import "hLVbAwClassRenameViewControlleroAPRus.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

// 这个方法名已经被宏定义给替换了
- (void)test1 {
    
}

- (IBAction)nextVC:(UIButton *)sender {
    
    hLVbAwClassRenameViewControlleroAPRus *vc = [[hLVbAwClassRenameViewControlleroAPRus alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

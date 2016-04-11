//
//  SecondViewController.m
//  TData
//
//  Created by xy on 16/4/11.
//  Copyright © 2016年 yuenvshen. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)viewDidAppear:(BOOL)animated {
    
    long l = random();
    NSNumber *num = [NSNumber numberWithLong:l];
    
    [_contentMDict setValue:num forKey:@"v3"];

    NSLog(@"SecondViewController :%@", _contentMDict);
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
- (IBAction)back:(id)sender {
    
    [self.view removeFromSuperview];
    [self removeFromParentViewController];
}

@end

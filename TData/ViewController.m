//
//  ViewController.m
//  TData
//
//  Created by xy on 16/4/11.
//  Copyright © 2016年 yuenvshen. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController () {
    NSMutableArray * contentMArray ;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    contentMArray= [[NSMutableArray alloc] init];
    
    NSMutableDictionary *d1 = [NSMutableDictionary dictionary];
    [d1 setValue:@"v1" forKey:@"k1"];
    [d1 setValue:@"v2" forKey:@"k3"];
    
    [contentMArray addObject:d1];

}

- (void)viewDidAppear:(BOOL)animated {
    
    NSLog(@"%@", contentMArray);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
     SecondViewController *v =   [segue destinationViewController];
     v.contentMDict = contentMArray[0];
     NSLog(@"%@", v);
 }
 




@end

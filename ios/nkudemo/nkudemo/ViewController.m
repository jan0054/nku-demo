//
//  ViewController.m
//  nkudemo
//
//  Created by Yueh-yi on 11/18/15.
//  Copyright © 2015 Tapgo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.welcomeLabel.text = @"HIHI";
    [self.goButton setTitle:@"GOGO" forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goButtonTap:(UIButton *)sender{
    self.welcomeLabel.text = @"!!!!!";
}
@end

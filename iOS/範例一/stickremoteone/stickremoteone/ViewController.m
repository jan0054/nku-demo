//
//  ViewController.m
//  stickremoteone
//
//  Created by Yueh-yi on 11/17/15.
//  Copyright © 2015 Tapgo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//"viewDidLoad"顧名思義, 是這個畫面載入完成後會執行的method
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.welcomeLabel.text = @"hihihihihihi!!";  //除了在storyboard直接改變標籤的文字之外, 我們也能在程式內直接修改它
    
}

//這邊是按鈕點擊事件的觸發點
- (IBAction)welcomeButtonTap:(UIButton *)sender {
    [self performSegueWithIdentifier:@"showdetailsegue" sender:NULL];  //我們從這個畫面(self)執行名為"showdetailsegue"這個轉場, 到DetailViewController這個畫面
}

@end

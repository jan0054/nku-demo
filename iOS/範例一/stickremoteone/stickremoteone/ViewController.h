//
//  ViewController.h
//  stickremoteone
//
//  Created by Yueh-yi on 11/17/15.
//  Copyright © 2015 Tapgo. All rights reserved.
//

#import <UIKit/UIKit.h>

//我們在這邊宣告一個按鈕(welcomeButton)以及一個標籤(welcomeLabel)，同時宣告一個按鈕點擊事件(welcomeButtonTap)

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *welcomeLabel;
@property (weak, nonatomic) IBOutlet UIButton *welcomeButton;
- (IBAction)welcomeButtonTap:(UIButton *)sender;

//小提示：從storyboard ctrl-拖拉 到這個檔案就能夠把介面上的東西和程式連在一起

@end


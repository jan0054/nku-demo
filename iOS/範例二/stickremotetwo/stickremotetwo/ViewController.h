//
//  ViewController.h
//  stickremotetwo
//
//  Created by Yueh-yi on 11/17/15.
//  Copyright © 2015 Tapgo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//我們在這邊定義了一些東西："新增"按鈕的觸發事件, 到清單畫面的按鈕觸發事件, 以及兩個文字輸入元件(UITextField)
@property (weak, nonatomic) IBOutlet UITextField *nameInput;
- (IBAction)newChannelButtonTap:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextField *codenameInput;
- (IBAction)listButtonTap:(UIButton *)sender;


@end


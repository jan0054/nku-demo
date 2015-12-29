//
//  DetailViewController.h
//  stickremoteone
//
//  Created by Yueh-yi on 11/17/15.
//  Copyright © 2015 Tapgo. All rights reserved.
//

#import <UIKit/UIKit.h>

//第二個畫面我們要示範的包括"delegate"這個概念, 看到下方我們導入<UIImagePickerControllerDelegate>，這是用來啟動相機/選取圖片所用到的delegate。
//我們上課的時候還有額外介紹過處理清單(UITabelView)所使用的delegate

@interface DetailViewController : UIViewController<UIImagePickerControllerDelegate>

//這邊宣告兩個東西：一個按鈕的觸發事件, 以及一個放圖片的UIImageView元素
- (IBAction)shutterButtonTap:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIImageView *photoPreview;

@end

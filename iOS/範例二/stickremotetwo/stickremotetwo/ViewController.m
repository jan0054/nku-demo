//
//  ViewController.m
//  stickremotetwo
//
//  Created by Yueh-yi on 11/17/15.
//  Copyright © 2015 Tapgo. All rights reserved.
//

#import "ViewController.h"
#import "Parse.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

//"新增"按鈕的觸發點
- (IBAction)newChannelButtonTap:(UIButton *)sender {
    
    NSString *nameString = self.nameInput.text;          //把nameInput輸入框的文字抓出來塞進一個叫做nameString的字串
    NSString *codenameString = self.codenameInput.text;  //把codenameInput輸入框的文字抓出來塞進一個叫做codenameString的字串
    
    PFObject *channel = [PFObject objectWithClassName:@"Channel"];  //建立一個Parse雲端物件, 這個物件屬於"Channel"類別, 但這只是我隨意取的名稱而已, 沒有特別意義
    channel[@"name"] = nameString;                                  //把剛才的nameString字串寫入這個物件的"name"欄位
    channel[@"codename"] = codenameString;                          //把另一個codenameString字串寫入物件的"codename"欄位
    //小提醒：這些物件的類別名稱跟他們有什麼欄位都可以在Parse.com的後台自己設定!
    
    //資料寫完後, 我們把這個物件上傳到雲端存檔, 這邊值得注意的是, 上傳東西需要時間, 為了不讓整個App在等待的時候卡住, 我們這邊使用的是非同步的方法, 換言之，執行到這邊後，他會跳過這整個區塊繼續往下跑, 在上傳完成後, 才會回頭執行裡面的內容喔!
    
    [channel saveInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
        //終於完成了,接下來要...
        if (error == nil)  //..檢查看有沒有錯誤 (錯誤error == nil 就是沒有錯誤)
        {
            //成功了!
            NSLog(@"Channel created");  //做個log紀錄
            //下面跳出一個警示訊息跟使用者說上傳成功
            [[[UIAlertView alloc] initWithTitle:@"Success"
                                        message:@"Your channel has been created!"
                                       delegate:nil
                              cancelButtonTitle:@"Done"
                              otherButtonTitles:nil] show];
        }
        else
        {
            //如果有出錯就會跑到這邊, 在真正的App的話我們就得處理錯誤做出適當的回應..
        }
    }];
}

//到清單畫面的觸發點
- (IBAction)listButtonTap:(UIButton *)sender {
    [self performSegueWithIdentifier:@"demosegue" sender:nil];  //這個在範例一應該都看過了吧?
}

@end

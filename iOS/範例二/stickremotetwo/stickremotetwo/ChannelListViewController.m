//
//  ChannelListViewController.m
//  stickremotetwo
//
//  Created by Yueh-yi on 11/17/15.
//  Copyright © 2015 Tapgo. All rights reserved.
//

#import "ChannelListViewController.h"
#import "Parse.h"

@interface ChannelListViewController ()

@end

//我們宣告一個可修改的陣列叫做channelArray, 用來存放我們上雲端抓資料的結果
NSMutableArray *channelArray;

@implementation ChannelListViewController

//這個畫面載入後會直接執行:
- (void)viewDidLoad {
    [super viewDidLoad];
    
    channelArray = [[NSMutableArray alloc] init];   //將這個陣列起始化
    
    PFQuery *query = [PFQuery queryWithClassName:@"Channel"];   //這邊是Parse雲端查詢的語法：我們首先要建立一個query(查詢), 並且指定這個查詢是要找"Channel"這個類別的物件
    [query orderByAscending:@"name"];   //這是Parse的功能, 他讓我們指定查回來的結果依照"name"這個欄位做排序
    //設定好之後, 執行這個查詢。跟上傳存檔一樣, 這也是非同步的作業, 確保等待時間你的App不會卡死
    [query findObjectsInBackgroundWithBlock:^(NSArray * _Nullable objects, NSError * _Nullable error) {
        //查詢好了：
        if (error == nil) //如果沒有錯誤的話...
        {
            NSLog(@"Success!");
            channelArray = [objects mutableCopy];  //把查詢結果(objects)塞進我們一開始定義的陣列channelArray
            [self.channelTable reloadData];        //並且跟清單說,"誒你可以重新整理一下, 有新資料"
        }
        else
        {
            //有錯誤！怎麼辦?
            NSLog(@"Oh No!");
        }
    }];
}

#pragma mark - TableView

//這邊是清單的delegate部份：

//這個清單有幾個區塊呢？1
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

//每個區塊有幾列呢？回傳channelArray陣列的大小給他
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [channelArray count];
}

//每一列放什麼東西呢？
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"democell"];  //這行的"democell"在Storyboard上面, 點擊清單的cell來設定
    
    PFObject *channelObj = [channelArray objectAtIndex:indexPath.row];     //indexPath是清單中每一列的編號, 由於我們只有一個section, indexPath.row就是很單純的代表"這是第幾個", 所以我們用它把channelArray裡面存放的"第幾個"元素抓出來
    NSString *nameString = channelObj[@"name"];         //有了這個Parse物件, 我們再把他的name欄位拉出來, 塞進一個字串
    NSString *codenameString = channelObj[@"codename"]; //把codename欄位拉出來塞進另一個字串
    
    //最後, 把這兩個字串放進cell的標籤中
    cell.textLabel.text = nameString;
    cell.detailTextLabel.text = codenameString;
    
    return cell;  //大功告成了!
}

//某一列被點擊的時候要做什麼？
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //目前沒有做什麼, 只是把第n列的"n"顯示一下
    NSLog(@"Selected: %li", (long)indexPath.row);
}


@end

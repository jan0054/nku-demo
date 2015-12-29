//
//  ChannelListViewController.h
//  stickremotetwo
//
//  Created by Yueh-yi on 11/17/15.
//  Copyright © 2015 Tapgo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChannelListViewController : UIViewController

//這邊要宣告的元件就只有一個清單, 我們叫他channelTable
@property (weak, nonatomic) IBOutlet UITableView *channelTable;

@end

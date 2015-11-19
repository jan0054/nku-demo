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
NSMutableArray *channelArray;

@implementation ChannelListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    channelArray = [[NSMutableArray alloc] init];
    PFQuery *query = [PFQuery queryWithClassName:@"Channel"];
    [query orderByAscending:@"name"];
    [query findObjectsInBackgroundWithBlock:^(NSArray * _Nullable objects, NSError * _Nullable error) {
        //done, do stuff here
        if (error == nil)
        {
            NSLog(@"Success!");
            channelArray = [objects mutableCopy];
            [self.channelTable reloadData];
        }
        else
        {
            //error handling
            NSLog(@"Oh No!");
        }
    }];
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

#pragma mark - TableView

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [channelArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"democell"];
    
    PFObject *channelObj = [channelArray objectAtIndex:indexPath.row];
    NSString *nameString = channelObj[@"name"];
    NSString *codenameString = channelObj[@"codename"];
    
    cell.textLabel.text = nameString;
    cell.detailTextLabel.text = codenameString;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Selected: %li", (long)indexPath.row);
}


@end

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
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)newChannelButtonTap:(UIButton *)sender {
    NSString *nameString = self.nameInput.text;
    NSString *codenameString = self.codenameInput.text;  //need some string handling here
    
    PFObject *channel = [PFObject objectWithClassName:@"Channel"];
    channel[@"name"] = nameString;
    channel[@"codename"] = codenameString;
    [channel saveInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
        //done, do whatever here
        if (error == nil)
        {
            //success
            NSLog(@"Channel created");
            [[[UIAlertView alloc] initWithTitle:@"Success"
                                        message:@"Your channel has been created!"
                                       delegate:nil
                              cancelButtonTitle:@"Done"
                              otherButtonTitles:nil] show];
        }
        else
        {
            //handle error
        }
    }];
}

//after button tap, disable double tapping
//clear textfield
//NSLocalizedString(@"alert_done", nil)

- (IBAction)listButtonTap:(UIButton *)sender {
    [self performSegueWithIdentifier:@"channellistsegue" sender:nil];
}

@end

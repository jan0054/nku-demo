//
//  ViewController.h
//  stickremotetwo
//
//  Created by Yueh-yi on 11/17/15.
//  Copyright © 2015 Tapgo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameInput;
- (IBAction)newChannelButtonTap:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextField *codenameInput;
- (IBAction)listButtonTap:(UIButton *)sender;


@end


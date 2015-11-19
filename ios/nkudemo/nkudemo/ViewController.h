//
//  ViewController.h
//  nkudemo
//
//  Created by Yueh-yi on 11/18/15.
//  Copyright © 2015 Tapgo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *welcomeLabel;
@property (weak, nonatomic) IBOutlet UIButton *goButton;

- (IBAction)goButtonTap:(UIButton *)sender;

@end


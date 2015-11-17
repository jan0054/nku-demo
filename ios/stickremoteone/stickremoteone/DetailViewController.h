//
//  DetailViewController.h
//  stickremoteone
//
//  Created by Yueh-yi on 11/17/15.
//  Copyright © 2015 Tapgo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController<UIImagePickerControllerDelegate>
- (IBAction)shutterButtonTap:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIImageView *photoPreview;

@end

//
//  DetailViewController.m
//  stickremoteone
//
//  Created by Yueh-yi on 11/17/15.
//  Copyright © 2015 Tapgo. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //啟動這個畫面, 目前這邊我們沒有做任何事
}

//按鈕觸發事件
- (IBAction)shutterButtonTap:(UIButton *)sender {
    [self useLibrary];   //執行下面我們自訂的"useLibrary"
}

//使用相機(這個在模擬器上無法使用!!一定得用實體的iPhone或是iPad)
- (void)useCamera {
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;  //"用相機"就是這行指定的
    [self presentViewController:picker animated:YES completion:NULL];
}

//使用圖片庫
- (void)useLibrary {
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;  //"用圖片庫"就是這行指定的
    [self presentViewController:picker animated:YES completion:NULL];
}

//這個就是相機與圖片庫的delegate的一部份。當你選完一張照片之後，選圖片或照相的程序就會問說"ok, 使用者選好了, 現在接著要做什麼?"，並且照著下面所寫的去做
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage *selectedImage = info[UIImagePickerControllerEditedImage];  //宣告一個圖片變數, 並且把選到的照片塞進來
    self.photoPreview.image = selectedImage;                            //把上面的圖片放進畫面上的ImageView元素
    [picker dismissViewControllerAnimated:YES completion:NULL];         //搞定之後, 就把照相/圖片庫的介面(picker)給關掉!
    
}

//這也是delegate。看名字就知道, 上面處理的是選取完成，這邊是使用者取消的狀況
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [picker dismissViewControllerAnimated:YES completion:NULL];         //單純關掉, 沒做什麼其他的事..
}

@end

//
//  ViewController.h
//  meWorks
//
//  Created by Sanchit on 16/08/12.
//  Copyright (c) 2012 ThoughtWorks Technologies (India) Pvt. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <ZBarReaderDelegate, UIAlertViewDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *scannedImage;
@property (strong, nonatomic) IBOutlet UITextView *scannedText;
- (IBAction)scanButton:(id)sender;

@end

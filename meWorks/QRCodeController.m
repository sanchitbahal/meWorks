//
//  QRCodeController.m
//  meWorks
//
//  Created by Sanchit on 17/08/12.
//  Copyright (c) 2012 ThoughtWorks Technologies (India) Pvt. Ltd. All rights reserved.
//

#import "QRCodeController.h"
#import "Phone.h"
#import "QRCodeManager.h"

@implementation QRCodeController

Phone *phone;

- (id)init
{
    self = [super init];
    phone = [Phone new];
    
    return self;
}

- (UIViewController *)prepareQrCodeReader
{
    ZBarReaderViewController *reader = [ZBarReaderViewController new];
    reader.readerDelegate = self;
    reader.supportedOrientationsMask = ZBarOrientationMaskAll;
    reader.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    ZBarImageScanner *scanner = reader.scanner;
    [scanner setSymbology: ZBAR_I25 config:ZBAR_CFG_ENABLE to:0];
    
    return reader;
}

- (NSString *)getScannedCode:(NSDictionary *)info
{
    id<NSFastEnumeration> results = [info objectForKey: ZBarReaderControllerResults];
    ZBarSymbol *symbol = nil;
    for(symbol in results)
        break;
    
    return symbol.data;
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    NSString *scannedCode = [self getScannedCode:info];
    BOOL isMeetingRoomQrCode = [QRCodeManager isMeetingRoomQrCode:scannedCode];
    //scannedImage.image = [info objectForKey: UIImagePickerControllerOriginalImage];
    
    [picker dismissModalViewControllerAnimated:YES];
    
    if (isMeetingRoomQrCode)
    {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:scannedCode message:@"Turn vibration ON?" delegate:self cancelButtonTitle:@"No" otherButtonTitles:@"Yes", nil];
        [alertView show];
    }
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 1)
    {
        NSLog(@"Button YES pressed.");
        [phone turnVibrationOn];
    }
}

@end

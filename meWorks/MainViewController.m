//
//  ViewController.m
//  meWorks
//
//  Created by Sanchit on 16/08/12.
//  Copyright (c) 2012 ThoughtWorks Technologies (India) Pvt. Ltd. All rights reserved.
//

#import "MainViewController.h"
#import "QRCodeController.h"

@interface MainViewController ()

@end

@implementation MainViewController
@synthesize scannedImage;
@synthesize scannedText;

QRCodeController *qrCodeController;

- (void)viewDidLoad
{
    [super viewDidLoad];
    qrCodeController = [QRCodeController new];
}

- (void)viewDidUnload
{
    [self setScannedImage:nil];
    [self setScannedText:nil];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)scanButton:(id)sender {
    // URL to generate QR Code
    // https://chart.googleapis.com/chart?chs=150x150&cht=qr&chl=Hello%20World
    NSLog(@"Scan button tapped.");
    
    UIViewController *reader = [qrCodeController prepareQrCodeReader];
    [self presentModalViewController:reader animated:YES];
}

@end

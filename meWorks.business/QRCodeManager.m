//
//  meWorks_business.m
//  meWorks.business
//
//  Created by Sanchit on 21/08/12.
//  Copyright (c) 2012 ThoughtWorks Technologies (India) Pvt. Ltd. All rights reserved.
//

#import "QRCodeManager.h"

@implementation QRCodeManager

+ (BOOL)isMeetingRoomQrCode:(NSString *)scannedQrCode
{
    NSArray *meetingRooms = [NSArray arrayWithObjects:@"Chandni Chowk", @"Jantar Mantar", nil];
    return [meetingRooms containsObject:scannedQrCode];
}

@end

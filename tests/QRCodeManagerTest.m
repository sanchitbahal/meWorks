//
//  QRCodeControllerTest.m
//  meWorks
//
//  Created by Sanchit on 21/08/12.
//  Copyright (c) 2012 ThoughtWorks Technologies (India) Pvt. Ltd. All rights reserved.
//

#import "QRCodeManagerTest.h"
#import "QRCodeManager.h"

@implementation QRCodeManagerTest

- (void)testForAValidMeetingRoom
{
    BOOL isMeetingRoomQrCode = [QRCodeManager isMeetingRoomQrCode:@"foo"];
    GHAssertFalse(isMeetingRoomQrCode, @"Assertion failed");
}

@end

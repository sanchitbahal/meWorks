//
//  meWorks_business.h
//  meWorks.business
//
//  Created by Sanchit on 21/08/12.
//  Copyright (c) 2012 ThoughtWorks Technologies (India) Pvt. Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QRCodeManager : NSObject

+ (BOOL)isMeetingRoomQrCode:(NSString *)scannedQrCode;

@end

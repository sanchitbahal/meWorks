//
//  Phone.h
//  meWorks
//
//  Created by Sanchit on 17/08/12.
//  Copyright (c) 2012 ThoughtWorks Technologies (India) Pvt. Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Phone : NSObject <ZBarReaderDelegate>
- (void)turnVibrationOn;
@end

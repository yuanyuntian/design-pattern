//
//  Phone.m
//  Pattern
//
//  Created by yuan on 2019/7/18.
//  Copyright © 2019年 xx. All rights reserved.
//

#import "Phone.h"

@implementation Phone

- (void)launchPhone{
    if (self.simCard) {
        [self.simCard getSIMInfo];
    }
}
@end

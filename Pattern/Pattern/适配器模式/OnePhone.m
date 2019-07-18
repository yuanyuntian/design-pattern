//
//  OnePhone.m
//  Pattern
//
//  Created by yuan on 2019/7/18.
//  Copyright © 2019年 xx. All rights reserved.
//

#import "OnePhone.h"

@implementation OnePhone

- (void)setSimCard:(SIMCard *)simCard {
    if ([simCard respondsToSelector:@selector(normalSize)]) {
        [simCard performSelector:@selector(normalSize)];
    }
}
@end

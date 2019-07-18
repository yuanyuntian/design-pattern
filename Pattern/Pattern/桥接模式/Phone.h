//
//  Phone.h
//  Pattern
//
//  Created by yuan on 2019/7/18.
//  Copyright © 2019年 xx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SIMCard.h"

NS_ASSUME_NONNULL_BEGIN


/**
 手机抽象类
 */
@interface Phone : NSObject

//持有 SIM 卡
@property (nonatomic, strong) SIMCard *simCard;
// 启动手机方法
- (void)launchPhone;
@end

NS_ASSUME_NONNULL_END

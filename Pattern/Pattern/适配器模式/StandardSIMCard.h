//
//  StandardSIMCard.h
//  Pattern
//
//  Created by yuan on 2019/7/18.
//  Copyright © 2019年 xx. All rights reserved.
//

#import "SIMCard.h"
#import "StandardSIMSizeProtocol.h"
NS_ASSUME_NONNULL_BEGIN


/**
 标准卡 遵循标准协议
 */
@interface StandardSIMCard : SIMCard<StandardSIMSizeProtocol>

@end

NS_ASSUME_NONNULL_END

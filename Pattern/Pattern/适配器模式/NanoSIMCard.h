//
//  NanoSIMCard.h
//  Pattern
//
//  Created by yuan on 2019/7/18.
//  Copyright © 2019年 xx. All rights reserved.
//

#import "SIMCard.h"
#import "NanoSIMSizeProtocol.h"
NS_ASSUME_NONNULL_BEGIN


/**
 nano 卡遵循 nano 协议
 */
@interface NanoSIMCard : SIMCard<NanoSIMSizeProtocol>

@end

NS_ASSUME_NONNULL_END

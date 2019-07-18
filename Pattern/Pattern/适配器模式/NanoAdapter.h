//
//  NanoAdapter.h
//  Pattern
//
//  Created by yuan on 2019/7/18.
//  Copyright © 2019年 xx. All rights reserved.
//

#import "SIMCard.h"
#import "StandardSIMSizeProtocol.h"
#import "NanoSIMCard.h"
NS_ASSUME_NONNULL_BEGIN

@interface NanoAdapter : SIMCard<StandardSIMSizeProtocol>
@property (nonatomic, strong) NanoSIMCard *nanoSIMCard;
@end

NS_ASSUME_NONNULL_END

//
//  SIMCardProtocal.h
//  Pattern
//
//  Created by yuan on 2019/7/18.
//  Copyright © 2019年 xx. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


/**
 手机卡SIM协议
 */
@protocol SIMCardProtocal <NSObject>
//读取 SIM 卡信息接口
-(void)getSIMInfo;

@end

NS_ASSUME_NONNULL_END

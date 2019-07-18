//
//  ViewController.m
//  Pattern
//
//  Created by yuan on 2019/7/18.
//  Copyright © 2019年 xx. All rights reserved.
//

#import "ViewController.h"
#import "iPhone.h"
#import "miPhone.h"

#import "UnicomSIMCard.h"
#import "MobileSIMCard.h"
#import "StandardSIMCard.h"
#import "NanoSIMCard.h"
#import "OnePhone.h"

#import "NanoAdapter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)factoryPattern{
    // 联通卡
    UnicomSIMCard *unicomSim = [UnicomSIMCard new];
    // 移动卡
    MobileSIMCard *mobileSim = [MobileSIMCard new];
    
    // 小米手机安装上联调卡
    miPhone *mi9 = [miPhone new];
    [mi9 setSimCard:unicomSim];
    
    // iPhone 安装上移动卡
    iPhone *iPhoneX = [iPhone new];
    [iPhoneX setSimCard:mobileSim];
    
    // 开机
    [mi9 launchPhone];
    [iPhoneX launchPhone];

}

-(void)AdapterPattern{
    // 标准卡
    StandardSIMCard *standardCard = [StandardSIMCard new];
    // Nano 卡
    NanoSIMCard *nanoCard = [NanoSIMCard new];
    
    // 创建大卡槽手机 插入卡后会调用 normalSize() 方法
    OnePhone *onePhone = [OnePhone new];
    
    // 标准卡 遵循 StandardSIMSizeProtocol，协议 实现了 normalSize() 方法
    [onePhone setSimCard:standardCard];

    // Nano 遵循 NanoSIMSizeProtocol 协议，并没有实现了 normalSize() 方法，所以会报错
    [onePhone setSimCard:nanoCard];

    // 加一个 Nano 卡套
    NanoAdapter *nanoAdapter = [NanoAdapter new];
    // 卡套持有 Nano 卡实例，方便获取 Nano 卡信息
    nanoAdapter.nanoSIMCard = nanoCard;
    
    // 将卡套放入手机， 卡套遵循 StandardSIMSizeProtocol，实现了 normalSize() 方法
    [onePhone setSimCard:nanoAdapter];

}


@end

//
//  Tool.m
//  swiftTest
//
//  Created by 张国兵 on 15/11/19.
//  Copyright © 2015年 zhangguobing. All rights reserved.
//

#import "Tool.h"
#import "swiftTest-swift.h"
@implementation Tool

+(void)alert{
    
    UIAlertView*al=[[UIAlertView alloc]initWithTitle:@"hello word" message:nil delegate:nil cancelButtonTitle:nil otherButtonTitles:@"知道了", nil];
    [al show];
    
}
+(void)helloWord{
    
    ViewController*vc=[[ViewController alloc]init];
    [vc swiftFunc];
   
}
@end

//
//  SendButton.h
//  moreInfromationPage
//
//  Created by muzi_xin on 15/10/10.
//  Copyright © 2015年 muzi_xin. All rights reserved.
//
/**
 
 * 发送按钮：
        
        点击以后出现倒计时 60秒，可以在代码里里买呢修改倒计时总时间，出现倒计时的时候按钮无法点击，
 
 *  使用方法如下：
        先定义，在绑定方法传参并执行下面方法
         [butt sendUrl:@"http://app-test.kaipao.cc/v1/user/tcode" parameters:paramete];（post请求：网址／参数）

 */

#import <UIKit/UIKit.h>

@interface SendButton : UIButton
//发送网络请求，开始按钮倒计时
//- (void)sendUrl:(NSString *)url parameters:(NSDictionary *)paramete;
- (void)sendUrl;

- (void)stopTimer;
@end

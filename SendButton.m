//
//  SendButton.m
//  moreInfromationPage
//
//  Created by muzi_xin on 15/10/10.
//  Copyright © 2015年 muzi_xin. All rights reserved.
//

#import "SendButton.h"
#import "AFNetworking.h"
//#import "MyTool.h"

@implementation SendButton

{
    NSTimer     * _timer ;
    int     _deadline ;
}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.titleLabel.font = [UIFont systemFontOfSize:14];
        [self buttonNormal];
        _deadline = 60;
    }
    return self;
}
//发送网络请求，开始按钮倒计时
//- (void)sendUrl:(NSString *)url parameters:(NSDictionary *)paramete
- (void)sendUrl
{
    [self buttonUPIns];
        //设置定时器，倒计时60秒
        NSThread *thread = [[NSThread alloc] initWithTarget:self selector:@selector(oneThread) object:nil];
        [thread start];
        self.userInteractionEnabled = 0;
}
//分线程
- (void)oneThread
{
    _timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerChange) userInfo:nil repeats:1];
    [_timer fire];
    [[NSRunLoop currentRunLoop] run];
}
- (void)timerChange
{
    _deadline -= 1;
    if (_deadline == 0) {
        [self performSelectorOnMainThread:@selector(stopTimer) withObject:nil waitUntilDone:NO];
    }
    else
    {
        [self performSelectorOnMainThread:@selector(changeButton) withObject:nil waitUntilDone:NO];
    }
}
- (void)stopTimer
{
    [_timer invalidate];
    _timer = nil;
    self.userInteractionEnabled = 1;
    _deadline = 60;
    [self buttonNormal];
}
- (void)changeButton
{
    [self setTitle:[NSString stringWithFormat:@"发送验证码%ds",_deadline] forState:UIControlStateNormal];
    
}

- (void)buttonNormal{
    self.userInteractionEnabled = 1;
    [self setTitle:@"获取验证码" forState:UIControlStateNormal];
    [self setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    self.backgroundColor = [UIColor whiteColor];
}

- (void)buttonUPIns{
    self.userInteractionEnabled = 0;
//    [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    self.backgroundColor = [UIColor grayColor];
}
@end

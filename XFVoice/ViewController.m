//
//  ViewController.m
//  XFVoice
//
//  Created by wangxuefeng on 16/6/4.
//  Copyright © 2016年 wangxuefeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController
- (IBAction)startListing:(id)sender {
    //3.启动识别服务
    [_iFlySpeechRecognizer startListening];
}
- (IBAction)stopListening:(id)sender {
    
    [_iFlySpeechRecognizer stopListening];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    _iFlySpeechRecognizer =  [IFlySpeechRecognizer sharedInstance]; //设置听写模式
    
    [_iFlySpeechRecognizer setParameter:@"iat" forKey:[IFlySpeechConstant IFLY_DOMAIN]];
    
    //2.设置听写参数
    [_iFlySpeechRecognizer setParameter: @"iat" forKey: [IFlySpeechConstant IFLY_DOMAIN]];
    
    //asr_audio_path是录音文件名,设置value为nil或者为空取消保存,默认保存目录在 Library/cache下。
    [_iFlySpeechRecognizer setParameter:@"asrview.pcm" forKey:[IFlySpeechConstant ASR_AUDIO_PATH]];
    
    
    
    _iFlySpeechRecognizer.delegate = self;
    
    
    
}

- (void)onResults:(NSArray *)results isLast:(BOOL)isLast {
    
    NSLog(@"%@",results);
    
    NSMutableString *result = [[NSMutableString alloc] init];
    
    NSDictionary *dic = [results objectAtIndex:0];
    
    for (NSString *key in dic){
        [result appendFormat:@"%@",key];//合并结果
    }

    
    self.textView.text = result;
}

- (void)onBeginOfSpeech {
    NSLog(@"%s",__func__);
}

- (void)onEndOfSpeech {
    NSLog(@"%s",__func__);
}

- (void)onError:(IFlySpeechError *)errorCode {
    NSLog(@"%s %d %@",__func__,errorCode.errorCode, errorCode.errorDesc);
}

@end

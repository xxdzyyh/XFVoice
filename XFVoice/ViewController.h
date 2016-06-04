//
//  ViewController.h
//  XFVoice
//
//  Created by wangxuefeng on 16/6/4.
//  Copyright © 2016年 wangxuefeng. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <iflyMSC/iflyMSC.h>

@interface ViewController : UIViewController <IFlySpeechRecognizerDelegate> {
    
   
}
//不带界面的识别对象
@property (strong, nonatomic) IFlySpeechRecognizer *iFlySpeechRecognizer;

@end


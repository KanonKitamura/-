//
//  ViewController.h
//  太鼓
//
//  Created by kanon kitamura on 2015/03/14.
//  Copyright (c) 2015年 myname. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController
    
@property AVAudioPlayer *taiko;

- (IBAction)playSound;

@end


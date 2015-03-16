//
//  ViewController.m
//  太鼓
//
//  Created by kanon kitamura on 2015/03/14.
//  Copyright (c) 2015年 myname. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    // Do any additional setup after loading the view, typically from a nib.
 
    NSString *path1=[[NSBundle mainBundle]pathForResource:@"taiko" ofType:@"mp3"];
    NSURL *url1=[NSURL fileURLWithPath:path1];
    self.taiko=[[AVAudioPlayer alloc]initWithContentsOfURL:url1 error:NULL];
    
    NSString *path2=[[NSBundle mainBundle]pathForResource:@"taiko03" ofType:@"wav"];
    NSURL *url2=[NSURL fileURLWithPath:path2];
    self.taiko03=[[AVAudioPlayer alloc]initWithContentsOfURL:url2 error:NULL];

}


    - (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





- (IBAction)btn2 {
    if(self.taiko.playing){
        self.taiko.currentTime =0.0;
        
        
    }else{
        [self.taiko play];
        
    }
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
    
   }


- (IBAction)btn {
    if(self.taiko03.playing){
        self.taiko03.currentTime=0.0;
        
    }else{
        [self.taiko03 play];
    }
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
}
@end

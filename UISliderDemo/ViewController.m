//
//  ViewController.m
//  UISliderDemo
//
//  Created by Hoàng Tiến on 10/2/15.
//  Copyright © 2015 Hoàng Tiến. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSTimer *_timer;
    
    __weak IBOutlet UISlider *slider;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.2
                                              target:self
                                            selector:@selector(onTimer)
                                            userInfo:nil
                                             repeats:true];
    
    
    slider.transform = CGAffineTransformMakeRotation(M_PI_2);
    slider.tintColor = [UIColor redColor];
    slider.thumbTintColor = [UIColor blackColor];
}

-(void) onTimer {
    slider.value -= 0.05;
    if (slider.value >= 1.0) {
        slider.value = 0 ;
        [_timer invalidate];
    }
}


@end

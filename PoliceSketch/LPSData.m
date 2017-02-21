//
//  LPSData.m
//  PoliceSketch
//
//  Created by Pierre Binon on 2017-02-20.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "LPSData.h"



@implementation LPSData

- (instancetype)init
{
    self = [super init];
    if (self) {
        _eyes = @[[UIImage imageNamed: @"eyes_1.jpg"],
                  [UIImage imageNamed: @"eyes_2.jpg"],
                  [UIImage imageNamed: @"eyes_3.jpg"],
                  [UIImage imageNamed: @"eyes_4.jpg"],
                  [UIImage imageNamed: @"eyes_5.jpg"]];
        
        _currentEyesIndex = 0;
        
        
        _nose = @[[UIImage imageNamed: @"nose_1.jpg"],
                  [UIImage imageNamed: @"nose_2.jpg"],
                  [UIImage imageNamed: @"nose_3.jpg"],
                  [UIImage imageNamed: @"nose_4.jpg"],
                  [UIImage imageNamed: @"nose_5.jpg"]];
        
        _currentNoseIndex = 0;
        
        
        _mouth = @[[UIImage imageNamed: @"mouth_1.jpg"],
                   [UIImage imageNamed: @"mouth_2.jpg"],
                   [UIImage imageNamed: @"mouth_3.jpg"],
                   [UIImage imageNamed: @"mouth_4.jpg"],
                   [UIImage imageNamed: @"mouth_5.jpg"]];
        
        _currentMouthIndex = 0;
    }
    return self;
}


- (UIImage *) forwardEyes {
    
    self.currentEyesIndex += 1;
    if (self.currentEyesIndex >= self.eyes.count)
        self.currentEyesIndex = 0;
    return self.eyes[self.currentEyesIndex];
}


- (UIImage *) backEyes {
    self.currentEyesIndex -= 1;
    if (self.currentEyesIndex <= 0)
        self.currentEyesIndex = self.eyes.count - 1;
    return self.eyes[self.currentEyesIndex];
}


- (UIImage *) forwardNose {
    self.currentNoseIndex += 1;
    if (self.currentNoseIndex >= self.eyes.count)
        self.currentNoseIndex = 0;
    return self.nose[self.currentNoseIndex];
}


- (UIImage *) backNose {
    self.currentNoseIndex -= 1;
    if (self.currentNoseIndex <= 0)
        self.currentNoseIndex = self.nose.count - 1 ;
    return self.nose[self.currentNoseIndex];
}


- (UIImage *) forwardMouth {
    self.currentMouthIndex += 1;
    if (self.currentMouthIndex >= self.mouth.count)
        self.currentMouthIndex = 0;
    return self.mouth[self.currentMouthIndex];
}


- (UIImage *) backMouth {
    self.currentMouthIndex -= 1;
    if (self.currentMouthIndex <= 0)
        self.currentMouthIndex = self.mouth.count - 1;
    return self.mouth[self.currentMouthIndex];
}

@end

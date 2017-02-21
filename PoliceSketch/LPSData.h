//
//  LPSData.h
//  PoliceSketch
//
//  Created by Pierre Binon on 2017-02-20.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface LPSData : NSObject

@property (nonatomic) NSInteger currentEyesIndex;
@property (nonatomic) NSInteger currentNoseIndex;
@property (nonatomic) NSInteger currentMouthIndex;

@property (nonatomic) NSArray<UIImage*> *eyes;
@property (nonatomic) NSArray<UIImage*> *nose;
@property (nonatomic) NSArray<UIImage*> *mouth;

- (UIImage *) forwardEyes;
- (UIImage *) backEyes;
- (UIImage *) forwardNose;
- (UIImage *) backNose;
- (UIImage *) forwardMouth;
- (UIImage *) backMouth;

@end

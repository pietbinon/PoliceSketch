//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"



@interface LPSViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *eyesImageView;
@property (weak, nonatomic) IBOutlet UIImageView *noseImageView;
@property (weak, nonatomic) IBOutlet UIImageView *mouthImageView;

@property (nonatomic) LPSData *lpsdata;


- (IBAction)leftEyesButton:(UIButton *)sender;
- (IBAction)rightEyesButton:(UIButton *)sender;
- (IBAction)leftNoseButton:(UIButton *)sender;
- (IBAction)rightNoseButton:(UIButton *)sender;
- (IBAction)leftMouthButton:(UIButton *)sender;
- (IBAction)rightMouthButton:(UIButton *)sender;



@end








@implementation LPSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Here is where you will create the buttons & image views and add them to the view.
    self.lpsdata = [LPSData new];
}



- (IBAction)leftEyesButton:(UIButton *)sender {
    self.eyesImageView.image = [self.lpsdata backEyes];
}

- (IBAction)rightEyesButton:(UIButton *)sender {
    self.eyesImageView.image = [self.lpsdata forwardEyes];
}

- (IBAction)leftNoseButton:(UIButton *)sender {
    self.noseImageView.image = [self.lpsdata backNose];
}

- (IBAction)rightNoseButton:(UIButton *)sender {
    self.noseImageView.image = [self.lpsdata forwardNose];
}

- (IBAction)leftMouthButton:(UIButton *)sender {
    self.mouthImageView.image = [self.lpsdata backMouth];
}

- (IBAction)rightMouthButton:(UIButton *)sender {
    self.mouthImageView.image = [self.lpsdata forwardMouth];
}
@end

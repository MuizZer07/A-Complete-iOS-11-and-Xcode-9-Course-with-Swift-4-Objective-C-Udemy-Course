//
//  ViewController.m
//  Digital Clock
//
//  Created by InfoSapex Limited on 31/10/19.
//  Copyright © 2019 Muiz Ahmed Khan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self updateTime];
    // Do any additional setup after loading the view.
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTime) userInfo:nil repeats:YES];
    
    self.settingsView.hidden = YES;
    self.settingsButton.alpha = 0.25;
}

-(void) updateTime{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"hh:mm:ss"];
    self.timeLabel.text = [formatter stringFromDate:[NSDate date]];
}

- (IBAction)colorSegment:(id)sender {
    if(self.clockColor.selectedSegmentIndex == 0){
        self.timeLabel.textColor = [UIColor whiteColor];
    }
    else if(self.clockColor.selectedSegmentIndex == 1){
        self.timeLabel.textColor = [UIColor blackColor];
    }
    else if(self.clockColor.selectedSegmentIndex == 2){
        self.timeLabel.textColor = [UIColor greenColor];
    }
    else if(self.clockColor.selectedSegmentIndex == 3){
        self.timeLabel.textColor = [UIColor redColor];
    }
}

- (IBAction)backgroundSegment:(id)sender {
    
    if(self.backgroundColorSegment.selectedSegmentIndex == 0){
        printf("HELLO");
        self.view.backgroundColor = [UIColor blackColor];
    }
    else if(self.backgroundColorSegment.selectedSegmentIndex == 1){
        printf("HELLO1");
        self.view.backgroundColor = [UIColor whiteColor];
    }
    else if(self.backgroundColorSegment.selectedSegmentIndex == 2){
        printf("HELLO2");
        self.view.backgroundColor = [UIColor blueColor];
    }
    else if(self.backgroundColorSegment.selectedSegmentIndex == 3){
        printf("HELLO3");
        self.view.backgroundColor = [UIColor purpleColor];
    }
}

- (IBAction)settingsButton:(id)sender {
    if(self.settingsView.hidden == NO){
        self.settingsView.hidden = YES;
        self.settingsButton.alpha = 0.25;
        [self.settingsButton setTitle:@"Show Settings" forState:UIControlStateNormal];
    }else{
        self.settingsView.hidden = NO;
        self.settingsButton.alpha = 1;
        [self.settingsButton setTitle:@"Hide Settings" forState:UIControlStateNormal];
    }
}
@end

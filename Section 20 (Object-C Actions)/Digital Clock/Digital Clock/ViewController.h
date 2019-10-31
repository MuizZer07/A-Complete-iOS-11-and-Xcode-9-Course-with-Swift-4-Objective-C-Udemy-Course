//
//  ViewController.h
//  Digital Clock
//
//  Created by InfoSapex Limited on 31/10/19.
//  Copyright © 2019 Muiz Ahmed Khan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSTimer *timer;
}

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@property (weak, nonatomic) IBOutlet UIButton *settingsButton;

@property (weak, nonatomic) IBOutlet UIView *settingsView;

@property (weak, nonatomic) IBOutlet UISegmentedControl *clockColor;

@property (weak, nonatomic) IBOutlet UISegmentedControl *backgroundColorSegment;

- (IBAction)colorSegment:(id)sender;

- (IBAction)backgroundSegment:(id)sender;

- (IBAction)settingsButton:(id)sender;


@end


//
//  ViewController.h
//  Simon Says
//
//  Created by InfoSapex Limited on 3/11/19.
//  Copyright © 2019 Muiz Ahmed Khan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSTimer *countTimer;
    NSTimer *simonTimer;
    
    int time;
    int score;
    int mode;
}


@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIButton *startButton;

@property (nonatomic, strong) UISwipeGestureRecognizer *leftswipe;
@property (nonatomic, strong) UISwipeGestureRecognizer *rightswipe;
@property (nonatomic, strong) UISwipeGestureRecognizer *upswipe;
@property (nonatomic, strong) UISwipeGestureRecognizer *downswipe;

- (IBAction)startGame:(id)sender;

@end


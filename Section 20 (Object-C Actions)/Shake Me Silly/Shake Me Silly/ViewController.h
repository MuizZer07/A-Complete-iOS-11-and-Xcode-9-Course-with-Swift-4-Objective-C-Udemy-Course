//
//  ViewController.h
//  Shake Me Silly
//
//  Created by InfoSapex Limited on 2/11/19.
//  Copyright © 2019 Muiz Ahmed Khan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSTimer *timer;
    int score;
    int time;
    int mode;
    int image;
}
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *startButton;

- (IBAction)startGame:(id)sender;

@end


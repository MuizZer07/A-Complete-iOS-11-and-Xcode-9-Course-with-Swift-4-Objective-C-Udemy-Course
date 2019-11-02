//
//  ViewController.m
//  Shake Me Silly
//
//  Created by InfoSapex Limited on 2/11/19.
//  Copyright © 2019 Muiz Ahmed Khan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    time = 10;
    score = 0;
    mode = 0;
    image = 1;
    
    self.timeLabel.text = [NSString stringWithFormat:@"%i", time];
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", score];
    
}


- (IBAction)startGame:(id)sender {
    if(time == 10){
        timer  = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
        mode = 1;
        score = 0;
        self.startButton.enabled = NO;
        self.startButton.alpha = 0.1;
        self.scoreLabel.text = [NSString stringWithFormat:@"%i", score];
    }
}

- (void)updateTimer{
    time -= 1;
    self.timeLabel.text = [NSString stringWithFormat:@"%i", time];
    
    
    if(time == 0){
        [timer invalidate];
        time  = 10;
        mode = 0;
        image = 1;
        
        self.startButton.enabled = YES;
        self.startButton.alpha = 1;
        [self.startButton setTitle:@"Restart" forState:UIControlStateNormal];
        self.scoreLabel.text = [NSString stringWithFormat:@"%i", score];
        self.timeLabel.text = [NSString stringWithFormat:@"%i", time];
        self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"Maracas%i.png", image]];
    }
}


-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    if(event.subtype == UIEventSubtypeMotionShake){
        if(mode == 1){
            score += 1;
            self.scoreLabel.text = [NSString stringWithFormat:@"%i", score];
            
            image += 1;
            
            if(image ==5){
                image = 1;
            }
            
            self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"Maracas%i.png", image]];
        }
    }
}


@end

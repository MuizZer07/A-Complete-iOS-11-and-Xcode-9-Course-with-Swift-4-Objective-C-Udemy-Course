//
//  ViewController.m
//  Simon Says
//
//  Created by InfoSapex Limited on 3/11/19.
//  Copyright © 2019 Muiz Ahmed Khan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.leftswipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipe:)];
    self.rightswipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipe:)];
    self.upswipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipe:)];
    self.downswipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipe:)];
    
    self.leftswipe.direction = UISwipeGestureRecognizerDirectionLeft;
    self.rightswipe.direction = UISwipeGestureRecognizerDirectionRight;
    self.upswipe.direction = UISwipeGestureRecognizerDirectionUp;
    self.downswipe.direction = UISwipeGestureRecognizerDirectionDown;
    
    [self.view addGestureRecognizer:self.leftswipe];
    [self.view addGestureRecognizer:self.rightswipe];
    [self.view addGestureRecognizer:self.upswipe];
    [self.view addGestureRecognizer:self.downswipe];
    
    self.label.layer.cornerRadius = 20;
    self.label.clipsToBounds = YES;
    
    time = 20;
    score = 0;
    mode = 0;
    
    self.timeLabel.text = [NSString stringWithFormat:@"Time: %i", time];
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", score];
}


- (IBAction)startGame:(id)sender {
    if(time == 20){
        countTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTImer) userInfo:nil repeats:YES];
        
        self.startButton.enabled = NO;
        self.startButton.alpha = .25;
        
        [self simonSays];
        mode = 1;
    }
    if(time == 0){
        score = 0;
        time  = 20;
        self.timeLabel.text = [NSString stringWithFormat:@"Time: %i", time];
        self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", score];
        
        [self.startButton setTitle:@"Start Game" forState:UIControlStateNormal];
        
        self.label.text = @"Simon Says";
    }
}

-(void)updateTImer{
    time -= 1;
    self.timeLabel.text = [NSString stringWithFormat:@"Time: %i", time];
    
    if(time == 0){
        [countTimer invalidate];
        [simonTimer invalidate];
    
        mode = 0;
        self.startButton.enabled = YES;
        self.startButton.alpha = 1;
        [self.startButton setTitle:@"Restart" forState:UIControlStateNormal];
    }
}

-(void)simonSays{
    NSArray *array = @[@"Simon Says Swipe Right",
                       @"Simon Says Swipe Left",
                       @"Simon Says Swipe Up",
                       @"Simon Says Swipe Down",
                       @"Swipe Right",
                       @"Swipe Left",
                       @"Swipe Down",
                       @"Swipe Down",
    ];
    
    int randomword = arc4random() % array.count;
    self.label.text = array[randomword];
    
    simonTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(simonSays) userInfo:nil repeats:NO];
}

-(void)handleSwipe:(UISwipeGestureRecognizer *)sender{
    if(mode == 1){
        if(sender.direction == UISwipeGestureRecognizerDirectionLeft){
            [simonTimer invalidate];
            
            if([self.label.text isEqualToString:@"Simon Says Swipe Left"]){
                score += 1;
                self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", score];
                
                [self simonSays];
            }else{
                score -= 1;
                self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", score];
                
                [self simonSays];
            }
        }
        if(sender.direction == UISwipeGestureRecognizerDirectionRight){
            [simonTimer invalidate];
            
            if([self.label.text isEqualToString:@"Simon Says Swipe Right"]){
                score += 1;
                self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", score];
                
                [self simonSays];
            }else{
                score -= 1;
                self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", score];
                
                [self simonSays];
            }
        }
        if(sender.direction == UISwipeGestureRecognizerDirectionUp){
            [simonTimer invalidate];
            
            if([self.label.text isEqualToString:@"Simon Says Swipe Up"]){
                score += 1;
                self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", score];
                
                [self simonSays];
            }else{
                score -= 1;
                self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", score];
                
                [self simonSays];
            }
        }
        if(sender.direction == UISwipeGestureRecognizerDirectionDown){
            [simonTimer invalidate];
            
            if([self.label.text isEqualToString:@"Simon Says Swipe Down"]){
                score += 1;
                self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", score];
                
                [self simonSays];
            }else{
                score -= 1;
                self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", score];
                
                [self simonSays];
            }
        }
    }
}

@end

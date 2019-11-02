//
//  ViewController.m
//  Temperature Calculator
//
//  Created by InfoSapex Limited on 1/11/19.
//  Copyright © 2019 Muiz Ahmed Khan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)enterTextinLabel:(id)sender {
    if(self.calculateSegmentControl.selectedSegmentIndex == 0){
        double far = [self.textfield.text doubleValue];
        double cel = (far - 32)/1.8;
        
        self.outputLabel.text = [NSString stringWithFormat:@"%.2f Celsius", cel];
        
        if(cel > 120){
            self.image.image = [UIImage imageNamed:@"Temp9.png"];
        }else if(cel > 100){
            self.image.image = [UIImage imageNamed:@"Temp8.png"];
        }else if(cel > 80){
            self.image.image = [UIImage imageNamed:@"Temp7.png"];
        }else if(cel > 60){
            self.image.image = [UIImage imageNamed:@"Temp6.png"];
        }else if(cel > 40){
            self.image.image = [UIImage imageNamed:@"Temp5.png"];
        }else if(cel > 20){
            self.image.image = [UIImage imageNamed:@"Temp4.png"];
        }else if(cel > 0){
            self.image.image = [UIImage imageNamed:@"Temp3.png"];
        }else if(cel > -20){
            self.image.image = [UIImage imageNamed:@"Temp2.png"];
        }else if(cel < -20){
            self.image.image = [UIImage imageNamed:@"Temp1.png"];
        }
    }else{
        double cel = [self.textfield.text doubleValue];
        double far = (cel*1.8)+32;
        
        self.outputLabel.text = [NSString stringWithFormat:@"%.2f", far];
        
        if(far > 180){
            self.image.image = [UIImage imageNamed:@"Temp9.png"];
        }else if(far > 160){
            self.image.image = [UIImage imageNamed:@"Temp8.png"];
        }else if(far > 140){
            self.image.image = [UIImage imageNamed:@"Temp7.png"];
        }else if(far > 120){
            self.image.image = [UIImage imageNamed:@"Temp6.png"];
        }else if(far > 100){
            self.image.image = [UIImage imageNamed:@"Temp5.png"];
        }else if(far > 80){
            self.image.image = [UIImage imageNamed:@"Temp4.png"];
        }else if(far > 40){
            self.image.image = [UIImage imageNamed:@"Temp3.png"];
        }else if(far > 20){
            self.image.image = [UIImage imageNamed:@"Temp2.png"];
        }else if(far < 20){
            self.image.image = [UIImage imageNamed:@"Temp1.png"];
        }
    }
    
}
- (IBAction)enterTextLabel:(id)sender {
    
    
}

- (IBAction)convertion:(id)sender {
    if(self.calculateSegmentControl.selectedSegmentIndex == 0){
        self.enterLabel.text = @"Enter Fahrenheit";
        self.textfield.text = @"";
                   
        self.outputLabel.text = [NSString stringWithFormat:@"0 Celsius"];
    }else{
        self.enterLabel.text = @"Enter Celsius";
        self.textfield.text = @"";
                   
        self.outputLabel.text = [NSString stringWithFormat:@"0 Fahrenheit"];
    }
    
}
@end

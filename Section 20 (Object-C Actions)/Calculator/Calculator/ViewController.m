//
//  ViewController.m
//  Calculator
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
}


- (IBAction)digitPressed:(id)sender {
    currentNumber = currentNumber * 10 + (float)[sender tag];
    self.label.text = [NSString stringWithFormat:@"%6.0f", currentNumber];
}

- (IBAction)cancelOperation:(id)sender {
    currentNumber = 0;
    self.label.text = @"0";
}

- (IBAction)equalSign:(id)sender {
    printf("%i", currentOperation);
    if(currentOperation == 0){
        result = currentNumber;
    }else{
        switch (currentOperation) {
            case 1:
                result = result + currentNumber;
                break;
            case 2:
                result = result - currentNumber;
                break;
            case 3:
                result = result * currentNumber;
                break;
            case 4:
                result = result / currentNumber;
                break;

            default:
                break;
        }
    }
    currentNumber = 0;
    self.label.text = [NSString stringWithFormat:@"%6.0f", result];
    
    if([sender tag] == 0) result = 0; {
        currentOperation = (int)[sender tag];
    }
    
}
@end

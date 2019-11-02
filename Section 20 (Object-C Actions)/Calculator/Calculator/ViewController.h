//
//  ViewController.h
//  Calculator
//
//  Created by InfoSapex Limited on 2/11/19.
//  Copyright © 2019 Muiz Ahmed Khan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    int currentOperation;
    float result;
    float currentNumber;
}

@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)digitPressed:(id)sender;
- (IBAction)cancelOperation:(id)sender;

- (IBAction)equalSign:(id)sender;





@end


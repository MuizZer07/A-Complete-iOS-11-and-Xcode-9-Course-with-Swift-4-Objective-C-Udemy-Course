//
//  ViewController.h
//  Temperature Calculator
//
//  Created by InfoSapex Limited on 1/11/19.
//  Copyright © 2019 Muiz Ahmed Khan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textfield;
@property (weak, nonatomic) IBOutlet UILabel *enterLabel;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *outputLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *calculateSegmentControl;

- (IBAction)enterTextLabel:(id)sender;
- (IBAction)convertion:(id)sender;



@end


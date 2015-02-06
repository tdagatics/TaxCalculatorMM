//
//  RootViewController.m
//  TaxCalculator
//
//  Created by Anthony Dagati on 1/18/15.
//  Copyright (c) 2015 Anthony Dagati. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (nonatomic) double caTax;
@property (nonatomic) double chiTax;
@property (nonatomic) double nyTax;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.caTax = 7.5;
    self.chiTax = 9.25;
    self.nyTax = 4.5;
    
}



- (IBAction)onCalculateButtonTapped:(id)sender {
    if (self.segmentedControl.selectedSegmentIndex == 0) {
        self.resultLabel.text = [NSString stringWithFormat:@"%f", [self.priceTextField.text doubleValue]*self.caTax];
    }
    else if (self.segmentedControl.selectedSegmentIndex == 1) {
        self.resultLabel.text = [NSString stringWithFormat:@"%f", [self.priceTextField.text doubleValue]*self.chiTax];
    }
    else {
        self.resultLabel.text = [NSString stringWithFormat:@"%f", [self.priceTextField.text doubleValue]*self.nyTax];
    }
}


@end

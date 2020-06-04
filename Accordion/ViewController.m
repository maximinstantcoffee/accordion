//
//  ViewController.m
//  Accordion
//
//  Copyright © 2020 Accordion. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *acoordionView1Height;
@property (weak, nonatomic) IBOutlet UILabel *label1;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *accordionView2Height;
@property (weak, nonatomic) IBOutlet UILabel *label2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)button1:(id)sender {
    [self.view layoutIfNeeded];
    
    if (_acoordionView1Height.constant != 0){
        _acoordionView1Height.constant = 0;
    }else{
        _acoordionView1Height.constant = _label1.frame.size.height;
    }
    
    [UIView animateWithDuration:0.3f
                     animations:^{
        [self.view layoutIfNeeded];
    }];
}

- (IBAction)button2:(id)sender {
    [self.view layoutIfNeeded];
    
    if (_accordionView2Height.constant != 0){
        _accordionView2Height.constant = 0;
    }else{
        _accordionView2Height.constant = _label2.frame.size.height;
    }
    
    [UIView animateWithDuration:0.3f
                     animations:^{
        [self.view layoutIfNeeded];
    }];
}


@end

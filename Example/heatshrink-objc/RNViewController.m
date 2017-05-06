//
//  RNViewController.m
//  heatshrink-objc
//
//  Created by nobre84 on 05/06/2017.
//  Copyright (c) 2017 nobre84. All rights reserved.
//

#import "RNViewController.h"
#import "RNHeatshrinkEncoder.h"

@interface RNViewController ()

@end

@implementation RNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    RNHeatshrinkEncoder *encoder = [[RNHeatshrinkEncoder alloc] initWithWindowSize:11 andLookaheadSize:5];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  CrashlyticsExample
//
//  Created by Cesar Perez Laguna on 03/03/14.
//  Copyright (c) 2014 Cesar Perez Laguna. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

int numOKs;
int numKOs;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushToCrash:(id)sender {
    
    //Crash!!!
    NSArray *myTest;
    myTest = [NSArray arrayWithObjects: @"Red", @"Green", @"Blue", @"Yellow", nil];
    
    @try {
        _result.text = [NSString stringWithFormat:@"Crash %@", myTest[5]];
    }
    @catch (NSException *exception) {
        _result.text = [NSString stringWithFormat:@"Crash %d", ++numKOs];
    }
}

- (IBAction)pushToSucceed:(id)sender {
    
    _result.text = [NSString stringWithFormat:@"Push OK %d", ++numOKs];
}
@end

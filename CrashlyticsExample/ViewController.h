//
//  ViewController.h
//  CrashlyticsExample
//
//  Created by Cesar Perez Laguna on 03/03/14.
//  Copyright (c) 2014 Cesar Perez Laguna. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *result;

- (IBAction)pushToCrash:(id)sender;

- (IBAction)pushToSucceed:(id)sender;

@end

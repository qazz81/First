//
//  ViewController.h
//  First
//
//  Created by Anton Mishchenko on 06.11.14.
//  Copyright (c) 2014 Anton Mishchenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {

 
    IBOutlet UILabel *_displayLabel;
    NSInteger operation;
    double n, m;
    BOOL operationEnter;
    BOOL doubleOperation;
}


- (IBAction)clear:(id)sender;
- (IBAction)num:(id)sender;
- (IBAction)operation:(id)sender;
- (IBAction)inverse:(id)sender;



@end


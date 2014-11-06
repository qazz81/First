//
//  ViewController.m
//  First
//
//  Created by Anton Mishchenko on 06.11.14.
//  Copyright (c) 2014 Anton Mishchenko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

    - (IBAction)clear:(id)sender{
//        &nbsp;
        n=0;
        m=0;
        doubleOperation = NO;
        [self tablo];
    }
    - (IBAction)num:(id)sender{
        if (operationEnter) {
            m = n;
            n = 0;
            operationEnter = NO;
        }
        n = (n * 10.0f) + [sender tag];
        [self tablo];
        NSLog(@"%li" , (long)[sender tag]);
    }
    - (IBAction)operation:(id)sender{
        NSLog(@"%li" , (long)[sender tag]);
        
        if (doubleOperation) {
            
            if (!operationEnter) {
                if (operation == 101) {
                    n = m + n;
                }
        
                if (operation == 102) {
                    n = m - n;
                }
        
                if (operation == 103) {
                    n = m * n;
                }
        
                if (operation == 104) {
                    n = m / n;
                }
           }
        }
        m = n;
        
       operation = [sender tag];
        
        operationEnter = YES;
        doubleOperation = YES;
        [self tablo];
    }

    - (IBAction)inverse:(id)sender{
        n = -n;
        [self tablo];
        }

- (void) tablo {
    
    NSString *str = [NSString stringWithFormat: @"%g", n];
    
    [_displayLabel setText:str];
    
}
    


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

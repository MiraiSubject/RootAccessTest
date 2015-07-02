//
//  ViewController.m
//  RootAccessTest
//
//  Created by Shivam Ramkisoen on 02-07-15.
//  Copyright (c) 2015 i4Shivam/Subject4S. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize CheckforRoot, BeforeEUID, BeforeUID, AfterEUID, AfterUID;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSLog(@"Before: uid=%d euid=%d", getuid(), geteuid());
    NSString *uidString = [NSString stringWithFormat:@"%ld", (long)getuid()]; // 64 + 32 Bit compatibility? I"m a noob programmer btw
    NSString *euidString = [NSString stringWithFormat:@"%ld", (long)geteuid()];
    BeforeUID.text = (uidString);
    BeforeEUID.text = (euidString);
    
    
    setreuid(0,0);
    if (geteuid() == 0) {
        CheckforRoot.text = (@"Root Access");
        NSLog(@"Got Root Access in sandbox");
        
        NSString *uidNewString = [NSString stringWithFormat:@"%ld", (long)getuid()]; // 64 + 32 Bit compatibility? I"m a noob programmer btw
        NSString *euidNewString = [NSString stringWithFormat:@"%ld", (long)geteuid()];

        
        AfterUID.text = (uidNewString);
        AfterEUID.text = (euidNewString);
    }
    NSLog(@"After: uid=%d euid=%d", getuid(), geteuid());
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

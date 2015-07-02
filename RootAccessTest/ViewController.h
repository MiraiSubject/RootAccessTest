//
//  ViewController.h
//  RootAccessTest
//
//  Created by Shivam Ramkisoen on 02-07-15.
//  Copyright (c) 2015 i4Shivam/Subject4S. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (retain, nonatomic) IBOutlet UILabel *CheckforRoot;

///Before Labels///
@property (retain, nonatomic) IBOutlet UILabel *BeforeUID;
@property (retain, nonatomic) IBOutlet UILabel *BeforeEUID;

///After Labels///

@property (retain, nonatomic) IBOutlet UILabel *AfterUID;
@property (retain, nonatomic) IBOutlet UILabel *AfterEUID;


@end


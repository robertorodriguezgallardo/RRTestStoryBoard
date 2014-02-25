//
//  AppDelegate.h
//  RRTestStoryBoard
//
//  Created by formacion on 24/02/14.
//  Copyright (c) 2014 EveronGames. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RRViewController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property(strong,nonatomic) RRViewController *rrviewController;
@property (strong, nonatomic) NSMutableArray *cities;
@end

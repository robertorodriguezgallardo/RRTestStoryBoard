//
//  ViewController.m
//  RRTestStoryBoard
//
//  Created by formacion on 24/02/14.
//  Copyright (c) 2014 EveronGames. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if( [segue.identifier isEqualToString:@"ide1"])
    {
       
    }
}

- (IBAction)btn1:(id)sender forEvent:(UIEvent *)event {
}
@end

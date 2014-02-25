//
//  RRAddCityControlerViewController.h
//  RRCurseApp8
//
//  Created by rrodriguez on 20/02/14.
//  Copyright (c) 2014 EveronGames. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RRAddCityControlerViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>
{
 
    IBOutlet UITableView *miTabla;
    IBOutlet UITableViewCell *descriptionView;
    
    IBOutlet UITableViewCell *nameView;
    
    IBOutlet UITableViewCell *pictureCell;
    
    UIImage *cityPicture;
    //NSMutableArray *cities;

}
- (IBAction)addPicture:(id)sender;

@end

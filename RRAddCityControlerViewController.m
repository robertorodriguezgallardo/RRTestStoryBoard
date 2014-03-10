//
//  RRAddCityControlerViewController.m
//  RRCurseApp8
//
//  Created by rrodriguez on 20/02/14.
//  Copyright (c) 2014 EveronGames. All rights reserved.
//

#import "RRAddCityControlerViewController.h"
#import "RRCity.h"
#import "AppDelegate.h"
#import "RRCity.h"
#import "RRViewController.h"
@interface RRAddCityControlerViewController ()

@end

@implementation RRAddCityControlerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
     // Do any additional setup after loading the view from its nib.
    self.title=@"New City";
    //self.navigationItem.rightBarButtonItem =[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveCity:)];

    
    pickerController = [[UIImagePickerController alloc] init];
    pickerController.allowsEditing = NO;
    pickerController.delegate = self;
    pickerController.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






#pragma mark UItableViewDataSource methods
// para inicializar la tabla

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  UITableViewCell *cell= nil;
    
 /* UITableViewCell *cell1= [tableView dequeueReusableCellWithIdentifier:@"celladd1"];
    
    
    UITableViewCell *cell2= [tableView dequeueReusableCellWithIdentifier:@"celladd2"];
    
    UITableViewCell *cell3= [tableView dequeueReusableCellWithIdentifier:@"celladd3"];
    cell=cell3;*/
    
    if(indexPath.row==0)
    {
      // UITableViewCell *cell1= [tableView dequeueReusableCellWithIdentifier:@"cell1"];
        cell= [tableView dequeueReusableCellWithIdentifier:@"cell1"];
        
        if(nil==cell)
        {
            cell= [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell1"];
            nameView=cell;
           // NSLog(cell);
            UITextField *nameEntry = (UITextField *)[cell viewWithTag:777];
            [nameEntry setText:@"jksfgjs"];
        }
    
       //cell=cell1;
    }
   
    if(indexPath.row==1)
    {
       //  UITableViewCell *cell2= [tableView dequeueReusableCellWithIdentifier:@"cell2"];
        cell= [tableView dequeueReusableCellWithIdentifier:@"cell2"];
        
        if(nil==cell)
        {
            cell= [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell2"];
        pictureCell=cell;
        UIImageView *pictureView = (UIImageView *)[pictureCell viewWithTag:333];
        cityPicture = [UIImage imageNamed:@"4.png"];

        pictureView.image = cityPicture;
        
        }
       // cell=cell2;
    }

    if(indexPath.row==2)
    {
       // UITableViewCell *cell3= [tableView dequeueReusableCellWithIdentifier:@"cell3"];
        
        cell= [tableView dequeueReusableCellWithIdentifier:@"cell3"];

        
        if(nil==cell)
        {
            
            cell= [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell3"];
            descriptionView=cell;
        }
       // cell=cell3;
    }
      return cell;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    CGFloat height;
    if( indexPath.row == 0 ) {
        height = 44;
    } else if( indexPath.row == 1 ) {
        height = 93;
    } else {
        height = 420;
    }
    return height;
}


-(NSInteger) tableView:(UITableView*) tableView numberOfRowsInSection:(NSInteger)section{
    
    
    return 3;
    
}



- (IBAction)saveCity:(id)sender {
    AppDelegate *delegate =
    (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSMutableArray *cities = delegate.cities;
    UITextField *nameEntry = (UITextField *)[nameView viewWithTag:777];
    UITextView *descriptionEntry =(UITextView *)[descriptionView viewWithTag:777];
    if ( nameEntry.text.length > 0 ) {
        RRCity *newCity = [[RRCity alloc] init];
        newCity.cityName = nameEntry.text;
        newCity.cityDescription = descriptionEntry.text;
          newCity.cityPicture = cityPicture;
        [cities addObject:newCity];
        RRViewController *viewController = delegate.rrviewController;
        [viewController.miTabla reloadData];
    }
   // [delegate.navController popViewControllerAnimated:YES];
}


- (IBAction)addPicture:(id)sender {
    
    UITextField *nameEntry = (UITextField *)[nameView viewWithTag:777];
    [nameEntry resignFirstResponder];
    [self presentModalViewController:pickerController animated:NO];
}



-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    [self dismissViewControllerAnimated:YES completion:nil];
    cityPicture = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
     UIImageView *pictureView = (UIImageView *)[pictureCell viewWithTag:333];
    pictureView.image = cityPicture;
    [self.miTabla reloadData];
    
}
/*
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    [[self dismissViewControllerAnimated:YES completion:nil];
     cityPicture = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
     UIImageView *pictureView = (UIImageView *)[pictureCell viewWithTag:777];
     pictureView.image = cityPicture;
     [tableView reloadData];
     
     }
*/



@end

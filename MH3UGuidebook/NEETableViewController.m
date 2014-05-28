//
//  NEETableViewController.m
//  MH3UListTable
//
//  Created by Neetu George on 5/1/14.
//             neetugeo@usc.edu
//  Copyright (c) 2014 USC. All rights reserved.
//

#import "NEETableViewController.h"
#import "NEEViewController.h"
#import "NEEMH3UModel.h"

@interface NEETableViewController ()
@property (strong, nonatomic) NEEMH3UModel* model;
@property (strong, nonatomic) NSArray* chosenArray;
@property (strong,nonatomic) NSString* currentPage;
@end

@implementation NEETableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.model = [NEEMH3UModel sharedModel];
    
    _chosenArray =[self.model currentArray];
    
    self.navigationItem.title = self.model.assetType;
    self.currentPage = self.model.assetType;
    
    
    //YESS IT WORKS
    

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [_chosenArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ThisCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];

    // Configure the cell;
    if ([self.model.assetType isEqualToString:@"Weapon Types"])
    {
        cell.textLabel.text = [_chosenArray objectAtIndex:indexPath.row];
    }
    else if ([self.model.assetType isEqualToString:@"Armour Types"])
    {
        cell.textLabel.text = [_chosenArray objectAtIndex:indexPath.row];
    }
    else if ([self.model.assetType isEqualToString:@"Maps"])
    {
        cell.textLabel.text = [_chosenArray objectAtIndex:indexPath.row];
    }
    else
    {
        cell.textLabel.text = [[_chosenArray objectAtIndex:indexPath.row] name];
    }
    
    return cell;
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([self.currentPage isEqualToString:@"Monsters"])
    {
        self.model.chosenMonster = [self.chosenArray objectAtIndex:indexPath.item];
        [self performSegueWithIdentifier:@"tableToMonster" sender:self];
    }
    
    if ([self.currentPage isEqualToString:@"Items"])
    {
        self.model.chosenItem = [self.chosenArray objectAtIndex:indexPath.item];
        [self performSegueWithIdentifier:@"tableToItem" sender:self];
    }
    
    if ([self.currentPage isEqualToString:@"Weapons"])
    {
        self.model.chosenWeapon = [self.chosenArray objectAtIndex:indexPath.item];
        [self performSegueWithIdentifier:@"tableToWeapon" sender:self];
    }
    
    if ([self.currentPage isEqualToString:@"Weapon Types"])
    {
        [self.model selectWhichArray:[self.chosenArray objectAtIndex:indexPath.item]];
        [self performSegueWithIdentifier:@"tableToWeaponType" sender:self];
    }
    
    if ([self.currentPage isEqualToString: @"Armour Types"])
    {
        [self.model selectWhichArray:[self.chosenArray objectAtIndex:indexPath.item]];
        [self performSegueWithIdentifier:@"tableToArmourType" sender:self];
    }
    
    if ([self.currentPage isEqualToString:@"Armour"])
    {
        self.model.chosenArmour = [self.chosenArray objectAtIndex:indexPath.item];
        [self performSegueWithIdentifier: @"tableToArmour" sender:self];
    }
    
    if ([self.currentPage isEqualToString:@"Maps"])
    {
        self.model.chosenMap = [self.chosenArray objectAtIndex:indexPath.item];
        [self performSegueWithIdentifier:@"tableToMap" sender:self];
    }
    
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end

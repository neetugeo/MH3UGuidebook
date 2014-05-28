//
//  NEEViewController.m
//  MH3UGuidebook
//
//  Created by Neetu George on 5/1/14.
//             neetugeo@usc.edu
//  Copyright (c) 2014 USC. All rights reserved.
//

#import "NEEViewController.h"
#import "NEEMH3UModel.h"
#import "NEETableViewController.h"
#include <AudioToolbox/AudioToolbox.h>



@interface NEEViewController ()
//@property (weak, nonatomic) IBOutlet FBLoginView *loginView;

@property (strong, nonatomic) NEEMH3UModel* model;
@property (readonly) SystemSoundID soundFileID;
@end

@implementation NEEViewController

//StoryBoard Menu Buttons
- (IBAction)menuButtonMonsters:(id)sender {
    [self.model selectWhichArray: @"Monsters"];
    [self performSegueWithIdentifier:@"buttonPressed" sender:self];
}
- (IBAction)menuButtonMaps:(id)sender {
    [self.model selectWhichArray: @"Maps"];
    [self performSegueWithIdentifier:@"buttonPressed" sender:self];
}
- (IBAction)menuButtonWeapons:(id)sender {
    [self.model selectWhichArray: @"Weapon Types"];
    [self performSegueWithIdentifier:@"buttonPressed" sender:self];
}
- (IBAction)menuButtonArmour:(id)sender {
    [self.model selectWhichArray: @"Armour Types"];
    [self performSegueWithIdentifier:@"buttonPressed" sender:self];
}
- (IBAction)menuButtonItems:(id)sender {
    [self.model selectWhichArray: @"Items"];
    [self performSegueWithIdentifier:@"buttonPressed" sender:self];

}
- (IBAction)postToWallButton:(id)sender {
    [self postToWall];
}
- (IBAction)supportButton:(id)sender {
    [self performSegueWithIdentifier:@"menuToSupport" sender:self];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:@"MH3UOpeningClip" ofType:@"mp3"];
    
    NSURL *soundURL = [NSURL fileURLWithPath:soundFilePath];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &_soundFileID);
    
    AudioServicesPlaySystemSound(self.soundFileID);
    
    self.model = [NEEMH3UModel sharedModel];
    //self.loginView.readPermissions = @[@"public_profile", @"email", @"user_friends", @"publish_actions"];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
    
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([[segue identifier] isEqualToString: @"weaponsToTable"])
    {
        //NEETableViewController* weapons = (UINavigationController*) [segue destinationViewController];
        //UINavigationController *navController = (UINavigationController*) [segue destinationViewController];
        //weapons = (NEETableViewController*)[navController topViewController];
        //[self dismissViewControllerAnimated:YES completion:nil];
    }
    
    else if ([[segue identifier] isEqualToString: @"monstersToTable"])
    {
        //NEETableViewController* monsters = (UINavigationController*) [segue destinationViewController];
        //UINavigationController *navController = (UINavigationController*) [segue destinationViewController];
        //monsters = (NEETableViewController*)[navController topViewController];
        //[self dismissViewControllerAnimated:YES completion:nil];

    }
    else if ([[segue identifier] isEqualToString: @"itemsToTable"])
    {
       // NEETableViewController* items = (UINavigationController*) [segue destinationViewController];
        //UINavigationController *navController = (UINavigationController*) [segue destinationViewController];
        //items = (NEETableViewController*)[navController topViewController];
        //[self dismissViewControllerAnimated:YES completion:nil];
        
    }
    else if ([[segue identifier] isEqualToString: @"armoursToTable"])
    {
        //NEETableViewController* armours = (UINavigationController*) [segue destinationViewController];
        //UINavigationController *navController = (UINavigationController*) [segue destinationViewController];
        //armours = (NEETableViewController*)[navController topViewController];
       // [self dismissViewControllerAnimated:YES completion:nil];
        
    }
}

-(void) loginViewShowingLoggedInUser: (FBLoginView*)loginView
{
}

-(void)loginViewFetchedUserInfo:(FBLoginView*)loginView user:(id<FBGraphUser>)user
{
    
}

-(void)loginViewShowingLoggedOutUser: (FBLoginView*) loginView
{
    
}

-(void) loginView:(FBLoginView*) loginView handleError:(NSError*)error
{
    NSString *alertMessage, *alertTitle;
    
    if([FBErrorUtility shouldNotifyUserForError:error])
    {
        alertTitle = @"Facebook error";
        alertMessage = [FBErrorUtility userMessageForError:error];
    }
    else if ([FBErrorUtility errorCategoryForError:error] == FBErrorCategoryUserCancelled)
    {
        NSLog(@"User Cancelled Login");
    }
    else
    {
       alertTitle = @"Something went wrong";
        alertMessage = @"Please try again later.";
        NSLog(@"Unexpected error:%@", error);
    }
    
    if(alertMessage)
    {
        [[[UIAlertView alloc] initWithTitle:alertTitle message:alertMessage delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil]show];
    }
    
}

- (void) postToWall
{
    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithObjectsAndKeys: @"Hunter Life!", @"name", @"Explore with us.", @"caption", @"Being a hunter was never easier!", @"description", @"http://kiranico.com", @"link", @"http://imgur.com/DTaerPk", @"picture", nil];
    
    [FBWebDialogs presentFeedDialogModallyWithSession:nil parameters:params handler:^(FBWebDialogResult result, NSURL *resultURL, NSError* error)
     {
         if(error)
         {
             NSLog([NSString stringWithFormat: @"Error publishing story:%@", error.description]);
         }
         else
         {
             if (result == FBWebDialogResultDialogNotCompleted)
             {
                 NSLog(@"User Cancelled.");
             }
             else
             {
                 NSLog(@"Posted successfully");
             }
         }
     }];
}

@end

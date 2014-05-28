//
//  NEEViewController.m
//  MH3UContactUsViewController
//
//  Created by Neetu George on 5/9/14.
//  Copyright (c) 2014 Neetu George. All rights reserved.
//

#import "NEEMH3UContactUsViewController.h"


@interface NEEMH3UContactUsViewController ()
@property (nonatomic,assign) id<MFMailComposeViewControllerDelegate> mailComposeDelegate;

@end

@implementation NEEMH3UContactUsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //[self displayComposerSheet];
   

    [self displayComposerSheet];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) displayComposerSheet
{
     MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
    picker.mailComposeDelegate = self;
    [picker setSubject: @"MH3U Guidebook -- Error Notification"];
    
    NSArray *toRecipients = [NSArray arrayWithObjects: @"neetugeo@usc.edu", nil];
    NSArray *ccRecipients = [NSArray arrayWithObjects:nil];
    NSArray *bccRecipients = [NSArray arrayWithObjects:nil];
    
    [picker setToRecipients:toRecipients];
    [picker setCcRecipients:ccRecipients];
    [picker setBccRecipients:bccRecipients];
    
    picker.modalPresentationStyle = UIModalPresentationPageSheet;
    [self presentModalViewController:picker animated:YES];

    //[picker release];
}

-(void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error
{
    [self performSegueWithIdentifier: @"supportToMenu" sender:self];
    [self dismissModalViewControllerAnimated:YES];
}

@end

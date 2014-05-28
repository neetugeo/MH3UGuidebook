//
//  NEEViewController.m
//  MH3UItemView
//
//  Created by Neetu George on 5/5/14.
//             neetugeo@usc.edu
//
//

#import "NEEMapPageViewController.h"
#import "NEEMH3UModel.h"

@interface NEEMapPageViewController ()
@property (weak, nonatomic) NEEMH3UModel* model;
@property (weak, nonatomic) IBOutlet UILabel *itemName;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation NEEMapPageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.model = [NEEMH3UModel sharedModel];
    
    NSString* imageName = [NSString stringWithFormat: @"%@.jpg", self.model.chosenMap];
    self.imageView.image = [UIImage imageNamed:imageName];
    
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

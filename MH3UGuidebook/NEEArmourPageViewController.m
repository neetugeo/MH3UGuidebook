//
//  NEEViewController.m
//  MH3UItemView
//
//  Created by Neetu George on 5/5/14.
//             neetugeo@usc.edu
//
//

#import "NEEArmourPageViewController.h"
#import "NEEMH3UModel.h"

@interface NEEArmourPageViewController ()
@property (weak, nonatomic) NEEMH3UModel* model;
@property (weak, nonatomic) IBOutlet UILabel *itemName;

//DETAILS
@property (weak, nonatomic) IBOutlet UILabel *type;
@property (weak, nonatomic) IBOutlet UILabel *slots;
@property (weak, nonatomic) IBOutlet UILabel *rare;
@property (weak, nonatomic) IBOutlet UILabel *defense;

//COMBINE
@property (weak, nonatomic) IBOutlet UILabel *combine1;
@property (weak, nonatomic) IBOutlet UILabel *combine2;
@property (weak, nonatomic) IBOutlet UILabel *combine3;
@property (weak, nonatomic) IBOutlet UILabel *combine4;
@property (weak, nonatomic) IBOutlet UILabel *combine5;

//SKILLS
@property (weak, nonatomic) IBOutlet UILabel *skill1;
@property (weak, nonatomic) IBOutlet UILabel *skill2;
@property (weak, nonatomic) IBOutlet UILabel *skill3;
@property (weak, nonatomic) IBOutlet UILabel *skill4;

//RESISTANCES
@property (weak, nonatomic) IBOutlet UILabel *fire;
@property (weak, nonatomic) IBOutlet UILabel *water;
@property (weak, nonatomic) IBOutlet UILabel *ice;
@property (weak, nonatomic) IBOutlet UILabel *thunder;
@property (weak, nonatomic) IBOutlet UILabel *dragon;

@property (weak,nonatomic) NSArray* combineLabels;
@property (weak,nonatomic) NSArray* skillLabels;
@property (weak,nonatomic) NSArray* resistanceLabels;


@end

@implementation NEEArmourPageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Label Arrays
    self.model = [NEEMH3UModel sharedModel];
    
    self.itemName.text = self.model.chosenArmour.name;
    
    _combineLabels = [NSArray arrayWithObjects: _combine1, _combine2, _combine3, _combine4, _combine5, nil];
    _skillLabels = [NSArray arrayWithObjects: _skill1, _skill2, _skill3, _skill4, nil];
    _resistanceLabels = [NSArray arrayWithObjects: _fire, _water, _ice, _thunder, _dragon, nil];
    
    self.currentArmour = self.model.chosenArmour;
    
    self.itemName.text = self.currentArmour.name;
    
    for (NSUInteger i = 0; i < [self.currentArmour.comboList count]; i++)
    {
        UILabel* currentLabel = [self.combineLabels objectAtIndex:i];
        if ([currentLabel isHidden])
        {
            [currentLabel setHidden:NO];
        }
        currentLabel.text = [self.currentArmour.comboList objectAtIndex: i];
    }
    
    for (NSUInteger i = 0; i < [self.currentArmour.resistanceList count]; i++)
    {
        UILabel* currentLabel = [self.resistanceLabels objectAtIndex:i];
        if ([currentLabel isHidden])
        {
            [currentLabel setHidden:NO];
        }
        currentLabel.text = [self.currentArmour.resistanceList objectAtIndex: i];
    }
    
    for (NSUInteger i = 0; i < [self.currentArmour.skillsList count]; i++)
    {
        UILabel* currentLabel = [self.skillLabels objectAtIndex:i];
        if ([currentLabel isHidden])
        {
            [currentLabel setHidden:NO];
        }
        currentLabel.text = [self.currentArmour.skillsList objectAtIndex: i];
    }
    
    NSLog(self.currentArmour.type);
    self.type.text = self.currentArmour.type;
    self.rare.text = self.currentArmour.rare;
    self.slots.text = self.currentArmour.slot;
    self.defense.text = self.currentArmour.defense;
    
    //self.Quest1.text = self.currentWeapon.upgradesTo;
    
    
    
    
    
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

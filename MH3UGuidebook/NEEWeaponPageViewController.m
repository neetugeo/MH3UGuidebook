//
//  NEEViewController.m
//  MH3UItemView
//
//  Created by Neetu George on 5/5/14.
//             neetugeo@usc.edu
//
//

#import "NEEWeaponPageViewController.h"
#import "NEEMH3UModel.h"

@interface NEEWeaponPageViewController ()
@property (weak, nonatomic) NEEMH3UModel* model;
@property (weak, nonatomic) IBOutlet UILabel *itemName;

//Combine
@property (weak, nonatomic) IBOutlet UILabel *Combine1;
@property (weak, nonatomic) IBOutlet UILabel *Combine2;
@property (weak, nonatomic) IBOutlet UILabel *Combine3;
@property (weak, nonatomic) IBOutlet UILabel *Combine4;
@property (weak, nonatomic) IBOutlet UILabel *Combine5;
@property (weak, nonatomic) NSArray* combineLabels;

//Details
@property (weak, nonatomic) IBOutlet UILabel *Type;
@property (weak, nonatomic) IBOutlet UILabel *Attack;
@property (weak, nonatomic) IBOutlet UILabel *Element;
@property (weak, nonatomic) IBOutlet UILabel *Rare;
@property (weak, nonatomic) IBOutlet UILabel *Slots;
@property (weak, nonatomic) IBOutlet UILabel *Affinity;
@property (weak, nonatomic) IBOutlet UILabel *Defense;


//Quest
@property (weak, nonatomic) IBOutlet UILabel *Quest1;
@property (weak, nonatomic) IBOutlet UILabel *Upgrade2;
@property (weak, nonatomic) IBOutlet UILabel *Upgrade3;
@property (weak, nonatomic) IBOutlet UILabel *Upgrade4;

@property (weak, nonatomic) NSArray* upgradeLabels;

@end

@implementation NEEWeaponPageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Label Arrays
    self.model = [NEEMH3UModel sharedModel];
    _combineLabels = [NSArray arrayWithObjects: _Combine1, _Combine2, _Combine3, _Combine4, _Combine5, nil];
    _upgradeLabels = [NSArray arrayWithObjects: _Quest1, _Upgrade2, _Upgrade3, _Upgrade4, nil];
    
    self.currentWeapon = self.model.chosenWeapon;
    
    self.itemName.text = self.currentWeapon.name;
    
    for (NSUInteger i = 0; i < [self.currentWeapon.comboList count]; i++)
    {
        UILabel* currentLabel = [self.combineLabels objectAtIndex:i];
        if ([currentLabel isHidden])
        {
            [currentLabel setHidden:NO];
        }
        currentLabel.text = [self.currentWeapon.comboList objectAtIndex: i];
    }
    
    for (NSUInteger i = 0; i < [self.currentWeapon.upgradesTo count]; i++)
    {
        UILabel* currentLabel = [self.upgradeLabels objectAtIndex:i];
        if ([currentLabel isHidden])
        {
            [currentLabel setHidden:NO];
        }
        currentLabel.text = [self.currentWeapon.upgradesTo objectAtIndex: i];
    }
    
    self.Type.text = self.currentWeapon.type;
    self.Attack.text = self.currentWeapon.attack;
    self.Element.text = self.currentWeapon.element;
    self.Rare.text = self.currentWeapon.rare;
    self.Slots.text = self.currentWeapon.slots;
    self.Affinity.text = self.currentWeapon.affinity;
    self.Defense.text = self.currentWeapon.defense;
    
    //self.Quest1.text = self.currentWeapon.upgradesTo;
    
    

    
    
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

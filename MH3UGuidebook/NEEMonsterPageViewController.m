//
//  NEEViewController.m
//  MH3UItemView
//
//  Created by Neetu George on 5/5/14.
//             neetugeo@usc.edu
//
//

#import "NEEMonsterPageViewController.h"
#import "NEEMH3UModel.h"

@interface NEEMonsterPageViewController ()
@property (weak, nonatomic) NEEMH3UModel* model;
@property (weak, nonatomic) IBOutlet UILabel *itemName;

//Head
@property (weak, nonatomic) IBOutlet UILabel *headCut;
@property (weak, nonatomic) IBOutlet UILabel *headImpact;
@property (weak, nonatomic) IBOutlet UILabel *headShot;
@property (weak, nonatomic) IBOutlet UILabel *headFire;
@property (weak, nonatomic) IBOutlet UILabel *headWater;
@property (weak, nonatomic) IBOutlet UILabel *headIce;
@property (weak, nonatomic) IBOutlet UILabel *headThunder;
@property (weak, nonatomic) IBOutlet UILabel *headDragon;
@property (weak,nonatomic) NSArray* headArray;

//chest
@property (weak, nonatomic) IBOutlet UILabel *chestCut;
@property (weak, nonatomic) IBOutlet UILabel *chestImpact;
@property (weak, nonatomic) IBOutlet UILabel *chestShot;
@property (weak, nonatomic) IBOutlet UILabel *chestFire;
@property (weak, nonatomic) IBOutlet UILabel *chestWater;
@property (weak, nonatomic) IBOutlet UILabel *chestIce;
@property (weak, nonatomic) IBOutlet UILabel *chestThunder;
@property (weak, nonatomic) IBOutlet UILabel *chestDragon;
@property (weak,nonatomic) NSArray* chestArray;

//Body
@property (weak, nonatomic) IBOutlet UILabel *bodyCut;
@property (weak, nonatomic) IBOutlet UILabel *bodyImpact;
@property (weak, nonatomic) IBOutlet UILabel *bodyShot;
@property (weak, nonatomic) IBOutlet UILabel *bodyFire;
@property (weak, nonatomic) IBOutlet UILabel *bodyWater;
@property (weak, nonatomic) IBOutlet UILabel *bodyIce;
@property (weak, nonatomic) IBOutlet UILabel *bodyThunder;
@property (weak, nonatomic) IBOutlet UILabel *bodyDragon;
@property (weak,nonatomic) NSArray* bodyArray;

//back
@property (weak, nonatomic) IBOutlet UILabel *backCut;
@property (weak, nonatomic) IBOutlet UILabel *backImpact;
@property (weak, nonatomic) IBOutlet UILabel *backShot;
@property (weak, nonatomic) IBOutlet UILabel *backFire;
@property (weak, nonatomic) IBOutlet UILabel *backWater;
@property (weak, nonatomic) IBOutlet UILabel *backIce;
@property (weak, nonatomic) IBOutlet UILabel *backThunder;
@property (weak, nonatomic) IBOutlet UILabel *backDragon;
@property (weak,nonatomic) NSArray* backArray;

//Leg
@property (weak, nonatomic) IBOutlet UILabel *legCut;
@property (weak, nonatomic) IBOutlet UILabel *legImpact;
@property (weak, nonatomic) IBOutlet UILabel *legShot;
@property (weak, nonatomic) IBOutlet UILabel *legFire;
@property (weak, nonatomic) IBOutlet UILabel *legWater;
@property (weak, nonatomic) IBOutlet UILabel *legIce;
@property (weak, nonatomic) IBOutlet UILabel *legThunder;
@property (weak, nonatomic) IBOutlet UILabel *legDragon;
@property (weak,nonatomic) NSArray* legArray;

//Tail
@property (weak, nonatomic) IBOutlet UILabel *tailCut;
@property (weak, nonatomic) IBOutlet UILabel *tailImpact;
@property (weak, nonatomic) IBOutlet UILabel *tailShot;
@property (weak, nonatomic) IBOutlet UILabel *tailFire;
@property (weak, nonatomic) IBOutlet UILabel *tailWater;
@property (weak, nonatomic) IBOutlet UILabel *tailIce;
@property (weak, nonatomic) IBOutlet UILabel *tailThunder;
@property (weak, nonatomic) IBOutlet UILabel *tailDragon;
@property (weak,nonatomic) NSArray* tailArray;


@end

@implementation NEEMonsterPageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Label Arrays
    
    self.model = [NEEMH3UModel sharedModel];
    self.currentMonster = self.model.chosenMonster;
    
    _itemName.text = self.currentMonster.trueName;
    
    _headArray = [NSArray arrayWithObjects: _headCut, _headImpact, _headShot, _headFire, _headWater, _headIce, _headThunder, _headDragon, nil];
    
    _chestArray = [NSArray arrayWithObjects: _chestCut, _chestImpact, _chestShot, _chestFire, _chestWater, _chestIce, _chestThunder, _chestDragon, nil];
    
    _bodyArray = [NSArray arrayWithObjects: _bodyCut, _bodyImpact, _bodyShot, _bodyFire, _bodyWater, _bodyIce, _bodyThunder, _bodyDragon, nil];
    
    _backArray = [NSArray arrayWithObjects: _backCut, _backImpact, _backShot, _backFire, _backWater, _backIce, _backThunder, _backDragon, nil];
    
    _legArray = [NSArray arrayWithObjects: _legCut, _legImpact, _legShot, _legFire, _legWater, _legIce, _legThunder, _legDragon, nil];
    
    _tailArray = [NSArray arrayWithObjects: _tailCut, _tailImpact, _tailShot, _tailFire, _tailWater, _tailIce, _tailThunder, _tailDragon, nil];
    
    
    for (NSUInteger i = 0; i < [self.currentMonster.headList count]; i++)
    {
        UILabel* currentLabel = [self.headArray objectAtIndex:i];
        if ([currentLabel isHidden])
        {
            [currentLabel setHidden:NO];
        }
        currentLabel.text = [self.currentMonster.headList objectAtIndex: i];
    }
    
    for (NSUInteger i = 0; i < [self.currentMonster.chestList count]; i++)
    {
        UILabel* currentLabel = [self.chestArray objectAtIndex:i];
        if ([currentLabel isHidden])
        {
            [currentLabel setHidden:NO];
        }
        currentLabel.text = [self.currentMonster.chestList objectAtIndex: i];
    }
    
    for (NSUInteger i = 0; i < [self.currentMonster.bodyList count]; i++)
    {
        UILabel* currentLabel = [self.bodyArray objectAtIndex:i];
        if ([currentLabel isHidden])
        {
            [currentLabel setHidden:NO];
        }
        currentLabel.text = [self.currentMonster.bodyList objectAtIndex: i];
    }
    
    for (NSUInteger i = 0; i < [self.currentMonster.backList count]; i++)
    {
        UILabel* currentLabel = [self.backArray objectAtIndex:i];
        if ([currentLabel isHidden])
        {
            [currentLabel setHidden:NO];
        }
        currentLabel.text = [self.currentMonster.backList objectAtIndex: i];
    }
    
    for (NSUInteger i = 0; i < [self.currentMonster.legList count]; i++)
    {
        UILabel* currentLabel = [self.legArray objectAtIndex:i];
        if ([currentLabel isHidden])
        {
            [currentLabel setHidden:NO];
        }
        currentLabel.text = [self.currentMonster.legList objectAtIndex: i];
    }
    
    for (NSUInteger i = 0; i < [self.currentMonster.tailList count]; i++)
    {
        UILabel* currentLabel = [self.tailArray objectAtIndex:i];
        if ([currentLabel isHidden])
        {
            [currentLabel setHidden:NO];
        }
        currentLabel.text = [self.currentMonster.tailList objectAtIndex: i];
    }

	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end


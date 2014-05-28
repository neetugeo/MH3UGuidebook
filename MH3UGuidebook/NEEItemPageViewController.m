//
//  NEEViewController.m
//  MH3UItemView
//
//  Created by Neetu George on 5/5/14.
//             neetugeo@usc.edu
//
//

#import "NEEItemPageViewController.h"
#import "NEEMH3UModel.h"

@interface NEEItemPageViewController ()
@property (weak, nonatomic) NEEMH3UModel* model;
@property (weak, nonatomic) IBOutlet UILabel *itemName;

//Combine
@property (weak, nonatomic) IBOutlet UILabel *Combine1;
@property (weak, nonatomic) IBOutlet UILabel *Combine2;
@property (weak, nonatomic) IBOutlet UILabel *Combine3;
@property (weak, nonatomic) IBOutlet UILabel *Combine4;
@property (weak, nonatomic) NSArray* combineLabels;

//Location
@property (weak, nonatomic) IBOutlet UILabel *Location1;
@property (weak, nonatomic) IBOutlet UILabel *Location2;
@property (weak, nonatomic) IBOutlet UILabel *Location3;
@property (weak, nonatomic) IBOutlet UILabel *Location4;
@property (weak, nonatomic) IBOutlet UILabel *Location5;
@property (weak, nonatomic) IBOutlet UILabel *Location6;
@property (weak, nonatomic) NSArray* locationLabels;


//Quest
@property (weak, nonatomic) IBOutlet UILabel *Quest1;
@property (weak, nonatomic) IBOutlet UILabel *Quest2;
@property (weak, nonatomic) IBOutlet UILabel *Quest3;
@property (weak, nonatomic) IBOutlet UILabel *Quest4;
@property (weak, nonatomic) NSArray* questLabels;

@end

@implementation NEEItemPageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Label Arrays
    
    self.model = [NEEMH3UModel sharedModel];
    
    _combineLabels = [NSArray arrayWithObjects: _Combine1, _Combine2, _Combine3, _Combine4, nil];
    
    _locationLabels = [NSArray arrayWithObjects: _Location1, _Location2, _Location3, _Location4, _Location5, _Location6, nil];
    
    _questLabels = [NSArray arrayWithObjects: _Quest1, _Quest2, _Quest3, _Quest4, nil];
       
    self.currentItem = self.model.chosenItem;
    
    self.itemName.text = self.currentItem.name;
    
    for (NSUInteger i = 0; i < [self.currentItem.comboList count]; i++)
    {
        UILabel* currentLabel = [self.combineLabels objectAtIndex:i];
        if ([currentLabel isHidden])
        {
            [currentLabel setHidden:NO];
        }
        currentLabel.text = [self.currentItem.comboList objectAtIndex: i];
    }
    
    if (self.currentItem.locations == nil)
    {
        self.Location1.text = @"No Location";
    }
    else
    {
        for (NSUInteger i = 0; i < [self.currentItem.locations count]; i++)
        {
            UILabel* currentLabel = [self.locationLabels objectAtIndex:i];
            if ([currentLabel isHidden])
            {
                [currentLabel setHidden:NO];
            }
            currentLabel.text = [self.currentItem.locations objectAtIndex: i];
        }
    }
    if (self.currentItem.quests == nil)
    {
        self.Quest1.text = @"Not a Quest Item";
    }
    else
    {
        for (NSUInteger i = 0; i < [self.currentItem.quests count]; i++)
        {
            UILabel* currentLabel = [self.questLabels objectAtIndex:i];
            if ([currentLabel isHidden])
            {
                [currentLabel setHidden:NO];
            }
            currentLabel.text = [self.currentItem.quests objectAtIndex: i];
        }
    }

	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

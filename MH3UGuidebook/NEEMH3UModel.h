//
//  NEEFortunesModel.h
//  Lab3
//
//  Created by Neetu George on 2/20/14.
//             neetugeo@usc.edu
//  Copyright (c) 2014 Neetu George. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NEEMH3UMonster.h"
#import "NEEMH3UWeapon.h"
#import "NEEMh3UMonster.h"
#import "NEEMH3UItem.h"
#import "NEEMH3uArmour.h"


@interface NEEMH3UModel : NSObject

@property (strong,nonatomic) NSMutableArray* currentArray;
@property (strong,nonatomic) NSString* assetType;
@property (strong, nonatomic) NSString* weaponType;
@property (strong, nonatomic) NEEMH3UItem* chosenItem;
@property (strong, nonatomic) NEEMH3UWeapon* chosenWeapon;
@property (strong, nonatomic) NEEMH3UMonster* chosenMonster;
@property (strong, nonatomic) NEEMH3UArmour* chosenArmour;
@property (strong,nonatomic) NSString* chosenMap;
//Public Property


+(instancetype) sharedModel;
- (NSString *) assetAtIndex: (NSUInteger) index;
- (NSUInteger) numberOfObjects: (NSString*) whichArray;
- (void) selectWhichArray: (NSString*) whichArray;
//when you click on a block.
//depending on the type of block you selected
//it will send a string
//string propagation should occur from MENU selection
//that is where we determine which type of object the user
//wants to search.
@end

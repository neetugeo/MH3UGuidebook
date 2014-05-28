//
//  NEEMH3UArmour.h
//  ArmourPageViewController
//
//  Created by Neetu George on 5/7/14.
//  Copyright (c) 2014 Neetu George. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NEEMH3UArmour : NSObject

@property (strong,nonatomic) NSString* name;
@property (strong,nonatomic) NSString* type;
@property (strong,nonatomic) NSString* defense;
@property (strong,nonatomic) NSString* slot;
@property (strong,nonatomic) NSString* rare;
@property (strong,nonatomic) NSArray* resistanceList;
@property (strong,nonatomic) NSArray* skillsList;
@property (strong,nonatomic) NSArray* comboList;

- (id) initWithName: (NSString*)n withType:(NSString*)t withRare: (NSString*)r withSlots: (NSString*)sl withDefense: (NSString*)d withComboList: (NSArray*) cl withResistanceList: (NSArray*)rl withSkillList:(NSArray*)sl;



@end

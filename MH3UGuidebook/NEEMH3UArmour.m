//
//  NEEMH3UArmour.m
//  ArmourPageViewController
//
//  Created by Neetu George on 5/7/14.
//  Copyright (c) 2014 Neetu George. All rights reserved.
//

#import "NEEMH3UArmour.h"

@implementation NEEMH3UArmour

- (id) initWithName: (NSString*)n withType:(NSString*)t withRare: (NSString*)r withSlots: (NSString*)sl withDefense: (NSString*)d withComboList: (NSArray*) cl withResistanceList: (NSArray*)rl withSkillList:(NSArray*)s
{
    self = [super init];
    if (self)
    {
        _name = n;
        _type = t;
        _rare = r;
        _slot = sl;
        _defense = d;
        _comboList = cl;
        _resistanceList = rl;
        _skillsList = s;
    }
    return self;
}


@end

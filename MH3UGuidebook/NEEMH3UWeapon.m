//
//  NEEMH3UWeapon.m
//  MH3UGuidebook
//
//  Created by ITP Student on 5/1/14.
//  Copyright (c) 2014 USC. All rights reserved.
//

#import "NEEMH3UWeapon.h"

@interface NEEMH3UWeapon()

@end

@implementation NEEMH3UWeapon


- (id) initWithName: (NSString*)n withType:(NSString*)t withAttack: (NSString*)a withElement:(NSString*)e withSharpness: (NSString*)s withRare: (NSString*)r withSlots: (NSString*)sl withAffinity: (NSString*)af withDefense: (NSString*)d  withComboList: (NSArray*) cl withUpgradesTo:(NSArray*) uf{
    self = [super init];
    if (self)
    {
        _name = n;
        _attack = a;
        _type = t;
        _element = e;
        _sharpness = s;
        _rare = r;
        _slots = sl;
        _affinity = af;
        _defense = d;
        _comboList = cl;
        _upgradesTo = uf;
        
        
    }
    return self;
}

@end

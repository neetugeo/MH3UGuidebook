//
//  NEEMH3UWeapon.h
//  MH3UGuidebook
//
//  Created by ITP Student on 5/1/14.
//  Copyright (c) 2014 USC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NEEMH3UWeapon : NSObject
@property (strong,nonatomic) NSString* name;
@property (strong,nonatomic) NSString* type;
@property (strong,nonatomic) NSString* attack;
@property (strong,nonatomic) NSString* element;
@property (strong,nonatomic) NSString* sharpness;
@property (strong,nonatomic) NSString* sharpness1;
@property (strong,nonatomic) NSString* rare;
@property (strong,nonatomic) NSString* slots;
@property (strong,nonatomic) NSString* affinity;
@property (strong,nonatomic) NSString* defense;
@property (strong,nonatomic) NSArray* comboList;
@property (strong,nonatomic) NSArray* upgradesTo;

- (id) initWithName: (NSString*)n withType:(NSString*)t withAttack:(NSString*)a withElement:(NSString*)e withSharpness: (NSString*)s withRare: (NSString*)r withSlots: (NSString*)sl withAffinity: (NSString*)a withDefense: (NSString*)d withComboList: (NSArray*) cl withUpgradesTo: (NSArray*) uf;


@end

//
//  NEEMH3UMonster.h
//  MH3UGuidebook
//
//  Created by ITP Student on 5/1/14.
//  Copyright (c) 2014 USC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NEEMH3UMonster : NSObject
@property (strong,nonatomic) NSString* name;
@property (strong,nonatomic) NSString* trueName;
@property (strong,nonatomic) NSArray* headList;
@property (strong,nonatomic) NSArray* chestList;
@property (strong,nonatomic) NSArray* bodyList;
@property (strong,nonatomic) NSArray* backList;
@property (strong,nonatomic) NSArray* legList;
@property (strong,nonatomic) NSArray* tailList;


- (id) initWithName: (NSString*)n withTrueName:(NSString*)tn withHeadList:(NSArray*)h withChestList:(NSArray*)c withBodyList:(NSArray*)b withBackList:(NSArray*)ba withLegList:(NSArray*)l withTailList:(NSArray*)t ;

@end

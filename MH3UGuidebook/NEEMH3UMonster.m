//
//  NEEMH3UMonster.m
//  MH3UGuidebook
//
//  Created by ITP Student on 5/1/14.
//  Copyright (c) 2014 USC. All rights reserved.
//

#import "NEEMH3UMonster.h"

@interface NEEMH3UMonster()

@end


@implementation NEEMH3UMonster

- (id) initWithName: (NSString*)n withTrueName: (NSString*)tn withHeadList:(NSArray*)h withChestList:(NSArray*)c withBodyList:(NSArray*)b withBackList:(NSArray*)ba withLegList:(NSArray*)l withTailList:(NSArray*)t  {
    self = [super init];
    if (self)
    {
        _name = n;
        _trueName = tn;
        _chestList = c;
        _headList = h;
        _bodyList = b;
        _backList = ba;
        _legList = l;
        _tailList = t;
    }
    return self;
}

@end

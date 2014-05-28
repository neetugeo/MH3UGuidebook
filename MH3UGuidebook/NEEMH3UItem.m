//
//  NEEMH3UItem.m
//  MH3UItemView
//
//  Created by Neetu George on 5/5/14.
//
//

#import "NEEMH3UItem.h"
@interface NEEMH3UItem()

@end


@implementation NEEMH3UItem

- (id) initWithName: (NSString*)n withComboList:(NSArray*)c withLocations:(NSArray*)l withQuests: (NSArray*)q
{
    self = [super init];
    if (self)
    {
        _name = n;
        _comboList = c;
        _locations = l;
        _quests = q;
    }
    return self;
}


@end

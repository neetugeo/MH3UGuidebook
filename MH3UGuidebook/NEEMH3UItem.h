//
//  NEEMH3UItem.h
//  MH3UItemView
//
//  Created by Neetu George on 5/5/14.
//
//

#import <Foundation/Foundation.h>

@interface NEEMH3UItem : NSObject

@property (strong,nonatomic) NSString* name;
@property (strong,nonatomic) NSArray* comboList;
@property (strong,nonatomic) NSArray* locations;
@property (strong,nonatomic) NSArray* quests;

- (id) initWithName: (NSString*)n withComboList:(NSArray*)c withLocations:(NSArray*)l withQuests: (NSArray*)q;

@end

//
//  NEEFortunesModel.m
//  Lab3
//
//  Created by Neetu George on 2/20/14.
//             neetugeo@usc.edu
//  Copyright (c) 2014 Neetu George. All rights reserved.
//

#import "NEEMH3UModel.h"
@interface NEEMH3UModel()

//Private Property
@property (strong,nonatomic) NSArray* itemList;

@property (strong,nonatomic) NSArray* armourList;
@property (strong, nonatomic) NSArray* monsterList;


//@property (strong, nonatomic) NSArray* weaponList;
@property (strong, nonatomic) NSArray* dualBladeList;
@property (strong,nonatomic) NSArray* greatSwordList;
@property (strong,nonatomic) NSArray* weaponTypeList;

@property (strong, nonatomic) NSArray* headList;
@property (strong, nonatomic) NSArray* bodyList;
@property (strong, nonatomic) NSArray* armList;
@property (strong, nonatomic) NSArray* waistList;
@property (strong, nonatomic) NSArray* legList;
@property (strong,nonatomic) NSArray* armourTypeList;

@property (strong,nonatomic) NSArray* mapList;

@property (strong, nonatomic) NSString *filepath;
@property (strong, nonatomic) NSMutableDictionary *plist;
@end

@implementation NEEMH3UModel


+(instancetype) sharedModel {
    static NEEMH3UModel *_sharedModel = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{_sharedModel = [[self alloc]init];
    });
    return _sharedModel;
}

- (id) init {
    self = [super init];
    if (self)
    {
        //ARMOUR
        //BODY
        //Loc Lac Shawl
        NSArray* skillListArmour = [NSArray arrayWithObjects:@"Dungmaster",nil];
        NSArray* comboListArmour = [NSArray arrayWithObjects:@"Altaroth Stomach", @"Monster Fluid", @"Ice Crystal", nil];
        NSArray* resistanceListArmour = [NSArray arrayWithObjects:@"2", @"-3", @"0", @"1", @"0", nil];
        NEEMH3UArmour* locLacShawl = [[NEEMH3UArmour alloc] initWithName:@"Loc Lac Shawl" withType: @"Body" withRare:@"1" withSlots:@"1" withDefense:@"57-5" withComboList: comboListArmour withResistanceList: resistanceListArmour withSkillList: skillListArmour];
        
        //HEAD
        //Selene Cap Z
        skillListArmour = [NSArray arrayWithObjects:@"Hearing", @"Water Atk", @"Loading", @"Recoil",nil];
        comboListArmour = [NSArray arrayWithObjects:@"Crooked Hardhorn", @"G.Ceadeus Shard", @"Dark Dragongem", @"Conqueror's Seal", nil];
        resistanceListArmour = [NSArray arrayWithObjects:@"1", @"5", @"2", @"-1", @"6", nil];
        NEEMH3UArmour* seleneCapZ = [[NEEMH3UArmour alloc] initWithName: @"Selene Cap Z" withType: @"Head" withRare: @"9" withSlots: @"3" withDefense: @"65-49" withComboList: comboListArmour withResistanceList: resistanceListArmour withSkillList: skillListArmour];
        
        //ARMS
        //Blue Star Sleeves
        skillListArmour = [NSArray arrayWithObjects:@"Dragon Atk", @"Sea Legs", @"Spirit", nil];
        comboListArmour = [NSArray arrayWithObjects:@"Studio Pass G", @"A.Rath Cortex", @"Rath Ripper", @"Brach Pounder+", nil];
        resistanceListArmour = [NSArray arrayWithObjects:@"2", @"2", @"2", @"2", @"2", nil];
        NEEMH3UArmour* blueStarSleeves = [[NEEMH3UArmour alloc] initWithName: @"Blue Star Sleeves" withType: @"Arm" withRare: @"10" withSlots: @"2" withDefense: @"66-53" withComboList: comboListArmour withResistanceList: resistanceListArmour withSkillList: skillListArmour];

        
        //WAIST
        //Golden Lunecoil
        skillListArmour = [NSArray arrayWithObjects:@"Protection", @"Destroyer", @"Thunder Res", @"Fate", nil];
        comboListArmour = [NSArray arrayWithObjects:@"G.Rathian Shard", @"Rathian Mantle", @"Rath Gleem", @"Allfire Stone", nil];
        resistanceListArmour = [NSArray arrayWithObjects:@"2", @"-4", @"0", @"-7", @"4", nil];
        NEEMH3UArmour* goldenLunecoil = [[NEEMH3UArmour alloc] initWithName: @"Golden Lunecoil" withType: @"Waist" withRare: @"10" withSlots: @"3" withDefense: @"118-100" withComboList: comboListArmour withResistanceList: resistanceListArmour withSkillList: skillListArmour];
        
        //LEGS
        skillListArmour = [NSArray arrayWithObjects:@"Expert", @"Stam Recov", @"CurrentRes", @"EdgeMaster", nil];
        comboListArmour = [NSArray arrayWithObjects:@"A.Lagi Shard", @"A.Lagi D-Shocker", @"Ghostly Quartz", @"Cloudy Moonshard", nil];
        resistanceListArmour = [NSArray arrayWithObjects:@"-5", @"3", @"0", @"4", @"-7", nil];
        NEEMH3UArmour* netherGreaves = [[NEEMH3UArmour alloc] initWithName: @"Nether Greaves" withType: @"Leg" withRare: @"10" withSlots: @"2" withDefense: @"120-106" withComboList: comboListArmour withResistanceList: resistanceListArmour withSkillList: skillListArmour];
        
        //ITEMS
        //Potion
        NSArray* combListItem = [NSArray arrayWithObjects: @"Herb", @"Blue Mushroom", nil];
        NEEMH3UItem *potion = [[NEEMH3UItem alloc] initWithName: @"Potion" withComboList: combListItem withLocations: nil withQuests: nil];
        
        
        //MONSTERS
        //Lagiacrus
        NSArray* headList = [NSArray arrayWithObjects: @"40", @"40", @"40", @"15", @"0", @"5", @"0", @"5", nil];
        NSArray* chestList = [NSArray arrayWithObjects: @"45", @"40", @"35", @"20", @"0", @"10", @"0", @"10", nil];
        NSArray* bodyList = [NSArray arrayWithObjects: @"35", @"35", @"20", @"15", @"0", @"5", @"0", @"5", nil];
        NSArray* backList = [NSArray arrayWithObjects: @"25", @"40", @"15", @"25", @"0", @"15", @"0", @"15", nil];
        NSArray* legList = [NSArray arrayWithObjects: @"27", @"25", @"10", @"15", @"0", @"5", @"0", @"5", nil];
        NSArray* tailList = [NSArray arrayWithObjects: @"30", @"35", @"15", @"15", @"0", @"5", @"0", @"5", nil];
        NEEMH3UMonster *lagiacrus = [[NEEMH3UMonster alloc] initWithName:@"Lagiacrus" withTrueName:@"Lagiacrus" withHeadList:headList withChestList:chestList withBodyList:bodyList withBackList:backList withLegList:legList withTailList:tailList];
       
        //Ivory Lagiacrus
        headList = [NSArray arrayWithObjects: @"18", @"15", @"18", @"10", @"0", @"8", @"0", @"10", nil];
        chestList = [NSArray arrayWithObjects: @"44", @"40", @"35", @"22", @"0", @"10", @"0", @"22", nil];
        bodyList = [NSArray arrayWithObjects: @"35", @"35", @"30", @"20", @"0", @"10", @"0", @"20", nil];
        backList = [NSArray arrayWithObjects: @"55", @"50", @"40", @"30", @"0", @"15", @"0", @"18", nil];
        legList = [NSArray arrayWithObjects: @"25", @"28", @"25", @"18", @"0", @"5", @"0", @"18", nil];
        tailList = [NSArray arrayWithObjects: @"38", @"43", @"45", @"20", @"0", @"8", @"0", @"20", nil];
        NEEMH3UMonster *lagiacrusIvory = [[NEEMH3UMonster alloc] initWithName:@"Lagiacrus Ivory" withTrueName:@"Ivory Lagiacrus" withHeadList:headList withChestList:chestList withBodyList:bodyList withBackList:backList withLegList:legList withTailList:tailList];
        
        //Rathalos
        headList = [NSArray arrayWithObjects: @"75", @"70", @"60", @"0", @"15", @"15", @"20", @"35", nil];
        chestList = [NSArray arrayWithObjects: @"44", @"40", @"20", @"0", @"10", @"10", @"15", @"20", nil];
        bodyList = [NSArray arrayWithObjects: @"44", @"40", @"15", @"0", @"5", @"5", @"20", @"10", nil];
        backList = [NSArray arrayWithObjects: @"25", @"30", @"20", @"15", @"10", @"10", @"15", @"25", nil];
        legList = [NSArray arrayWithObjects: @"30", @"25", @"45", @"0", @"5", @"5", @"10", @"10", nil];
        tailList = [NSArray arrayWithObjects: @"30", @"30", @"25", @"0", @"5", @"5", @"10", @"25", nil];
        NEEMH3UMonster *rathalos = [[NEEMH3UMonster alloc] initWithName:@"Rathalos" withTrueName:@"Rathalos" withHeadList:headList withChestList:chestList withBodyList:bodyList withBackList:backList withLegList:legList withTailList:tailList];
        
        //AzureRathalos
        headList = [NSArray arrayWithObjects: @"70", @"50", @"55", @"0", @"10", @"15", @"10", @"20", nil];
        chestList = [NSArray arrayWithObjects: @"45", @"40", @"30", @"0", @"10", @"15", @"10", @"20", nil];
        bodyList = [NSArray arrayWithObjects: @"45", @"40", @"70", @"0", @"10", @"15", @"10", @"10", nil];
        backList = [NSArray arrayWithObjects: @"20", @"25", @"30", @"10", @"15", @"20", @"15", @"20", nil];
        legList = [NSArray arrayWithObjects: @"28", @"25", @"28", @"0", @"15", @"20", @"15", @"30", nil];
        tailList = [NSArray arrayWithObjects: @"23", @"23", @"20", @"0", @"5", @"5", @"5", @"20", nil];
        NEEMH3UMonster *azureRathalos = [[NEEMH3UMonster alloc] initWithName:@"Rathalos Azure" withTrueName:@"Azure Rathalos" withHeadList:headList withChestList:chestList withBodyList:bodyList withBackList:backList withLegList:legList withTailList:tailList];
        
        
        //WEAPONS
        //DUAL SWORD
        //Dios Slicers Plus
        NSArray* comboListWeapon = [NSArray arrayWithObjects: @"Brach Pounder", @"Mystery Slime", @"Brachydios Gem", @"B.Diab Carapace", @"Dios Slicers", nil];
        NSArray* upgradeToWeapon = [NSArray arrayWithObjects: @"Demolition Blades", nil];
        NEEMH3UWeapon *diosSlicersPlus = [[NEEMH3UWeapon alloc] initWithName:@"Dios Slicers +" withType: @"Dual Blade" withAttack: @"308" withElement: @"200 Slime" withSharpness: @"sharpness" withRare: @"6" withSlots: @"0" withAffinity: @"N/A" withDefense: @"N/A" withComboList:comboListWeapon withUpgradesTo:upgradeToWeapon];
        
        comboListWeapon = [NSArray arrayWithObjects: @"Agnaktor Cortex", @"Agnaktor Piel", @"Agnaktor Talon", @"Supple Piel", @"Salamanders", nil];
        upgradeToWeapon = [NSArray arrayWithObjects: @"Agnaktor Inferno", nil];
        NEEMH3UWeapon *ignisNoire = [[NEEMH3UWeapon alloc] initWithName:@"Ignis Noire" withType: @"Dual Blade" withAttack: @"294" withElement: @"300 Fire" withSharpness: @"sharpness" withRare: @"9" withSlots: @"0" withAffinity: @"15" withDefense: @"N/A" withComboList:comboListWeapon withUpgradesTo:upgradeToWeapon];
        
        //GREAT SWORD
        //Iron Sword
        comboListWeapon = [NSArray arrayWithObjects: @"Iron Ore",nil];
        upgradeToWeapon = [NSArray arrayWithObjects: @"Iron Sword+", nil];
        NEEMH3UWeapon *ironSword = [[NEEMH3UWeapon alloc] initWithName:@"Iron Sword" withType: @"Great Sword" withAttack:@"336" withElement:@"50 Ice" withSharpness:@"N/A" withRare:@"1" withSlots:@"0" withAffinity:@"N/A" withDefense:@"N/A" withComboList:comboListWeapon withUpgradesTo: upgradeToWeapon];
        
        
        //Weapons Arrays
        _weaponTypeList = [NSArray arrayWithObjects: @"Dual Blade", @"Great Sword",nil];
        _dualBladeList = [NSArray arrayWithObjects: diosSlicersPlus, ignisNoire, nil];
        _greatSwordList = [NSArray arrayWithObjects: ironSword, nil];
        
        //Armours Arrays
        _armourTypeList = [NSArray arrayWithObjects: @"Head", @"Body", @"Arm", @"Waist", @"Leg", nil];
        _bodyList = [NSArray arrayWithObjects:locLacShawl,nil];
        _headList = [NSArray arrayWithObjects: seleneCapZ, nil];
        _armList = [NSArray arrayWithObjects: blueStarSleeves, nil];
        _waistList = [NSArray arrayWithObjects: goldenLunecoil, nil];
        _legList = [NSArray arrayWithObjects: netherGreaves, nil];
        
        //Other Arrays
        _monsterList = [NSArray arrayWithObjects:lagiacrus, lagiacrusIvory, rathalos, azureRathalos, nil];
        _itemList = [NSArray arrayWithObjects:potion, nil];
        _mapList = [NSArray arrayWithObjects:@"Moga Woods", @"Sandy Plains", @"Volcano", @"Tundra", @"Flooded Forest", nil];
        
    }
    return self;
}

 -(NSUInteger) numberOfObjects: (NSString*) whichArray {
    NSUInteger number;
    
    if ([whichArray isEqualToString:@"Weapons"])
    {
        number = [_weaponTypeList count];
    }
    else if ([whichArray isEqualToString: @"Monsters"])
    {
        number = [_monsterList count];
    }
    else
    {
        number = -1;
    }
    
    return number;
}

- (void) selectWhichArray: (NSString*) whichArray
{
    
    
    if ([whichArray isEqualToString: @"Dual Blade"])
    {
        _currentArray = _dualBladeList;
        _assetType = @"Weapons";
    }
    else if ([whichArray isEqualToString: @"Great Sword"])
    {
        _currentArray = _greatSwordList;
        _assetType = @"Weapons";
    }
    else if ([whichArray isEqualToString: @"Armours"])
    {
        _currentArray = _armourList;
        _assetType = @"Armours";
    }
    else if ([whichArray isEqualToString: @"Items"])
    {
        _currentArray = _itemList;
        _assetType = @"Items";
    }
    else if ([whichArray isEqualToString: @"Monsters"])
    {
        _currentArray = _monsterList;
        _assetType = @"Monsters";
    }
    else if ([whichArray isEqualToString: @"Weapon Types"])
    {
        _currentArray = _weaponTypeList;
        _assetType = @"Weapon Types";
    }
    else if ([whichArray isEqualToString:@"Maps"])
    {
        _currentArray = _mapList;
        _assetType = @"Maps";
    }
    
    //Armour Types
    else if ([whichArray isEqualToString:@"Armour Types"])
    {
        _currentArray = _armourTypeList;
        _assetType = @"Armour Types";
    }
    else if ([whichArray isEqualToString:@"Head"])
    {
        _currentArray = _headList;
        _assetType = @"Armour";
    }
    else if ([whichArray isEqualToString:@"Body"])
    {
        _currentArray = _bodyList;
        _assetType = @"Armour";
    }
    else if ([whichArray isEqualToString:@"Arm"])
    {
        _currentArray = _armList;
        _assetType = @"Armour";
    }
    else if ([whichArray isEqualToString:@"Waist"])
    {
        _currentArray = _waistList;
        _assetType = @"Armour";
    }
    else if ([whichArray isEqualToString:@"Leg"])
    {
        _currentArray = _legList;
        _assetType = @"Armour";
    }

}


- (NSString *) assetAtIndex: (NSUInteger) index {
    NSString * string;
    return string;
}

@end

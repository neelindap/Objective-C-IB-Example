//
//  Menu.m
//  Assignment_4
//
//  Created by Neel on 2/15/17.
//  Copyright © 2017 Neel Indap. All rights reserved.
//

#import "Menu.h"

@implementation Menu

@synthesize menu_items = _menu_items;

-(id)initMenu{
    self = [super init];
    if(self) {
        _menu_items = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void) addMenuItem:(Menu_Item*) menu_item{
    [_menu_items addObject:menu_item];
}


@end

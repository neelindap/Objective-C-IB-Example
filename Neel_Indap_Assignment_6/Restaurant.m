//
//  Restaurant.m
//  Assignment_4
//
//  Created by Neel on 2/15/17.
//  Copyright © 2017 Neel Indap. All rights reserved.
//

#import "Restaurant.h"

@implementation Restaurant

@synthesize menus = _menus;

-(id) initRest{
    self = [super init];
    if(self) {
    _menus = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void) addMenu:(Menu*) menu{
    [_menus addObject:menu];
}

@end

//
//  Restaurant.h
//  Assignment_4
//
//  Created by Neel on 2/15/17.
//  Copyright © 2017 Neel Indap. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Menu.h"

@interface Restaurant : NSObject

@property NSString *address;
@property NSString *city;
@property NSString *name;
@property NSString *phone;
@property NSString *speciality;
@property int zip;
@property NSMutableArray *menus;

-(id) initRest;
-(void) addMenu: (Menu*) menu;

@end

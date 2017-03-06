//
//  Menu.h
//  Assignment_4
//
//  Created by Neel on 2/15/17.
//  Copyright © 2017 Neel Indap. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Menu_Item.h"

@interface Menu : NSObject

@property NSString *name;
@property NSString *type;
@property NSMutableArray *menu_items;

-(id)initMenu;
-(void) addMenuItem:(Menu_Item*) menu_item;

@end

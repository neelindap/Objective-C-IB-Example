//
//  ViewController.h
//  Neel_Indap_Assignment_6
//
//  Created by Neel on 3/1/17.
//  Copyright © 2017 Neel Indap. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddMenuViewController.h"
#import "ListMenuViewController.h"
#import "SearchMenuViewController.h"
#import "Restaurant.h"

@interface RootViewController : UIViewController{
    AddMenuViewController *addViewController;
    ListMenuViewController *listMenuViewController;
    SearchMenuViewController *searchMenuViewController;
}

@property (strong, nonatomic) Restaurant *restaurant;

- (IBAction)addMenuBtn:(id)sender;

- (IBAction)listMenuBtn:(id)sender;

- (IBAction)searchMenuBtn:(id)sender;

@end


//
//  ViewController.m
//  Neel_Indap_Assignment_6
//
//  Created by Neel on 3/1/17.
//  Copyright © 2017 Neel Indap. All rights reserved.
//

#import "RootViewController.h"
#import "Restaurant.h"

@interface RootViewController ()

@end

@implementation RootViewController

@synthesize restaurant = _restaurant;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initRest];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void) initRest{
    _restaurant = [[Restaurant alloc]initRest];
    
    _restaurant.name = @"Il Mondo";
    _restaurant.address = @"Huntington Ave";
    _restaurant.city = @"Boston";
    _restaurant.speciality = @"Pizzas";
    _restaurant.phone = @"169-152-1879";
    _restaurant.zip = 02115;
    
    Menu *m = [[Menu alloc]initMenu];
    m.name = @"Breakfast";
    m.type = @"Breakfast Menu";
    [_restaurant addMenu:m];
    
    m = [[Menu alloc]initMenu];
    m.name = @"Lunch";
    m.type = @"Lunch Menu";
    [_restaurant addMenu:m];
    
    m = [[Menu alloc]initMenu];
    m.name = @"Dinner";
    m.type = @"Dinner Menu";
    [_restaurant addMenu:m];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addMenuBtn:(id)sender {
    addViewController = [[AddMenuViewController alloc]initWithNibName:@"AddMenuView" bundle:
                         nil];
    addViewController.restaurant = _restaurant;
    //[self.view addSubview:addViewController.view];
    /*CATransition *transition = [CATransition animation];
     transition.duration = 0.5;
     transition.type = kCATransitionPush;
     transition.subtype = kCATransitionFromLeft;
     [transition setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
     [self.view.layer addAnimation:transition forKey:nil];
     
     [self.view addSubview:addViewController.view]; */
    
    //[self presentViewController:addViewController animated:YES completion:nil];
    
    [UIView transitionWithView:self.view
                      duration:1.0
                      options:UIViewAnimationOptionTransitionFlipFromRight
                      animations:^{
                        [self.view addSubview:addViewController.view];
                      }
                      completion:NULL];
}

- (IBAction)listMenuBtn:(id)sender {
    listMenuViewController = [[ListMenuViewController alloc]initWithNibName:@"ListMenuViewController" bundle:
                              nil];
    listMenuViewController.menus = _restaurant.menus;
    //[self.view addSubview:listMenuViewController.view];
    
    [UIView transitionWithView:self.view
                      duration:1.0
                       options:UIViewAnimationOptionTransitionFlipFromRight
                    animations:^{
                        [self.view addSubview:listMenuViewController.view];
                    }
                    completion:NULL];
}

- (IBAction)searchMenuBtn:(id)sender {
    searchMenuViewController = [[SearchMenuViewController alloc]initWithNibName:@"SearchMenuViewController" bundle:nil];
    searchMenuViewController.menu = _restaurant.menus;
    //[self.view addSubview:searchMenuViewController.view];
    [UIView transitionWithView:self.view
                      duration:1.0
                       options:UIViewAnimationOptionTransitionFlipFromRight
                    animations:^{
                        [self.view addSubview:searchMenuViewController.view];
                    }
                    completion:NULL];
}
@end

//
//  SearchMenuViewController.m
//  Neel_Indap_Assignment_6
//
//  Created by Neel on 3/4/17.
//  Copyright © 2017 Neel Indap. All rights reserved.
//

#import "SearchMenuViewController.h"
#import "Menu.h"

@interface SearchMenuViewController ()

@end

@implementation SearchMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

- (IBAction)searchBtn:(id)sender {
    NSString *temp = @"";
    BOOL found = NO;
    
    for(Menu *menu in _menu){
        for(Menu_Item *menu_item in menu.menu_items){
            if([menu_item.name isEqualToString:_searchTextField.text]){
                temp = [NSString stringWithFormat:@"%@\n%@\t\t%@\t\t%@\t\t%@", temp, menu_item.name, menu_item.descrption, menu_item.price, menu_item.rating];
                found = YES;
            }
        }
    }
    _searchTextView.text = temp;
    
    if(!found){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle: nil message:@"No item with given name present" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
}



- (IBAction)backBtn:(id)sender {
    [UIView transitionWithView:self.view
                      duration:0.8
                       options:UIViewAnimationOptionTransitionFlipFromLeft
                    animations:^{
                        self.view.alpha = 0;
                    }
                    completion:^(BOOL finished){
                        [self.view removeFromSuperview];
                    }];
}
@end

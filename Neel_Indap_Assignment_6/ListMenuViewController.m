//
//  ListMenyViewController.m
//  Neel_Indap_Assignment_6
//
//  Created by Neel on 3/2/17.
//  Copyright © 2017 Neel Indap. All rights reserved.
//

#import "ListMenuViewController.h"
#import "Menu.h"
@interface ListMenuViewController ()

@end

@implementation ListMenuViewController


@synthesize menus = _menus;

UIPickerView *menuPicker = nil;
//NSString* selectedMenu = @"Breakfast";
NSArray *menuTypeArrayList;


- (void)viewDidLoad {
    [super viewDidLoad];
    [self initPicker];
    [self printMenu];
}


- (void) initPicker{
    menuPicker = [[UIPickerView alloc]init];
    [menuPicker setBackgroundColor:[UIColor whiteColor]];
    menuPicker.dataSource = self;
    menuPicker.delegate = self;
    [menuPicker setShowsSelectionIndicator:YES];
    [self.menuName setInputView:menuPicker];
    menuTypeArrayList = @[@"Breakfast", @"Lunch", @"Dinner"];
    self.menuName.text = [menuTypeArrayList objectAtIndex:0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)editPicker:(id)sender {
    menuPicker.hidden = NO;
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

-(void) printMenu{
    NSString *temp = @"";
    for(Menu *menu in _menus){
        if([menu.name isEqualToString:self.menuName.text]){
            for(Menu_Item *menu_item in menu.menu_items){
                temp = [NSString stringWithFormat:@"%@\n%@\t\t%@\t\t%@\t\t%@", temp, menu_item.name, menu_item.descrption, menu_item.price, menu_item.rating];
            }
        }
    }
    _menuTextView.text = temp;
    
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    _menuName.text = [menuTypeArrayList objectAtIndex:row];
    [[self view] endEditing:YES];
    [self printMenu];
    //menuPicker.hidden = YES;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return menuTypeArrayList.count;
}

- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSString*) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return menuTypeArrayList[row];
}

@end

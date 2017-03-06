//
//  AddMenuViewController.m
//  Neel_Indap_Assignment_6
//
//  Created by Neel on 3/1/17.
//  Copyright © 2017 Neel Indap. All rights reserved.
//

#import "AddMenuViewController.h"
#import "Restaurant.h"

@interface AddMenuViewController ()

@end

@implementation AddMenuViewController



NSArray *menuTypeArray;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self initPicker];
}

- (void) initPicker{
    UIPickerView *menuPicker = [[UIPickerView alloc]init];
    [menuPicker setBackgroundColor:[UIColor whiteColor]];
    menuPicker.dataSource = self;
    menuPicker.delegate = self;
    [menuPicker setShowsSelectionIndicator:YES];
    [self.MenuName setInputView:menuPicker];
    menuTypeArray = @[@"Breakfast", @"Lunch", @"Dinner"];
    _MenuName.text = [menuTypeArray objectAtIndex:0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    _MenuName.text = [menuTypeArray objectAtIndex:row];
    [[self view] endEditing:YES];
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return menuTypeArray.count;
}

- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSString*) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return menuTypeArray[row];
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

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

- (IBAction)SaveButton:(id)sender {
    NSString *alertMessage =@"";
    
    if([self validateData]){
        alertMessage = @"Data saved successfully!";
        [self addMenuItemToMenu];
        [self clearInputFields];
    }
    else{
        alertMessage = @"Please enter all data fields";
    }
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle: nil message:alertMessage delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}

-(BOOL) validateData{
    
    if(self.MenuName.hasText &&
       self.ItemName.hasText &&
       self.ItemDescription.hasText &&
       self.ItemPrice.hasText &&
       self.ItemRating.hasText){
        return YES;
    }
    
    return NO;
}

-(void) addMenuItemToMenu{
    
    NSString *item = _MenuName.text;
    for(Menu *menu in _restaurant.menus){
        
        if([menu.name isEqualToString:item]){
            
            //Menu *menu = [_restaurant.menus objectAtIndex:0];
            Menu_Item *mi = [[Menu_Item alloc]init];
            
            mi.name = self.ItemName.text;
            mi.descrption = self.ItemDescription.text;
            mi.price = [NSNumber numberWithInt:[self.ItemPrice.text intValue]];
            mi.rating = [NSNumber numberWithInt:[self.ItemRating.text intValue]];
            
            [menu addMenuItem:mi];
            break;
        }
    }
}

-(void) clearInputFields{
    
    self.ItemName.text = @"";
    self.ItemDescription.text = @"";
    self.ItemPrice.text = @"";
    self.ItemRating.text = @"";
}


@end

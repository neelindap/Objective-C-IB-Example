//
//  AddMenuViewController.h
//  Neel_Indap_Assignment_6
//
//  Created by Neel on 3/1/17.
//  Copyright © 2017 Neel Indap. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Restaurant.h"

@interface AddMenuViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (strong , nonatomic) Restaurant *restaurant;

@property (weak, nonatomic) IBOutlet UITextField *MenuName;
@property (weak, nonatomic) IBOutlet UITextField *ItemName;
@property (weak, nonatomic) IBOutlet UITextField *ItemDescription;
@property (weak, nonatomic) IBOutlet UITextField *ItemPrice;
@property (weak, nonatomic) IBOutlet UITextField *ItemRating;
- (IBAction)backBtn:(id)sender;
- (IBAction)SaveButton:(id)sender;

@end

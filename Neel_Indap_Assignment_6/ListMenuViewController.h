//
//  ListMenyViewController.h
//  Neel_Indap_Assignment_6
//
//  Created by Neel on 3/2/17.
//  Copyright © 2017 Neel Indap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListMenuViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource, UITextInput>

@property NSArray* menus;
@property (weak, nonatomic) IBOutlet UITextField *menuName;
@property (weak, nonatomic) IBOutlet UITextView *menuTextView;
- (IBAction)editPicker:(id)sender;
- (IBAction)backBtn:(id)sender;
@end

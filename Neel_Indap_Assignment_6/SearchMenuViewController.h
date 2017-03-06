//
//  SearchMenuViewController.h
//  Neel_Indap_Assignment_6
//
//  Created by Neel on 3/4/17.
//  Copyright © 2017 Neel Indap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchMenuViewController : UIViewController

@property (strong, nonatomic) NSArray* menu;
@property (weak, nonatomic) IBOutlet UITextField *searchTextField;
- (IBAction)searchBtn:(id)sender;
@property (weak, nonatomic) IBOutlet UITextView *searchTextView;
- (IBAction)backBtn:(id)sender;

@end

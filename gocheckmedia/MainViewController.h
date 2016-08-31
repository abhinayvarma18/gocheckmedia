//
//  MainViewController.h
//  gocheckmedia
//
//  Created by Abhinay Varma on 28/08/16.
//  Copyright (c) 2016 Abhinay Varma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UITextViewDelegate> {
    UITextField *txtField1;
    UITextView *txtActiveField;
    UIView *inputAccView;
    UIView *view1;
    UIView *view2;
    UIButton *btn1;
    UIButton *btn2;
    UIButton *btn3;
    UIButton *btn4;
    UIButton *btn5;
    UIButton *btn6;
    UIButton *btn7;
    UIButton *btn8;
    UIButton *btn9;
    UIButton *btn10;
    UIButton *btn11;
    UITableView *autocompleteTableView;
    UIButton *btn12;
   // BOOL *abc ;
    NSMutableArray *autocompleteNames;
    NSMutableArray *pastName;
}

@property (strong, nonatomic) IBOutlet UIView *viewr;

@property (weak, nonatomic) IBOutlet UITextView *textQuote;

@property (nonatomic, retain) UITextView *txtActiveField;
@property (nonatomic, retain) UIView *inputAccView;
@property (nonatomic, retain) UIView *view1;
@property (nonatomic, retain) UIView *view2;
@property (nonatomic, retain) UITableView *autocompleteTableView;
@property (nonatomic, retain) UIButton *btn1;
@property (nonatomic, retain) UIButton *btn2;
@property (nonatomic, retain) UIButton *btn3;
@property (nonatomic, retain) UIButton *btn4;
@property (nonatomic, retain) UIButton *btn5;
@property (nonatomic, retain) UIButton *btn6;
@property (nonatomic, retain) UIButton *btn7;
@property (nonatomic, retain) UIButton *btn8;
@property (nonatomic, retain) UIButton *btn9;
@property (nonatomic, retain) UIButton *btn10;
@property (nonatomic, retain) UIButton *btn11;
@property (nonatomic, retain) UIButton *btn12;
@property (nonatomic, retain) NSMutableArray *pastName;
@property (nonatomic, retain) NSMutableArray *autocompleteNames;
@property (nonatomic, assign) BOOL flag;
@property (nonatomic, assign) int index;
@property (nonatomic, assign) int height;
@end

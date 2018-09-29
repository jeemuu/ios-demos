//
//  ViewController.h
//  login
//
//  Created by jeemuu on 2018/9/20.
//  Copyright © 2018年 com.abchina.lilei. All rights reserved.
//

#import <UIKit/UIKit.h>

#define SCREEN_SIZE [UIScreen mainScreen].bounds.size
@interface ViewController : UIViewController
{
    UITextField* _userText;
    UITextField* _passText;
    __weak IBOutlet UIButton *_button;
    __weak IBOutlet UILabel *label;
}
- (IBAction)pressButton:(id)sender;

@end


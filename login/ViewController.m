//
//  ViewController.m
//  login
//
//  Created by jeemuu on 2018/9/20.
//  Copyright © 2018年 com.abchina.lilei. All rights reserved.
//

#import "ViewController.h"

int count = 1;
int pressCount = 0;
@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = [NSString stringWithFormat:@"%d视图控制器",count];
    count++;
    
    
    //user text
    _userText = [[UITextField alloc]initWithFrame:CGRectMake(20, 80, SCREEN_SIZE.width-40, 30)];
    _userText.borderStyle = UITextBorderStyleRoundedRect;
    _userText.placeholder = @"请输入用户名";
    UIImageView *loginImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 20, 20)];
    loginImage.image = [UIImage imageNamed:@"icon-40"];
    _userText.leftView = loginImage;
    _userText.leftViewMode = UITextFieldViewModeAlways;
    
    //pass text
    _passText = [[UITextField alloc]initWithFrame:CGRectMake(20, 130, SCREEN_SIZE.width-40, 30)];
    _passText.borderStyle = UITextBorderStyleRoundedRect;
    _passText.placeholder = @"请输入用密码";
    UIImageView *passImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 20, 20)];
    passImage.image = [UIImage imageNamed:@"icon-72"];
    _passText.leftView = passImage;
    _passText.leftViewMode = UITextFieldViewModeAlways;
    _passText.secureTextEntry = YES;
    
    //登录按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(SCREEN_SIZE.width/4-50, 180, 100, 30);
    [btn setTitle:@"登录" forState:UIControlStateNormal];
    btn.layer.masksToBounds=YES;
    btn.layer.cornerRadius =10;
    btn.backgroundColor = [UIColor cyanColor];
    [btn addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
    
    //注册按钮
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeSystem];
    btn2.frame = CGRectMake(SCREEN_SIZE.width/4*3-50, 180, 100, 30);
    [btn2 setTitle:@"注册" forState:UIControlStateNormal];
    btn2.layer.masksToBounds=YES;
    btn2.layer.cornerRadius =10;
    btn2.backgroundColor = [UIColor cyanColor];
    [btn2 addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
    
    
    //push按钮
    UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeSystem];
    btn3.frame = CGRectMake(SCREEN_SIZE.width/4-50, 230, 200, 30);
    [btn3 setTitle:@"navigator push" forState:UIControlStateNormal];
    btn3.layer.masksToBounds=YES;
    btn3.layer.cornerRadius =10;
    btn3.backgroundColor = [UIColor cyanColor];
    [btn3 addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    

    [[self view]addSubview:_userText];
    [[self view]addSubview:_passText];
    [[self view]addSubview:btn];
    [[self view]addSubview:btn2];
    [[self view]addSubview:btn3];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)push{
    
    ViewController *con = [[ViewController alloc]init];
    [self.navigationController pushViewController:con animated:YES];
    
}

-(void)dealloc{
    count--;
}

- (void)login{
    NSString *item = @"";
    if(_userText.text.length == 0){
        item = @"用户名";
    }
    
    if(_passText.text.length == 0){
        item = @"密码";
    }
    
    if(_userText.text.length == 0 || _passText.text.length == 0){
        item = [NSString stringWithFormat:@"请输入%@", item];
        UIAlertController *alerCon = [UIAlertController alertControllerWithTitle:@"温馨提示" message:item preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
        }];
        [alerCon addAction:action];
        [self presentViewController:alerCon animated:YES completion:nil];
        return;
    }
    
}

/*
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    UITabBarController *tabBar = [[UITabBarController alloc]init];
    tabBar.tabBar.barTintColor = [UIColor greenColor];
    tabBar.tabBar.tintColor = [UIColor purpleColor];
    NSMutableArray *array = [[NSMutableArray alloc]init];
    for(int i=0; i<10; i++){
        UIViewController *con = [[UIViewController alloc]init];
        con.view.backgroundColor = [UIColor colorWithRed:arc4random()%255/255.0  green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:arc4random()%255/255.0];
        
        con.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemContacts tag:i];
        //con.tabBarItem.title = [NSString stringWithFormat:@"%d视图", i];
        //con.tabBarItem.image = [UIImage imageNamed:@"home-or"];
        //con.tabBarItem.selectedImage = [UIImage imageNamed:@"home-or"];
        [array addObject:con];
        
    }
    
    tabBar.viewControllers = array;
    [self presentViewController:tabBar animated:YES completion:nil];
}*/


- (IBAction)pressButton:(id)sender {
    
    pressCount++;
    
    NSString *str = [NSString stringWithFormat:@"press count %d", pressCount];
    [label setText:str];
}
@end

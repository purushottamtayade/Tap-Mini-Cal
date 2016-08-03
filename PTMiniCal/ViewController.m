//
//  ViewController.m
//  PTMiniCal
//
//  Created by Felix Training P_06 on 26/07/16.
//  Copyright © 2016 Purushottam Tayade. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *borderLabel;
    [borderLabel setFrame:CGRectMake(140, 90, 120, 120)];
    [borderLabel setBackgroundColor:[UIColor blackColor]];
    [self.view addSubview:borderLabel];
    
    val = @"0";
    label = [[UILabel alloc]init];
    
    [label setFrame:CGRectMake(100, 100, 200, 100)];
    [label setText:val];
    
    [label setTextColor:[UIColor whiteColor]];
    [label setBackgroundColor:[UIColor blackColor]];
    [label setTextAlignment:NSTextAlignmentCenter];
    
    [self.view addSubview:label];
   
    //Button
    
    UIButton *reset = [[UIButton alloc]initWithFrame:CGRectMake(100, 302, 200, 30)];
    
    UIButton *add = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 100, 50)];
    UIButton *sub = [[UIButton alloc]initWithFrame:CGRectMake(100, 250, 100, 50)];
    UIButton *mult = [[UIButton alloc]initWithFrame:CGRectMake(200, 200, 100, 50)];
    UIButton *div = [[UIButton alloc]initWithFrame:CGRectMake(200, 250, 100, 50)];

    [reset setBackgroundColor:[UIColor blackColor]];
    [add setBackgroundColor:[UIColor greenColor]];
    [sub setBackgroundColor:[UIColor redColor]];
    [mult setBackgroundColor:[UIColor purpleColor]];
    [div setBackgroundColor:[UIColor blueColor]];

    [reset setTitle:@"Reset" forState:UIControlStateNormal];
    [add setTitle:@"+1" forState:UIControlStateNormal];
    [sub setTitle:@"-1" forState:UIControlStateNormal];
    [mult setTitle:@"^2" forState:UIControlStateNormal];
    [div setTitle:@"/2" forState:UIControlStateNormal];

    [self.view addSubview:reset];
    [self.view addSubview:add];
    [self.view addSubview:sub];
    [self.view addSubview:mult];
    [self.view addSubview:div];

    [reset addTarget:self action:@selector(cal:) forControlEvents:UIControlEventTouchUpInside];
    [add addTarget:self action:@selector(cal:) forControlEvents:UIControlEventTouchUpInside];
    [sub addTarget:self action:@selector(cal:) forControlEvents:UIControlEventTouchUpInside];
    [mult addTarget:self action:@selector(cal:) forControlEvents:UIControlEventTouchUpInside];
    [div addTarget:self action:@selector(cal:) forControlEvents:UIControlEventTouchUpInside];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) cal:(id)sender{
    
    UIButton *button = sender;
    
    if([button.titleLabel.text isEqualToString:@"+1"])
    {
        NSInteger n;
        n = val.integerValue;
        if(n>=0)
        {
            n++;
            // NSString *l;
            val = [NSString stringWithFormat:@"%ld",n];
            [label setText:val];
            [label setTextColor:[UIColor blackColor]];
            [label setBackgroundColor:[UIColor whiteColor]];
        }
        else
        {
            val=@"Negative value";
            [label setText:val];
        }
    }
    else if([button.titleLabel.text isEqualToString:@"-1"])
    {
        NSInteger n;
        n = val.integerValue;
        if(n>0)
        {
            n--;
            // NSString *l;
            val = [NSString stringWithFormat:@"%ld",n];
            [label setText:val];
            [label setTextColor:[UIColor blackColor]];
            [label setBackgroundColor:[UIColor whiteColor]];
        }
        else
        {
            val=@"Negative value";
            [label setText:val];
        }
    }
    else if([button.titleLabel.text isEqualToString:@"^2"])
    {
        NSInteger n;
        n = val.integerValue;
        if(n>0)
        {
            n=n*n;
            val = [NSString stringWithFormat:@"%ld",n];
            [label setText:val];
            [label setTextColor:[UIColor blackColor]];
            [label setBackgroundColor:[UIColor whiteColor]];
        }
        else
        {
            val=@"Negative value";
            [label setText:val];
        }
    }
    else if([button.titleLabel.text isEqualToString:@"/2"])
    {
        NSInteger n;
        n = val.integerValue;
        if(n>0)
        {
            n=n/2;
            val = [NSString stringWithFormat:@"%ld",n];
            [label setText:val];
            [label setTextColor:[UIColor blackColor]];
            [label setBackgroundColor:[UIColor whiteColor]];
        }
        else
        {
            val=@"Negative value";
            [label setText:val];
        }
    }
    else if([button.titleLabel.text isEqualToString:@"Reset"])
    {
        val = @"0";
        [label setText:val];
        [label setBackgroundColor:[UIColor blackColor]];
        [label setTextColor:[UIColor whiteColor]];
        
    }


}


/*
-(void) addition:(id)sender{
    
    UIButton *button = sender;
    
    if([button.titleLabel.text isEqualToString:@"+"])
    {
        NSInteger n;
      n = val.integerValue;
        if(n>=0)
        {
        n++;
       // NSString *l;
        val = [NSString stringWithFormat:@"%ld",n];
        [label setText:val];
        [label setTextColor:[UIColor blackColor]];
        [label setBackgroundColor:[UIColor whiteColor]];
    }
        else
        {
            val=@"Negative value";
            [label setText:val];
        }
}
}

-(void) subtraction:(id)sender{
    
    UIButton *button = sender;
if([button.titleLabel.text isEqualToString:@"-"])
    {
        NSInteger n;
        n = val.integerValue;
        if(n>0)
        {
        n--;
        val = [NSString stringWithFormat:@"%ld",n];
        [label setText:val];
        [label setTextColor:[UIColor blackColor]];
        [label setBackgroundColor:[UIColor whiteColor]];
    }
else
{
    val=@"Negative value";
    [label setText:val];
}
    }
}

-(void) multiplication:(id)sender{
    
    UIButton *button = sender;
    if([button.titleLabel.text isEqualToString:@"*"])
    {
        NSInteger n;
        n = val.integerValue;
        if(n>0)
        {
            n=n*n;
            val = [NSString stringWithFormat:@"%ld",n];
            [label setText:val];
            [label setTextColor:[UIColor blackColor]];
            [label setBackgroundColor:[UIColor whiteColor]];
        }
        else
        {
            val=@"Negative value";
            [label setText:val];
        }
    }
}

-(void) division:(id)sender{
    
    UIButton *button = sender;
    if([button.titleLabel.text isEqualToString:@"/2"])
    {
        NSInteger n;
        n = val.integerValue;
        if(n>0)
        {
            n=n/2;
            val = [NSString stringWithFormat:@"%ld",n];
            [label setText:val];
            [label setTextColor:[UIColor blackColor]];
            [label setBackgroundColor:[UIColor whiteColor]];
        }
        else
        {
            val=@"Negative value";
            [label setText:val];
        }
    }
}



-(void) resetVal:(id)sender{
    UIButton *button = sender;
    if([button.titleLabel.text isEqualToString:@"Reset"])
    {
        val = @"0";
        [label setText:val];
        [label setBackgroundColor:[UIColor blackColor]];
        [label setTextColor:[UIColor whiteColor]];
        
    }
}

*/

@end

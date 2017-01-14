//
//  ViewController.m
//  iOS background model
//
//  Created by yyl on 17/1/14.
//  Copyright © 2017年 yyl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic, assign) NSInteger count;

@property (weak, nonatomic) IBOutlet UILabel *countLabel;

@property(nonatomic, strong) NSTimer *timer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonClick:(id)sender {
    if (!self.timer) {
        self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(calTimer) userInfo:nil repeats:YES];
    }
}

- (void)calTimer {
    NSLog(@"*****%zd", self.count);
    self.count++;
    self.countLabel.text = [NSString stringWithFormat:@"%zd", self.count];
}


@end

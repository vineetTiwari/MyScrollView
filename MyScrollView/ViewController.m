//
//  ViewController.m
//  MyScrollView
//
//  Created by Vineet Tiwari on 2015-05-19.
//  Copyright (c) 2015 vinny.co. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  UIView *redBoxView = [[UIView alloc] initWithFrame:CGRectMake(20.0, 20.0, 100.0, 100.0)];
  redBoxView.backgroundColor = [UIColor redColor];
  [self.view addSubview:redBoxView];

  UIView *greenBoxView = [[UIView alloc] initWithFrame:CGRectMake(150.0, 150.0, 150.0, 200.0)];
  greenBoxView.backgroundColor = [UIColor greenColor];
  [self.view addSubview:greenBoxView];

  UIView *blueBoxView = [[UIView alloc] initWithFrame:CGRectMake(40.0, 400.0, 200.0, 150.0)];
  blueBoxView.backgroundColor = [UIColor blueColor];
  [self.view addSubview:blueBoxView];

  UIView *yellowBoxView = [[UIView alloc] initWithFrame:CGRectMake(100.0, 600.0, 180.0, 150.0)];
  yellowBoxView.backgroundColor = [UIColor yellowColor];
  [self.view addSubview:yellowBoxView];

  CGRect rect = self.view.bounds;
  rect.origin.y += 100.0;
  self.view.bounds = rect;

}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}

@end

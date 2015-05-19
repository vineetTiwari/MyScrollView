//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Vineet Tiwari on 2015-05-19.
//  Copyright (c) 2015 vinny.co. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView



- (void)setup {

  self.contentSize = CGSizeMake(600.0, 700.0);

  UIPanGestureRecognizer *panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanGesture:)];

  [self addGestureRecognizer:panGestureRecognizer];
}

- (void)handlePanGesture:(UIPanGestureRecognizer *)gestureRecognizer {

  CGPoint offSet = [gestureRecognizer translationInView:self];

  CGRect rect = self.bounds;

  rect.origin.y -= offSet.y;
  rect.origin.x -= offSet.x;


  if (rect.origin.x <= -50) {

    rect.origin.x = -50;
  }

  if (rect.origin.x >= 50) {

    rect.origin.x = 50;
  }

  if (rect.origin.y <= -50) {

    rect.origin.y = -50;
  }

  if (rect.origin.y >= 300) {

    rect.origin.y = 300;
  }

  self.bounds = rect;

}


- (instancetype)initWithCoder:(NSCoder *)aDecoder {

  self = [super initWithCoder:aDecoder];
  [self setup];

  return self;
}

- (instancetype)initWithFrame:(CGRect)frame {

  self = [super initWithFrame:frame];
  [self setup];

  return self;
}

@end

//
//  WTModalDelegate.h
//  ObjC_Intro
//
//  Created by Brandon Alexander on 2/13/11.
//  Copyright 2011 While This, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol WTModalDelegate <NSObject>

@required
-(void) viewController:(UIViewController *)viewController didFinishWithData:(id)data;

@optional
-(void) viewControllerDidCancel:(UIViewController *)viewController;

@end

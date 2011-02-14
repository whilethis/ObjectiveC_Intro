//
//  ObjC_IntroAppDelegate.h
//  ObjC_Intro
//
//  Created by Brandon Alexander on 2/13/11.
//  Copyright 2011 While This, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ObjC_IntroAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

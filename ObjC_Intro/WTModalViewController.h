//
//  WTModalViewController.h
//  ObjC_Intro
//
//  Created by Brandon Alexander on 2/13/11.
//  Copyright 2011 While This, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "WTModalDelegate.h"

@interface WTModalViewController : UIViewController {
    id<WTModalDelegate> delegate;
	UITextField *textInput;
}

@property(assign, nonatomic) id<WTModalDelegate> delegate;
@property (nonatomic, retain) IBOutlet UITextField *textInput;

- (IBAction)savePressed:(id)sender;
- (IBAction)cancelPressed:(id)sender;
@end

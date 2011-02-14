//
//  WTModalViewController.m
//  ObjC_Intro
//
//  Created by Brandon Alexander on 2/13/11.
//  Copyright 2011 While This, Inc. All rights reserved.
//

#import "WTModalViewController.h"


@implementation WTModalViewController

@synthesize delegate;
@synthesize textInput;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
	delegate = nil;
	[textInput release], textInput = nil;
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
	[self setTextInput:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)savePressed:(id)sender {
	[delegate viewController:self didFinishWithData:[textInput text]];
}

- (IBAction)cancelPressed:(id)sender {
	if([delegate respondsToSelector:@selector(viewControllerDidCancel:)]) {
		[delegate viewControllerDidCancel:self];
	}
}
@end

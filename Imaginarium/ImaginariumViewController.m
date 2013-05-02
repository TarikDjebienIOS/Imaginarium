//
//  ImaginariumViewController.m
//  Imaginarium
//
//  Created by Tarik Djebien on 02/05/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "ImaginariumViewController.h"

@interface ImaginariumViewController()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation ImaginariumViewController
@synthesize scrollView = _scrollView;
@synthesize imageView = _imageView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.scrollView.contentSize = self.imageView.image.size;
    self.imageView.frame = CGRectMake(0, 0, self.imageView.image.size.width, self.imageView.image.size.height);
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (void)viewDidUnload {
    [self setImageView:nil];
    [self setScrollView:nil];
    [super viewDidUnload];
}
@end

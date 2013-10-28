//
//  TBMeViewController.m
//  Cryptocat
//
//  Created by Thomas Balthazar on 24/10/13.
//  Copyright (c) 2013 Thomas Balthazar. All rights reserved.
//

#import "TBMeViewController.h"
#import "TBBuddy.h"

////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
@interface TBMeViewController ()

@property (weak, nonatomic) IBOutlet UITableViewCell *groupFingerprintCell;
@property (weak, nonatomic) IBOutlet UITableViewCell *privateFingerprintCell;

- (IBAction)done:(id)sender;
- (IBAction)logout:(id)sender;

@end

////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
@implementation TBMeViewController

////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark Lifecycle

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)viewDidLoad {
  [super viewDidLoad];
  
  self.groupFingerprintCell.textLabel.text = self.me.groupChatFingerprint;
  self.privateFingerprintCell.textLabel.text = self.me.chatFingerprint;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark Actions

////////////////////////////////////////////////////////////////////////////////////////////////////
- (IBAction)done:(id)sender {
  if ([self.delegate respondsToSelector:@selector(meViewControllerHasFinished:)]) {
    [self.delegate meViewControllerHasFinished:self];
  }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (IBAction)logout:(id)sender {
  if ([self.delegate respondsToSelector:@selector(meViewControllerDidAskToLogout:)]) {
    [self.delegate meViewControllerDidAskToLogout:self];
  }
}

@end

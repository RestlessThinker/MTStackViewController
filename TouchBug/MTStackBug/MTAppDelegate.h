//
//  MTAppDelegate.h
//  MTStackBug
//
//  Created by Louie Penaflor on 7/2/13.
//
//

#import <UIKit/UIKit.h>
#import <MTStackViewController.h>
#import "MTMenuViewController.h"
#import "MTRightNavViewController.h"

@interface MTAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong) MTStackViewController *stackViewController;
@property (strong) MTMenuViewController *menuViewController;

@end

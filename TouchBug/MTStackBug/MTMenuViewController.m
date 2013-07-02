//
//  MTMenuViewController.m
//  MTStackBug
//
//  Created by Louie Penaflor on 7/2/13.
//
//

#import "MTMenuViewController.h"
#import "MTContentViewController.h"
#import <MTStackViewController.h>

@interface MTMenuViewController () {
	MTContentViewController *_contentViewController;
}

@end

@implementation MTMenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	_contentViewController = [[MTContentViewController alloc] initWithNibName:@"MTContentViewController" bundle:nil];
	UINavigationController *contentNavigationController = [[UINavigationController alloc] initWithRootViewController:_contentViewController];
	[[self stackViewController] setContentViewController:contentNavigationController];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

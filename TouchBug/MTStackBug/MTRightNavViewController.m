//
//  MTRightNavViewController.m
//  MTStackBug
//
//  Created by Louie Penaflor on 7/2/13.
//
//

#import "MTRightNavViewController.h"

@interface MTRightNavViewController ()

@end

@implementation MTRightNavViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionLoadVC:(id)sender
{
	[_delegate rightNav:self didSelectSomeValue:MTRightNavValueFoo];
}

@end

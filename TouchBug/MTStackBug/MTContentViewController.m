//
//  MTContentViewController.m
//  MTStackBug
//
//  Created by Louie Penaflor on 7/2/13.
//
//

#import "MTContentViewController.h"
#import <MTStackViewController.h>
#import "MTStep4ViewController.h"

static NSString *const MTContentTableViewCellIdentifier = @"MTContentTableViewCellIdentifier";

@interface MTContentViewController () {
	__weak IBOutlet UITableView *_tableView;
}

@end

@implementation MTContentViewController

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
	[_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:MTContentTableViewCellIdentifier];
	
	self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Step 1"
																			  style:UIBarButtonItemStyleBordered
																			 target:self
																			 action:@selector(actionIntentStep1:)];
	
	[[self stackViewController] setRightViewControllerEnabled:YES];
	MTRightNavViewController *rightVC = [[MTRightNavViewController alloc] initWithNibName:@"MTRightNavViewController" bundle:nil];
	rightVC.delegate = self;
	[[self stackViewController] setRightViewController:rightVC];
}

- (void)actionIntentStep1:(id)sender
{
	[[self stackViewController] revealRightViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MTContentTableViewCellIdentifier forIndexPath:indexPath];
	[self configureCell:cell forIndexPath:indexPath];
	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)configureCell:(UITableViewCell *)cell forIndexPath:(NSIndexPath *)indexPath
{
	cell.textLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:10];
	switch (indexPath.row) {
		case 0:
			cell.textLabel.text = @"Step 4";
			break;
			
		case 1:
			cell.textLabel.text = @"Try dragging me vertically after right nav pushed a vc onto the stack";
			break;
			
		default:
			break;
	}
}

#pragma mark - MTRightNavDelegate

- (void)rightNav:(MTRightNavViewController *__weak)rightNav didSelectSomeValue:(MTRightNavValue)value
{
	[[self stackViewController] hideRightViewControllerAnimated:YES];
	MTStep4ViewController *vc = [[MTStep4ViewController alloc] initWithNibName:@"MTStep4ViewController" bundle:nil];
	[self.navigationController pushViewController:vc animated:NO];
}

@end

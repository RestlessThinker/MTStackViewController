//
//  MTRightNavViewController.h
//  MTStackBug
//
//  Created by Louie Penaflor on 7/2/13.
//
//

#import <UIKit/UIKit.h>

@class MTRightNavViewController;

typedef enum {
	MTRightNavValueFoo,
	MTRightNavValueBar
} MTRightNavValue;

@protocol MTRightNavDelegate <NSObject>

@required
- (void)rightNav:(__weak MTRightNavViewController *)rightNav didSelectSomeValue:(MTRightNavValue)value;

@end

@interface MTRightNavViewController : UIViewController

@property (weak) id<MTRightNavDelegate> delegate;

- (IBAction)actionLoadVC:(id)sender;

@end

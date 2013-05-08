//
//  HomepwnerItemCell.m
//  Homepwner
//
//  Created by Sean Riggle on 5/6/13.
//
//

#import "HomepwnerItemCell.h"

@implementation HomepwnerItemCell

@synthesize controller;
@synthesize tableView;

- (IBAction)showImage:(id)sender {
    
    NSString *selector = NSStringFromSelector(_cmd);
    selector = [selector stringByAppendingString:@"atIndexPath:"];
    
    SEL newSelector = NSSelectorFromString(selector);
    
    
    NSIndexPath * indexPath = [[self tableView] indexPathForCell:self];
    
    if(indexPath)
    {
        if([[self controller]respondsToSelector:newSelector])
        {
            [[self controller] performSelector:newSelector withObject:sender withObject:indexPath];   
        }
    }
    
    //[[self controller] showImage:sender atIndexPath:indexPath];
    
    
    
}
@end

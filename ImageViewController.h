//
//  ImageViewController.h
//  Homepwner
//
//  Created by Sean Riggle on 5/7/13.
//
//

#import <UIKit/UIKit.h>

@interface ImageViewController : UIViewController
{
    __weak IBOutlet UIScrollView *scollView;
    
    __weak IBOutlet UIImageView *imageView;
}

@property (nonatomic, strong) UIImage *image;

@end

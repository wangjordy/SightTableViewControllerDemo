//
//  CustomerTableViewCell.h
//  TableDemo
//
//  Created by 兴朝 王 on 14-4-17.
//  Copyright (c) 2014年 com.autohome. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomerTableViewCell : UITableViewCell
{

    __weak IBOutlet UIImageView *parallaxImage;
    
}

- (void)loadData:(UIImage *)image;

- (void)cellOnTableView:(UITableView *)tableView didScrollOnView:(UIView *)view;

@end

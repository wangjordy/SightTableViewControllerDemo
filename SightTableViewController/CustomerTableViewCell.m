//
//  CustomerTableViewCell.m
//  TableDemo
//
//  Created by 兴朝 王 on 14-4-17.
//  Copyright (c) 2014年 com.autohome. All rights reserved.
//

#import "CustomerTableViewCell.h"

@implementation CustomerTableViewCell

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)loadData:(UIImage *)image
{
    [parallaxImage setImage:image];
//    [parallaxImage setImage:[UIImage imageNamed:imageName]];
}

- (void)cellOnTableView:(UITableView *)tableView didScrollOnView:(UIView *)view
{
    CGRect rectInSuperview = [tableView convertRect:self.frame toView:view];
    
    float distanceFromCenter = CGRectGetHeight(view.frame)/2 - CGRectGetMinY(rectInSuperview);
    float difference = CGRectGetHeight(parallaxImage.frame) - CGRectGetHeight(self.frame);
    float move = (distanceFromCenter / CGRectGetHeight(view.frame)) * difference;
    
    CGRect imageRect = parallaxImage.frame;
    imageRect.origin.y = -(difference/2)+move;
    parallaxImage.frame = imageRect;
}

@end

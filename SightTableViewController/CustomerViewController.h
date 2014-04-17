//
//  CustomerViewController.h
//  TableDemo
//
//  Created by 兴朝 王 on 14-4-17.
//  Copyright (c) 2014年 com.autohome. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomerViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    
    __weak IBOutlet UITableView *rootTableView;
}
@end

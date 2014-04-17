//
//  CustomerViewController.m
//  TableDemo
//
//  Created by 兴朝 王 on 14-4-17.
//  Copyright (c) 2014年 com.autohome. All rights reserved.
//

#import "CustomerViewController.h"
#import "CustomerTableViewCell.h"


@interface CustomerViewController () <UIScrollViewDelegate>

@property (nonatomic, strong) NSArray *tableItems;

@end

@implementation CustomerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (NSArray *)tableItems
{
    if (_tableItems==nil) {
        _tableItems = @[[UIImage imageNamed:@"demo_1.jpg"],
                            [UIImage imageNamed:@"demo_2.jpg"],
                            [UIImage imageNamed:@"demo_3.jpg"],
                            [UIImage imageNamed:@"demo_4.png"],
                            [UIImage imageNamed:@"demo_1.jpg"],
                            [UIImage imageNamed:@"demo_2.jpg"],
                            [UIImage imageNamed:@"demo_3.jpg"],
                            [UIImage imageNamed:@"demo_4.png"],
                            [UIImage imageNamed:@"demo_3.jpg"],
                            [UIImage imageNamed:@"demo_2.jpg"],
                            [UIImage imageNamed:@"demo_1.jpg"],
                            [UIImage imageNamed:@"demo_4.png"]];
    }
    return _tableItems;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
//    [rootTableView setEditing:YES];
    self.tableItems = @[[UIImage imageNamed:@"demo_1.jpg"],
                        [UIImage imageNamed:@"demo_2.jpg"],
                        [UIImage imageNamed:@"demo_3.jpg"],
                        [UIImage imageNamed:@"demo_4.png"],
                        [UIImage imageNamed:@"demo_1.jpg"],
                        [UIImage imageNamed:@"demo_2.jpg"],
                        [UIImage imageNamed:@"demo_3.jpg"],
                        [UIImage imageNamed:@"demo_4.png"],
                        [UIImage imageNamed:@"demo_3.jpg"],
                        [UIImage imageNamed:@"demo_2.jpg"],
                        [UIImage imageNamed:@"demo_1.jpg"],
                        [UIImage imageNamed:@"demo_4.png"]];
}

#pragma mark -
#pragma mark UITableViewDelegate & UITableViewDataSource


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.tableItems.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CustomerTableViewCellIndentifier = @"CustomerTableViewCellIndentifier";
    CustomerTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CustomerTableViewCellIndentifier];
    if (cell==nil) {
        NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"CustomerTableViewCell" owner:self options:nil];
        cell = [array lastObject];
    }
    [cell loadData:[self.tableItems objectAtIndex:indexPath.row]];
    return cell;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSArray *visibleCells = [rootTableView visibleCells];
    
    for (CustomerTableViewCell *cell in visibleCells) {
        [cell cellOnTableView:rootTableView didScrollOnView:self.view];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

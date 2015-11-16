//
//  DreamListRootViewController.m
//  DreamOrder
//
//  Created by Allan on 15/11/14.
//  Copyright © 2015年 Allan. All rights reserved.
//

#import "DreamListRootViewController.h"
#import "DreamListTableViewCell.h"
#import "DreamDeatailViewController.h"
@interface DreamListRootViewController ()

@end

@implementation DreamListRootViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self.tableView registerClass:[DreamListTableViewCell class] forCellReuseIdentifier:@"dreamListCell"];

    self.tableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
    
    
}
#pragma mark-UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 247;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    DreamDeatailViewController *vc = [[DreamDeatailViewController alloc]init];
    self.navigationController.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
    
}



#pragma mark-UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    DreamListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"dreamListCell"];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"DreamListTableViewCell" owner:self options:nil] firstObject];
    }
    [cell loadData];
//    cell.backgroundColor = [UIColor redColor];
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

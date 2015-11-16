//
//  PublishRootViewController.m
//  DreamOrder
//
//  Created by Allan on 15/11/14.
//  Copyright © 2015年 Allan. All rights reserved.
//

#import "PublishRootViewController.h"

@interface PublishRootViewController ()

@end

@implementation PublishRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *publishBtn = [[UIButton alloc]initWithFrame:CGRectMake(300, 300, 44, 44)];
    publishBtn.backgroundColor = [UIColor redColor];
    [self.view addSubview:publishBtn];

}
#pragma mark-UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 0;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    DreamListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"dreamListCell"];
//    if (cell == nil) {
//        cell = [[[NSBundle mainBundle] loadNibNamed:@"DreamListTableViewCell" owner:self options:nil] firstObject];
//    }
//    [cell loadData];
    //    cell.backgroundColor = [UIColor redColor];
    return nil;
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

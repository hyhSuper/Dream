//
//  DreamListTableViewCell.h
//  DreamOrder
//
//  Created by Allan on 15/11/14.
//  Copyright © 2015年 Allan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DreamListTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *dreamImage;
@property (weak, nonatomic) IBOutlet UILabel *dreamTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *payMoneyLabel;
@property (weak, nonatomic) IBOutlet UILabel *sucessLabel;
@property (weak, nonatomic) IBOutlet UIProgressView *dreamProgressView;
@property (weak, nonatomic) IBOutlet UILabel *failureLabel;
@property (weak, nonatomic) IBOutlet UIButton *headPhotoBtn;

-(void)loadData;

@end

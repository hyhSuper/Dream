//
//  DreamListTableViewCell.m
//  DreamOrder
//
//  Created by Allan on 15/11/14.
//  Copyright © 2015年 Allan. All rights reserved.
//

#import "DreamListTableViewCell.h"

@implementation DreamListTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)loadData{
    self.dreamTitleLabel.text = @"坚持跑步";
    
}
@end

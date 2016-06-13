//
//  AgeCell.m
//  GengXinCell
//
//  Created by nbs on 16/5/30.
//  Copyright © 2016年 周军涛. All rights reserved.
//

#import "AgeCell.h"

@implementation AgeCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self addAllViews];
    }
    return self;
}

- (void)addAllViews
{
    self.aLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 14, 150, 17)];
    self.aLabel.backgroundColor = [UIColor greenColor];
    [self.contentView addSubview:self.aLabel];
    self.sumTextField = [[UITextField alloc]initWithFrame:CGRectMake(CGRectGetMaxX(self.aLabel.frame), 14, [UIScreen mainScreen].bounds.size.width - 15 - CGRectGetMaxX(self.aLabel.frame), 17)];
    self.sumTextField.textAlignment = NSTextAlignmentRight;
    self.sumTextField.borderStyle = UITextBorderStyleLine;
    [self.contentView addSubview:self.sumTextField];
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

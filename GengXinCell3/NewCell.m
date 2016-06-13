//
//  NewCell.m
//  GengXinCell
//
//  Created by nbs on 16/5/27.
//  Copyright © 2016年 周军涛. All rights reserved.
//

#import "NewCell.h"

@implementation NewCell

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
    self.aLabel = [[UILabel alloc] initWithFrame:CGRectMake(15 , 14, 130, 17)];
    self.aLabel.backgroundColor = [UIColor greenColor];
    self.aLabel.font = [UIFont systemFontOfSize:14.0];
    [self.contentView addSubview:self.aLabel];
    self.buttonImageView = [[UIImageView alloc]initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width - 35, 14, 20, 20)];
    self.buttonImageView.image = [UIImage imageNamed:@"arrow@2x"];
    [self addSubview:self.buttonImageView];
    self.summaryLabel = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(self.aLabel.frame), 14, [UIScreen mainScreen].bounds.size.width - CGRectGetMaxX(self.aLabel.frame )- 35, 17)];
    self.summaryLabel.textAlignment = NSTextAlignmentRight;
    self.summaryLabel.font = [UIFont systemFontOfSize:14.0];
    self.summaryLabel.backgroundColor = [UIColor redColor];
    [self.contentView addSubview:self.summaryLabel];
    
}




- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

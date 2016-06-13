//
//  NewCell.h
//  GengXinCell
//
//  Created by nbs on 16/5/27.
//  Copyright © 2016年 周军涛. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewCell : UITableViewCell


//选择的一个标题
@property (nonatomic, strong) UILabel *aLabel;
//选择的内容label
@property (nonatomic,strong) UILabel *summaryLabel;
//右边标注点击imageView
@property (nonatomic,strong) UIImageView *buttonImageView;


@end

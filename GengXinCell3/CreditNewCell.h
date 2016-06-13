//
//  CreditNewCell.h
//  GengXinCell
//
//  Created by nbs on 16/5/27.
//  Copyright © 2016年 周军涛. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreditNewCell : UITableViewCell<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) NSString *identifierString;
//选择的一个标题
@property (nonatomic, strong) UILabel *aLabel;
//选择的内容label
@property (nonatomic,strong) UILabel *summaryLabel;
//右边标注点击imageView
@property (nonatomic,strong) UIImageView *buttonImageView;
//弹出tableview
@property (nonatomic, strong) UITableView *tableView;
//title数组
@property (nonatomic,strong) NSMutableArray *dataArray;
//展开tableView
- (void)showTableView;
//隐藏tableView
- (void)hiddenTableView;

- (void)addstringIdenterArray:(NSArray *)array;






@end

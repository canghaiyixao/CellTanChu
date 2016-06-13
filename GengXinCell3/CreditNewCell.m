//
//  CreditNewCell.m
//  GengXinCell
//
//  Created by nbs on 16/5/27.
//  Copyright © 2016年 周军涛. All rights reserved.
//

#import "CreditNewCell.h"
#import "NewCell.h"
#import "SummarryCell.h"
@implementation CreditNewCell

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
    self.aLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 14, 100, 17)];
    self.aLabel.font = [UIFont systemFontOfSize:14.0];
    self.aLabel.backgroundColor = [UIColor greenColor];
    [self.contentView addSubview:self.aLabel];
    self.buttonImageView = [[UIImageView alloc]initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width - 35, 14, 20, 20)];
    self.buttonImageView.image = [UIImage imageNamed:@"arrow@2x"];
    [self.contentView addSubview:self.buttonImageView];
    self.summaryLabel = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(self.aLabel.frame), 14, [UIScreen mainScreen].bounds.size.width - CGRectGetMaxX(self.aLabel.frame )- 35, 17)];
    self.summaryLabel.font = [UIFont systemFontOfSize:14.0];
    self.summaryLabel.textAlignment = NSTextAlignmentRight;
    self.summaryLabel.backgroundColor = [UIColor redColor];
    [self.contentView addSubview:self.summaryLabel];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 44, [UIScreen mainScreen].bounds.size.width, 0) style:UITableViewStylePlain];
    self.tableView.backgroundColor = [UIColor blueColor];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView reloadData];
    
}

- (void)showTableView
{
    [self.tableView reloadData];
    [self.contentView addSubview:self.tableView];
}
- (void)hiddenTableView
{
    [self.tableView removeFromSuperview];
}

- (void)addstringIdenterArray:(NSArray *)array {
    
    NSInteger n = array.count;
    CGRect frame = self.tableView.frame;
    frame.size.height = 44 * n;
    self.tableView.frame = frame;
    [self.tableView reloadData];
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return  self.dataArray.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *identfier = @"cell";
    SummarryCell *cell = [tableView dequeueReusableCellWithIdentifier:identfier];
    if (cell == nil) {
        cell = [[SummarryCell alloc]initWithStyle:(UITableViewCellStyleValue1) reuseIdentifier:identfier];
    }
    cell.sumTextField.font = [UIFont systemFontOfSize:14.0];
    cell.sumTextField.placeholder = @"请输入";
    cell.aLabel.font = [UIFont systemFontOfSize:14.0];
    cell.aLabel.text = self.dataArray[indexPath.row];
    return cell;
}



- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 44;
    
}

- (NSMutableArray *)dataArray {
    if (_dataArray == nil) {
        self.dataArray = [NSMutableArray array];
    }
    return _dataArray;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

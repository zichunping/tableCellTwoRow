//
//  SubCollectionsCell2TableViewCell.m
//  TDTableCellTwoRow
//
//  Created by yuping on 14-8-25.
//  Copyright (c) 2014年 athrun. All rights reserved.
//

#import "SubCollectionsCell2TableViewCell.h"

@implementation SubCollectionsCell2TableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initUI];
    }
    return self;
}


-(void) initUI{
    
    
    _cellView1 = [[SubCollectionsCellView alloc] initWithFrame:CGRectMake(0, 0, 160, 160 )];
    [self.contentView addSubview:_cellView1];
    
    
    _cellView2 = [[SubCollectionsCellView alloc] initWithFrame:CGRectMake(160, 0, 80, 160)];
    [self.contentView addSubview:_cellView2];
}


- (void)awakeFromNib
{
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}

@end

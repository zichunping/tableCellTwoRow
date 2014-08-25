//
//  SubCollectionsCell2TableViewCell.h
//  TDTableCellTwoRow
//
//  Created by yuping on 14-8-25.
//  Copyright (c) 2014年 athrun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SubCollectionsCellView.h"

@interface SubCollectionsCell2TableViewCell : UITableViewCell

@property(nonatomic,strong) SubCollectionsCellView *cellView1;

@property(nonatomic,strong) SubCollectionsCellView *cellView2;

-(void) initUI;
@end

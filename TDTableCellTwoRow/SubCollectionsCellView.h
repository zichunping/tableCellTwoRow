//
//  SubCollectionsCellView.h
//  TDTableCellTwoRow
//
//  Created by yuping on 14-8-25.
//  Copyright (c) 2014年 athrun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TDModel.h"

@interface SubCollectionsCellView : UIView

@property(nonatomic,strong) UIImageView *iconImageView;
@property(nonatomic,strong) UILabel *lblTitle;
@property(nonatomic,strong) UILabel *lblSubTitle;
@property(nonatomic,strong) UILabel *lblContent;


-(void) setUpModel:(TDModel *)model;
@end

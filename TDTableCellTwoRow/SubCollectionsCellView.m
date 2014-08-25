//
//  SubCollectionsCellView.m
//  TDTableCellTwoRow
//
//  Created by yuping on 14-8-25.
//  Copyright (c) 2014年 athrun. All rights reserved.
//

#import "SubCollectionsCellView.h"

@implementation SubCollectionsCellView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initUI];
    }
    return self;
}


//初始化UI
-(void) initUI{
    self.userInteractionEnabled = YES;
    self.backgroundColor = [UIColor clearColor];
    
    _iconImageView = [[UIImageView alloc] init];
    [_iconImageView setFrame:CGRectMake(10, self.frame.size.height/2-40, 80, 80)];
    [self addSubview:_iconImageView];
    
    _lblSubTitle = [[UILabel alloc] init];
    [_lblSubTitle setFrame:CGRectMake(_iconImageView.frame.origin.x + _iconImageView.frame.size.width + 10, _iconImageView.frame.origin.y, self.frame.size.width, 16)];
    [_lblSubTitle setBackgroundColor:[UIColor clearColor]];
    [_lblSubTitle setTextColor:[UIColor blackColor]];
    [_lblSubTitle setFont:[UIFont fontWithName:@"Helvetica" size:14]];
    [_lblSubTitle setTextAlignment:NSTextAlignmentLeft];
    [self addSubview:_lblSubTitle];
    
    _lblTitle = [[UILabel alloc] init];
    [_lblTitle setFrame:CGRectMake(_iconImageView.frame.origin.x + _iconImageView.frame.size.width + 10, _lblSubTitle.frame.origin.y + _lblSubTitle.frame.size.height + 4, self.frame.size.width, 20)];
    [_lblTitle setBackgroundColor:[UIColor clearColor]];
    [_lblTitle setTextColor:[UIColor blackColor]];
    [_lblTitle setFont:[UIFont fontWithName:@"Helvetica-Bold" size:17]];
    [_lblTitle setTextAlignment:NSTextAlignmentLeft];
    [self addSubview:_lblTitle];
    
    _lblContent = [[UILabel alloc] init];
    [_lblContent setFrame:CGRectMake(_iconImageView.frame.origin.x + _iconImageView.frame.size.width + 10, _lblTitle.frame.origin.y + _lblTitle.frame.size.height + 2, self.frame.size.width, 55)];
    [_lblContent setBackgroundColor:[UIColor clearColor]];
    [_lblContent setTextColor:[UIColor blackColor]];
    [_lblContent setFont:[UIFont fontWithName:@"Helvetica" size:15]];
    [_lblContent setTextAlignment:NSTextAlignmentLeft];
    [self addSubview:_lblContent];
}


-(void)setUpModel:(TDModel *)model{
    self.iconImageView.image = model.inconImage;
    self.lblTitle.text = model.titleString;
    self.lblContent.text = model.contentString;
    self.lblSubTitle.text = model.subTitleString;
}

@end

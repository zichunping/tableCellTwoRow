//
//  TDModel.m
//  TDTableCellTwoRow
//
//  Created by yuping on 14-8-25.
//  Copyright (c) 2014年 athrun. All rights reserved.
//

#import "TDModel.h"

@implementation TDModel

-(id)initWithIconString:(UIImage *)iconImage title:(NSString *)titleString content:(NSString *)contentString subTitle:(NSString *)subTitleString{

    self = [super self];
    if(self){
        self.inconImage = iconImage;
        self.titleString = titleString;
        self.contentString = contentString;
        self.subTitleString = subTitleString;
    }
    return self;
}

@end

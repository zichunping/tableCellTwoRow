//
//  TDModel.h
//  TDTableCellTwoRow
//
//  Created by yuping on 14-8-25.
//  Copyright (c) 2014年 athrun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TDModel : NSObject

@property(nonatomic,strong) UIImage *inconImage;
@property(nonatomic,strong) NSString *titleString;
@property(nonatomic,strong) NSString *contentString;
@property(nonatomic,strong) NSString *subTitleString;


-(id) initWithIconString:(UIImage *)iconImage
                     title:(NSString *)titleString
                   content:(NSString *)contentString
                  subTitle:(NSString *)subTitleString;
@end

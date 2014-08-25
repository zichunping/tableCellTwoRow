//
//  TDViewController.h
//  TDTableCellTwoRow
//
//  Created by yuping on 14-8-25.
//  Copyright (c) 2014年 athrun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TDViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>{
    UITableView *tableView;
}

-(void) initUI;
-(void) initData;

@end

//
//  TDViewController.m
//  TDTableCellTwoRow
//
//  Created by yuping on 14-8-25.
//  Copyright (c) 2014年 athrun. All rights reserved.
//

#import "TDViewController.h"
#import "SubCollectionsInfo.h"
#import "SubCollectionsCellView.h"
#import "SubCollectionsCell2TableViewCell.h"

@interface TDViewController (){
    NSMutableArray *_dataArray;
}

@end

@implementation TDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //初始化页面
    self.view.frame = CGRectMake(0, 0, 320, 480);
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    self.title = @"一个cell分两列";
    
    [self initData];
    [self initUI];
}

// 初始化数据
-(void) initData{
    _dataArray = [[NSMutableArray alloc] init];
    
    for (int i = 0 ; i < 6; i ++) {
        SubCollectionsInfo *info = [[SubCollectionsInfo alloc] init];
        info.inconString = @"me";
        info.titleString = @"大帝";
        info.contentString = @"好人";
        info.subTitleString = @"王子大人";
        
        [_dataArray addObject:info];
    }
}

-(void) initUI{
    tableView = [[UITableView alloc] init];
    [tableView setFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self.view addSubview:tableView];
    
    tableView.delegate = self;
    tableView.dataSource = self;
}

//节中row的个数为什么使用这个逻辑？目前还不清楚
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return (_dataArray.count -1) / 2 + 1;
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 160;
}

//这个方法是关键
-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"cell";
    
    SubCollectionsCell2TableViewCell *cell = (SubCollectionsCell2TableViewCell *) [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[SubCollectionsCell2TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        cell.backgroundColor = [UIColor clearColor];
    }
    
    NSUInteger row = [indexPath row];
    
    SubCollectionsInfo *subInfo = nil;
    for (int i = 0; i < 2; i++) {
        //奇数
        if(row * 2 + i > _dataArray.count - 1){
            break;
        }
        
        subInfo = [_dataArray objectAtIndex:row*2 + i];
        
        if(i == 0){
            [cell.cellView1.iconImageView setImage:[UIImage imageNamed:subInfo.inconString]];
            [cell.cellView1.lblSubTitle setText:subInfo.subTitleString];
            [cell.cellView1.lblTitle setText:subInfo.titleString];
            [cell.cellView1.lblContent setText:subInfo.contentString];
            cell.cellView1.tag = 8000+ row*2 + i;
            
            UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(cellviewTaped:)];
            [cell.cellView1 addGestureRecognizer:tapRecognizer];
            
        }else{
            [cell.cellView2.iconImageView setImage:[UIImage imageNamed:subInfo.inconString]];
            [cell.cellView2.lblSubTitle setText:subInfo.subTitleString];
            [cell.cellView2.lblTitle setText:subInfo.titleString];
            [cell.cellView2.lblContent setText:subInfo.contentString];
            cell.cellView2.tag = 8000+ row*2 + i;
            
            UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(cellviewTaped:)];
            [cell.cellView2 addGestureRecognizer:tapRecognizer];
        
        }
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
    
}


-(void)cellviewTaped:(UITapGestureRecognizer *)recognizer{
    int tag = [recognizer view].tag - 8000;
    NSLog(@"%d",tag);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

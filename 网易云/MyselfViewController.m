//
//  MyselfViewController.m
//  网易云
//
//  Created by 郭红乐 on 2020/7/16.
//  Copyright © 2020 无. All rights reserved.
//

#import "MyselfViewController.h"
#import "CountViewController.h"
#import "YunduoViewController.h"
@interface MyselfViewController ()

@end

@implementation MyselfViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage* imageMyself = [UIImage imageNamed:@"我的.png"];
    UITabBarItem* tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:imageMyself tag:101];
    self.tabBarItem = tabBarItem;
    self.title = @"我的";
    [self createUI];
    
    self.navigationController.navigationBar.barTintColor = [UIColor blackColor];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:19],NSForegroundColorAttributeName:[UIColor whiteColor]}];
    //self.navigationController.navigationBar.tintColor = [UIColor redColor];
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 40, 375, 586) style:UITableViewStyleGrouped];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    _arrayData = [[NSMutableArray alloc]init];
    
    NSArray *array01 = [NSArray arrayWithObjects:@"",nil];
    NSArray *array02 = [NSArray arrayWithObjects:@"",nil];
    NSArray *array03 = [NSArray arrayWithObjects:@"我的音乐                                                            >", @"", nil];
    NSArray *array04 = [NSArray arrayWithObjects:@"最近播放                                                           >",@"",nil];
    NSArray *array05 = [NSArray arrayWithObjects:@"创建歌单     收藏歌单    歌单助手                   >", @"",  nil];
    
    [_arrayData addObject:array01];
    [_arrayData addObject:array02];
    [_arrayData addObject:array03];
    [_arrayData addObject:array04];
    [_arrayData addObject:array05];
    
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}

- (void) creatTableView
{
    _tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    //自定义类需要使用这个方法
    //[_tableView registerClass:[QSTTableViewCell class] forCellReuseIdentifier:@"qstCell"];

    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
}

-(void) createUI
{
    
    
    UIImage *ima = [[UIImage imageNamed:@"云朵"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *image = [[UIBarButtonItem alloc]initWithImage:ima style:UIBarButtonItemStyleDone target:self action:@selector(next)];
    self.navigationItem.leftBarButtonItems = @[image];
    //self.navigationItem.leftBarButtonItems = @[word];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(up)];
    self.navigationItem.rightBarButtonItems = @[item];
}

- (void)click {
    CountViewController* s = [[CountViewController alloc]init];
    [self.navigationController pushViewController:s animated:YES];
}

//获取数组
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return _arrayData.count;
}
//获取每组的元素个数
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSUInteger numRow = [[_arrayData objectAtIndex:section] count];
    return numRow;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* str = @"cell1";
    UITableViewCell *cell = nil;
    UITableViewCell *cell2 = nil;
    UITableViewCell *cell3 = nil;
    UITableViewCell *cell4 = nil;
    UITableViewCell *cell5 = nil;
    UITableViewCell *cell6 = nil;

    UITableViewCell* cell1 = [_tableView dequeueReusableCellWithIdentifier:str];
    cell = [_tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell2 = [_tableView dequeueReusableCellWithIdentifier:@"cell2"];
    cell3 = [_tableView dequeueReusableCellWithIdentifier:@"cell3"];
    cell4 = [_tableView dequeueReusableCellWithIdentifier:@"cell4"];
    cell5 = [_tableView dequeueReusableCellWithIdentifier:@"cell5"];
    cell6 = [_tableView dequeueReusableCellWithIdentifier:@"cell6"];
    
    if(indexPath.section == 0 && indexPath.row == 0){
        if(cell == nil){
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
            
            UILabel* label11 = [[UILabel alloc]init];
            label11.text = @"开通黑胶VIP >";
            label11.frame = CGRectMake(280, 30, 100, 40);
            [_tableView addSubview:label11];
            label11.font = [UIFont systemFontOfSize:12];
            
            cell.textLabel.text = @"小刺猬";
            cell.imageView.image = [UIImage imageNamed:@"头像1.png"];
        }
        
        return cell;
    }else if (indexPath.section == 1 && indexPath.row == 0) {
        if(cell2 == nil){
            cell2 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell2"];
            
            UIButton* btnMessage = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [btnMessage setImage:[[UIImage imageNamed:@"本地首页.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
            btnMessage.titleLabel.text = @"本地首页";
            btnMessage.titleLabel.font = [UIFont systemFontOfSize:10];
            btnMessage.frame = CGRectMake(30, 130, 40, 80);
            [_tableView addSubview:btnMessage];
            //[self.view addSubview:btnMessage];
            
            UILabel* label = [[UILabel alloc]init];
            label.text = @"本地首页";
            //设定label的显示位置
            label.frame = CGRectMake(30, 180, 80, 40);
            //将label显示到屏幕上
            //[self.view addSubview:label];
            [_tableView addSubview:label];
            //设置文字大小，使用系统默认字体
            label.font = [UIFont systemFontOfSize:10];
            //设置文字颜色
            //label.textColor = [UIColor blueColor];
            
            UIButton* btnFirend = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [btnFirend setImage:[[UIImage imageNamed:@"关注新歌.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
            btnFirend.titleLabel.text = @"关注新歌";
            btnFirend.titleLabel.font = [UIFont systemFontOfSize:10];
            btnFirend.frame = CGRectMake(110, 150, 40, 40);
            [_tableView addSubview:btnFirend];
            //[self.view addSubview:btnFirend];
            
            UILabel* label01 = [[UILabel alloc]init];
            label01.text = @"关注新歌";
            label01.frame = CGRectMake(110, 180, 80, 40);
            [_tableView addSubview:label01];
            label01.font = [UIFont systemFontOfSize:10];
            
            UIButton* btnHome = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [btnHome setImage:[[UIImage imageNamed:@"我的电台.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
            //btnHome.titleLabel.text = @"个人主页";
            //btnHome.titleLabel.font = [UIFont systemFontOfSize:10];
            btnHome.frame = CGRectMake(200, 150, 40, 40);
            [_tableView addSubview:btnHome];
            //[self.view addSubview:btnHome];
            
            UILabel* label02 = [[UILabel alloc]init];
            label02.text = @"我的电台";
            label02.frame = CGRectMake(200, 180, 80, 40);
            [_tableView addSubview:label02];
            label02.font = [UIFont systemFontOfSize:10];
            
            UIButton* btnDress = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [btnDress setImage:[[UIImage imageNamed:@"我的收藏.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
            btnDress.titleLabel.text = @"我的收藏";
            btnDress.titleLabel.font = [UIFont systemFontOfSize:10];
            btnDress.frame = CGRectMake(290, 150, 40, 40);
            [_tableView addSubview:btnDress];
            //[self.view addSubview:btnDress];
            
            UILabel* label03 = [[UILabel alloc]init];
            label03.text = @"我的收藏";
            label03.frame = CGRectMake(290, 180, 80, 40);
            [_tableView addSubview:label03];
            label03.font = [UIFont systemFontOfSize:10];
            
        }
        return cell2;
    }else if (indexPath.section == 2 && indexPath.row == 1) {
        if(cell3 == nil){
            cell3 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell3"];
            
            UIButton* btnLike = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [btnLike setImage:[[UIImage imageNamed:@"喜欢.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
            //btnLike.titleLabel.text = @"我的收藏";
            //btnLike.titleLabel.font = [UIFont systemFontOfSize:10];
            btnLike.frame = CGRectMake(20, 260, 100, 130);
            [_tableView addSubview:btnLike];
            //[self.view addSubview:btnDress];
            
            UIButton* btnPerson = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [btnPerson setImage:[[UIImage imageNamed:@"私人.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
            btnPerson.frame = CGRectMake(140, 260, 100, 130);
            [_tableView addSubview:btnPerson];
            
            UIButton* btnYun = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [btnYun setImage:[[UIImage imageNamed:@"云贝.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
            btnYun.frame = CGRectMake(260, 260, 100, 130);
            [_tableView addSubview:btnYun];
            
        }
        
        return cell3;
    }
    else if (indexPath.section == 3 && indexPath.row == 1) {
        if(cell4 == nil){
            cell4 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell4"];
            
            UIButton* btnNearly = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [btnNearly setImage:[[UIImage imageNamed:@"最近播放.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
            btnNearly.frame = CGRectMake(20, 450, 60, 60);
            [_tableView addSubview:btnNearly];
            
            UILabel* label04 = [[UILabel alloc]init];
            label04.text = @"全部已播歌曲                        300首";
            label04.frame = CGRectMake(90, 460, 80, 30);
            [_tableView addSubview:label04];
            label04.font = [UIFont systemFontOfSize:12];
            label04.numberOfLines = 0;
            
            UIButton* btnDan = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [btnDan setImage:[[UIImage imageNamed:@"歌单.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
            btnDan.frame = CGRectMake(190, 450, 60, 60);
            [_tableView addSubview:btnDan];
            
            UILabel* label05 = [[UILabel alloc]init];
            label05.text = @"歌单                继续播放";
            label05.frame = CGRectMake(260, 460, 80, 30);
            [_tableView addSubview:label05];
            label05.font = [UIFont systemFontOfSize:12];
            label05.numberOfLines = 0;
        }
        return cell4;
    }
    else if (indexPath.section == 4 && indexPath.row == 1) {
        if(cell5 == nil){
            cell5 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell5"];
            
            UIButton* btnEnglish = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [btnEnglish setImage:[[UIImage imageNamed:@"英文歌.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
            btnEnglish.frame = CGRectMake(20, 570, 60, 60);
            [_tableView addSubview:btnEnglish];
            
            UILabel* label06 = [[UILabel alloc]init];
            label06.text = @"英文歌             16首";
            label06.frame = CGRectMake(90, 580, 100, 30);
            [_tableView addSubview:label06];
            label06.font = [UIFont systemFontOfSize:12];
            label06.numberOfLines = 0;
            
            UIButton* btnPiano = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [btnPiano setImage:[[UIImage imageNamed:@"钢琴.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
            btnPiano.frame = CGRectMake(20, 650, 60, 60);
            [_tableView addSubview:btnPiano];
            
            UILabel* label07 = [[UILabel alloc]init];
            label07.text = @"钢琴                  23首";
            label07.frame = CGRectMake(90, 660, 100, 30);
            [_tableView addSubview:label07];
            label07.font = [UIFont systemFontOfSize:12];
            label07.numberOfLines = 0;
            
            UIButton* btnAdd = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [btnAdd setImage:[[UIImage imageNamed:@"添加.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
            btnAdd.frame = CGRectMake(20, 730, 60, 60);
            [_tableView addSubview:btnAdd];
            
            UILabel* label08 = [[UILabel alloc]init];
            label08.text = @"创建歌单";
            label08.frame = CGRectMake(90, 750, 100, 30);
            [_tableView addSubview:label08];
            label08.font = [UIFont systemFontOfSize:12];
            
            UIButton* btnHeart = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [btnHeart setImage:[[UIImage imageNamed:@"心动模式.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
            btnHeart.frame = CGRectMake(200, 570, 55, 55);
            [_tableView addSubview:btnHeart];
            
            UILabel* label09 = [[UILabel alloc]init];
            label09.text = @"心动模式             68首";
            label09.frame = CGRectMake(270, 580, 100, 30);
            [_tableView addSubview:label09];
            label09.font = [UIFont systemFontOfSize:12];
            label09.numberOfLines = 0;
            
            UIButton* btnEar = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [btnEar setImage:[[UIImage imageNamed:@"耳朵.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
            btnEar.frame = CGRectMake(200, 650, 60, 60);
            [_tableView addSubview:btnEar];
            
            UILabel* label10 = [[UILabel alloc]init];
            label10.text = @"耳朵                   46首";
            label10.frame = CGRectMake(270, 660, 100, 30);
            [_tableView addSubview:label10];
            label10.font = [UIFont systemFontOfSize:12];
            label10.numberOfLines = 0;
            
            
        }
        return cell5;
    }
    /*else if ((indexPath.section == 2 && indexPath.row == 0) || (indexPath.section == 3 && indexPath.row == 0) || (indexPath.section == 4 && indexPath.row == 0) ){
        if(cell6 == nil){
            cell6 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell6"];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }
        return cell6;
    }*/
    
    else{
        if(cell1 == nil){
            cell1 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:str];
        }
        cell1.textLabel.text = _arrayData[indexPath.section][indexPath.row];
        //cell1.imageView.image =[UIImage imageNamed:_arrayData[indexPath.section][indexPath.row]];
        return cell1;
    }
}

-(void) up {
    
}

-(void) down {
    
}

- (void)next {
    YunduoViewController* sr = [[YunduoViewController alloc]init];
    [self.navigationController pushViewController:sr animated:YES];
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0 && indexPath.row == 0) {
        return 150;
    }
    else if (indexPath.section == 1 && indexPath.row == 0) {
        return 60;
    }
    else if (indexPath.section == 2 && indexPath.row == 1) {
        return 140;
    }
    else if (indexPath.section == 3 && indexPath.row == 1) {
        return 70;
    }
    else if (indexPath.section == 4 && indexPath.row == 1) {
        return 240;
    }
    return 50;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return nil;
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0;
}
 

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

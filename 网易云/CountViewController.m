

#import "CountViewController.h"
#import "MyselfViewController.h"
@interface CountViewController ()

@end

@implementation CountViewController

//@synthesize mySwitch = _mySwitch;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage* imageCount = [UIImage imageNamed:@"账户.png"];
    UITabBarItem* tabBarItem = [[UITabBarItem alloc] initWithTitle:@"账户" image:imageCount tag:101];
    self.tabBarItem = tabBarItem;
    
    _mySwitch = [[UISwitch alloc] init];
    /*UIButton* btnRight = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    Btn01.frame = CGRectMake(0, 80, 100, 100);
    [_tableView addSubview:Btn01];*/
    
    [self createUI01];
    
     //创建数据视图对象
    //位置，风格
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 20, 375, 586) style:UITableViewStyleGrouped];
    
    //设置代理对象
    _tableView.delegate = self;
    //设置数据代理对象
    _tableView.dataSource = self;
    //数据视图显示
    [self.view addSubview:_tableView];
    
    
    
    //[self.view addSubview:btnRight];
    /*UIButton* btnRight = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnRight setImage:[[UIImage imageNamed:@"签到.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    //btnRight.titleLabel.text = @"签到";
    //btnRight.titleLabel.font = [UIFont systemFontOfSize:10];
    btnRight.frame = CGRectMake(300, 35, 40, 40);
    [_tableView addSubview:btnRight];*/
    
    
    UIButton* btnMessage = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnMessage setImage:[[UIImage imageNamed:@"消息.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btnMessage.titleLabel.text = @"我的消息";
    btnMessage.titleLabel.font = [UIFont systemFontOfSize:10];
    btnMessage.frame = CGRectMake(20, 160, 40, 80);
    [_tableView addSubview:btnMessage];
    //[self.view addSubview:btnMessage];
    
    UILabel* label = [[UILabel alloc]init];
    label.text = @"我的消息";
    //设定label的显示位置
    label.frame = CGRectMake(20, 200, 80, 40);
    //将label显示到屏幕上
    //[self.view addSubview:label];
    [_tableView addSubview:label];
    //设置文字大小，使用系统默认字体
    label.font = [UIFont systemFontOfSize:10];
    //设置文字颜色
    //label.textColor = [UIColor blueColor];
    
    
    UIButton* btnFirend = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnFirend setImage:[[UIImage imageNamed:@"好友.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btnFirend.titleLabel.text = @"好友";
    btnFirend.titleLabel.font = [UIFont systemFontOfSize:10];
    btnFirend.frame = CGRectMake(110, 180, 40, 40);
    [_tableView addSubview:btnFirend];
    //[self.view addSubview:btnFirend];
    
    UILabel* label01 = [[UILabel alloc]init];
    label01.text = @"我的好友";
    label01.frame = CGRectMake(110, 200, 80, 40);
    [_tableView addSubview:label01];
    label01.font = [UIFont systemFontOfSize:10];
    
    UIButton* btnHome = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnHome setImage:[[UIImage imageNamed:@"主页.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    //btnHome.titleLabel.text = @"个人主页";
    //btnHome.titleLabel.font = [UIFont systemFontOfSize:10];
    btnHome.frame = CGRectMake(200, 180, 40, 40);
    [_tableView addSubview:btnHome];
    //[self.view addSubview:btnHome];
    
    UILabel* label02 = [[UILabel alloc]init];
    label02.text = @"个人主页";
    label02.frame = CGRectMake(200, 200, 80, 40);
    [_tableView addSubview:label02];
    label02.font = [UIFont systemFontOfSize:10];
    
    UIButton* btnDress = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnDress setImage:[[UIImage imageNamed:@"装扮.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btnDress.titleLabel.text = @"个性装扮";
    btnDress.titleLabel.font = [UIFont systemFontOfSize:10];
    btnDress.frame = CGRectMake(290, 180, 40, 40);
    [_tableView addSubview:btnDress];
    //[self.view addSubview:btnDress];
    
    UILabel* label03 = [[UILabel alloc]init];
    label03.text = @"个性装扮";
    label03.frame = CGRectMake(290, 200, 80, 40);
    [_tableView addSubview:label03];
    label03.font = [UIFont systemFontOfSize:10];
    
    
    _arrayData = [[NSMutableArray alloc] init];
    
    
    NSArray *array01 = [NSArray arrayWithObjects:@"",nil];
    NSArray *array02 = [NSArray arrayWithObjects:@"", @"创作者中心",nil];
    NSArray *array03 = [NSArray arrayWithObjects:@"", @"演出商城", @"口袋", @"彩铃", @"在线听歌免流量",nil];
    NSArray *array04 = [NSArray arrayWithObjects:@"", @"设置", @"定时关闭", @"音乐黑名单", @"鲸云音效", @"添加Siri捷径", @"音乐闹钟", @"青少年模式", nil];
    NSArray *array05 = [NSArray arrayWithObjects:@"我的订单", @"优惠券", @"分享网易云音乐",@"关于",  nil];
    //NSArray *array05 = [NSArray arrayWithObjects:@"分享网易云音乐",@"关于",nil];
    NSArray *array06 = [NSArray arrayWithObjects:@"                 ",nil];
    
    [_arrayData addObject:array01];
    [_arrayData addObject:array02];
    [_arrayData addObject:array03];
    [_arrayData addObject:array04];
    [_arrayData addObject:array05];
    [_arrayData addObject:array06];
    
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}

-(void) createUI01
{
    
    //UIBarButtonItem *word = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:self action:@selector(click)];
    
    UIImage *ima = [[UIImage imageNamed:@"扫一扫"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *image = [[UIBarButtonItem alloc]initWithImage:ima style:UIBarButtonItemStyleDone target:self action:@selector(next)];
    self.navigationItem.leftBarButtonItems = @[image];
    //self.navigationItem.leftBarButtonItems = @[word];
    
     
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemClose target:self action:@selector(up)];
    self.navigationItem.rightBarButtonItems = @[item];
    
}

-(void) up {
    
}

-(void) next {
    
}


- (void)click {
    
    MyselfViewController* s = [[MyselfViewController alloc]init];
    [self.navigationController pushViewController:s animated:YES];
    //pop对本机界面销毁，只能回到上一层
    //[self.navigationController popViewControllerAnimated:YES];
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

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* str = @"cell";
    UITableViewCell *cell01 = nil;
     UITableViewCell *cell04 = nil;
    UITableViewCell *cell02 = nil;
    UITableViewCell *cell03 = nil;
    UITableViewCell *cell05 = nil;
    UITableViewCell *cell06 = nil;
    
    
    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:str];
    cell01 = [_tableView dequeueReusableCellWithIdentifier:@"cell01"];
    cell02 = [_tableView dequeueReusableCellWithIdentifier:@"cell02"];
    cell04 = [_tableView dequeueReusableCellWithIdentifier:@"cell04"];
    cell03 = [_tableView dequeueReusableCellWithIdentifier:@"cell03"];
    cell05 = [_tableView dequeueReusableCellWithIdentifier:@"cell05"];
    cell06 = [_tableView dequeueReusableCellWithIdentifier:@"cell06"];
    
    if(indexPath.section == 0) {
        if(cell01 == nil) {
            cell01 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell01"];
            
            UIButton* btnRight = [UIButton buttonWithType:UIButtonTypeCustom];
            [btnRight setImage:[UIImage imageNamed:@"签到"] forState:UIControlStateNormal];
            //btnRight.backgroundColor = [UIColor whiteColor];
            [btnRight addTarget:self action:@selector(pressRight:) forControlEvents:UIControlEventTouchUpInside];
            btnRight.frame = CGRectMake(300, 60, 40, 40);
            [btnRight setTintColor:[UIColor redColor]];
            
            [cell01.contentView addSubview:btnRight];
        }
        cell01.textLabel.text = @"小刺猬";
        cell01.imageView.image = [UIImage imageNamed:@"头像.png"];
        return cell01;
    }
    else if(indexPath.section == 2 && indexPath.row == 0){
        if(cell02 == nil){
            cell02 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell02"];
        }
        cell02.textLabel.text = @"音乐服务";
        cell02.textLabel.font = [UIFont systemFontOfSize:14];
        return cell02;
    }
    else if(indexPath.section == 3 && indexPath.row == 0){
        if(cell05 == nil){
            cell05 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell05"];
        }
        cell05.textLabel.text = @"小工具";
        cell05.textLabel.font = [UIFont systemFontOfSize:14];
        return cell05;
    }
    else if(indexPath.section == 1 && indexPath.row == 0){
        if(cell06 == nil){
            cell06 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell06"];
        }
        return cell06;
    }
    else if(indexPath.section == 3 && indexPath.row == 3){
        //cell04 = [tableView dequeueReusableCellWithIdentifier: @"cell04"];
        if(cell04 == nil){
            cell04 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell04"];
            
            
            _mySwitch.frame = CGRectMake(300, 15, 80, 40);
            //_mySwitch.on = YES;
            [cell04.contentView addSubview: _mySwitch];
        }
        
        cell04.textLabel.text = @"夜间模式";
        cell04.imageView.image = [UIImage imageNamed:@"3-4.png"];
        return cell04;
    }
    else if(indexPath.section == 5){
            if(cell03 == nil){
                cell03 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell03"];
                UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(140, 10, 80, 40)];
                [btn setTitle:@"退出登录" forState:UIControlStateNormal];
               [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];

                //btn.titleLabel.textColor = [UIColor redColor];
                [btn addTarget:self action:@selector(pressAlert:) forControlEvents:UIControlEventTouchUpInside];
                [cell03.contentView addSubview:btn];
                
            }
    //        cell05.textLabel.text = @"退出登录";
    //        cell05.textLabel.textAlignment = NSTextAlignmentCenter;
            return cell03;
        }
    else {
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:str];
        }
        cell.textLabel.text = _arrayData[indexPath.section][indexPath.row];
        
        //设置默认的图标信息
        NSString* str1 = [NSString stringWithFormat:@"%ld-%ld.png",indexPath.section, indexPath.row+1];
        
        UIImage* image = [UIImage imageNamed:str1];
        
        UIImageView* iView = [[UIImageView alloc]initWithImage:image];
        
        cell.imageView.image = image;
        
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        
        return cell;
        
    }
    
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0) {
        return 180;
    }
    else if (indexPath.section == 2 && indexPath.row == 0) {
        return 40;
    }
    else if (indexPath.section == 3 && indexPath.row == 0) {
        return 40;
    }
    return 50;
}

/*-(CGFloat) tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 40;
}*/

- (void) pressRight:(UIButton *) btn
{
    btn.selected = !btn.selected;
    if (btn.selected) {
       [btn setImage:[[UIImage imageNamed:@"签到图.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
        //btn.backgroundColor = [UIColor whiteColor];
        //btn.imageView.backgroundColor = [UIColor whiteColor];
    }
    else{
       [btn setImage:[UIImage imageNamed:@"签到.png"] forState:UIControlStateSelected];
        //btn.tintColor = [UIColor redColor];
    }
        
    //btn.backgroundColor = [UIColor whiteColor];
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
 


/*-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return @"";
    }else if (section == 1) {
        return @"音乐服务";
    }else if (section == 2) {
        return @"小工具";
    }else {
        return @"";
    }
    //return @"音乐服务";
}*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

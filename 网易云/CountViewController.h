//
//  CountViewController.h
//  网易云
//
//  Created by 郭红乐 on 2020/7/16.
//  Copyright © 2020 无. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CountViewController : UIViewController
<UITableViewDataSource,UITableViewDelegate>
{
    UITableView* _tableView;
    NSMutableArray* _arrayData;
    UISwitch* _mySwitch;
}
//@property(strong, nonatomic) UISwitch* mySwitch;
@end

NS_ASSUME_NONNULL_END

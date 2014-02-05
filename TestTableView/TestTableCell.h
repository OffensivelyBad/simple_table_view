//
//  TestTableCell.h
//  TestTableView
//
//  Created by Shawn Roller on 2/5/14.
//  Copyright (c) 2014 Shawn Roller. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestTableCell : UITableViewCell

@property (nonatomic,weak) UILabel *nameLabel IBOutlet;
@property (nonatomic,weak) UILabel *timeLabel IBOutlet;
@property (nonatomic,weak) UIImageView *thumbnailImageView IBOutlet;

@end

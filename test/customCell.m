//
//  customCell.m
//  test
//
//  Created by Linlin Ge on 2019/1/17.
//  Copyright © 2019年 zcc. All rights reserved.
//

#import "customCell.h"

@implementation customCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
      self.selectionStyle =  UITableViewCellSelectionStyleNone;

        [self.contentView addSubview:self.btn];
    }
    return self;
}

- (UIButton *)btn{
    if (_btn) {
        self.btn = [UIButton buttonWithType:UIButtonTypeCustom];
        _btn.frame = CGRectMake(10, 7.5, 100, 25);
        _btn.backgroundColor = [UIColor blueColor];
    }
    return self.btn;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

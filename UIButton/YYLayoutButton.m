//
//  YYLayoutButton.m
//  UIButton
//
//  Created by 杨世川 on 18/1/21.
//  Copyright © 2018年 杨世川. All rights reserved.
//

#import "YYLayoutButton.h"

@interface YYLayoutButton ()

@property (nonatomic,assign) CGFloat titleWidth;
@property (nonatomic,assign) CGFloat titleHeight;
@property (nonatomic,assign) CGFloat titleLabelX;
@property (nonatomic,assign) CGFloat titleLabelY;

@property (nonatomic,assign) CGFloat imageViewX;
@property (nonatomic,assign) CGFloat imageViewY;

@property (nonatomic,assign) CGFloat buttonW;
@property (nonatomic,assign) CGFloat buttonH;

@end

@implementation YYLayoutButton

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self initPara];
    }
    return self;
}

#pragma mark - 初始化参数
- (void)initPara
{
    self.buttonImageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0);
    self.buttonTitleEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0);
    self.imageViewWidth = 0;
    self.imageViewHeight = 0;
    self.titleFont = 15.0;
    self.imageType = YYLayoutButtonTypeImageRight;

    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.imageView.backgroundColor = [UIColor redColor];
    self.titleLabel.backgroundColor = [UIColor greenColor];
}

- (void)layoutSubviews
{
    [super layoutSubviews];

    switch (self.imageType) {
        case YYLayoutButtonTypeImageUp:
             [self imageUp];
             break;
        case YYLayoutButtonTypeImageDown:
             [self imageDown];
             break;
        case YYLayoutButtonTypeImageLeft:
             [self imageLeft];
             break;
        case YYLayoutButtonTypeImageRight:
             [self imageRight];
             break;
        default:
            [self imageRight];
            break;
    }
}

#pragma mark - 图片上文字下
- (void)imageUp
{
    [self dealImageViewWidthAndHeight];
    [self dealTitleLabelWidthAndHeight];
    [self dealImageUpFrame];
    [self setSubViewsFrame];
}

#pragma mark - 图片下文字上
- (void)imageDown
{
    [self dealImageViewWidthAndHeight];
    [self dealTitleLabelWidthAndHeight];
    [self dealImageDownFrame];
    [self setSubViewsFrame];
}

#pragma mark - 图片左文字右
- (void)imageLeft
{
    [self dealImageViewWidthAndHeight];
    [self dealTitleLabelWidthAndHeight];
    [self dealImageLeftFrame];
    [self setSubViewsFrame];
}

#pragma mark - 图片右文字左
- (void)imageRight
{
    [self dealImageViewWidthAndHeight];
    [self dealTitleLabelWidthAndHeight];
    [self dealImageRightFrame];
    [self setSubViewsFrame];
}

#pragma mark - 设置imageUp的frame
- (void)dealImageUpFrame
{
    //1、imageView
    self.imageViewX = self.buttonImageEdgeInsets.left;
    self.imageViewY = self.buttonImageEdgeInsets.top;

    //2、titleLabel
    self.titleLabelX = self.buttonTitleEdgeInsets.left;
    self.titleLabelY = CGRectGetMaxY(self.imageView.frame) + self.buttonImageEdgeInsets.bottom + self.buttonTitleEdgeInsets.top;

    //3、button的frame
    CGFloat imageViewW = self.buttonImageEdgeInsets.left + self.buttonImageEdgeInsets.right + self.imageViewWidth;
    CGFloat imageViewH = self.buttonImageEdgeInsets.top + self.buttonImageEdgeInsets.bottom + self.imageViewHeight;
    CGFloat titleLabelW = self.buttonTitleEdgeInsets.left + self.buttonTitleEdgeInsets.right + self.titleWidth;
    CGFloat titleLabelH = self.buttonTitleEdgeInsets.top + self.buttonTitleEdgeInsets.bottom + self.titleHeight;

    self.buttonW = (imageViewW > titleLabelW) ? imageViewW : titleLabelW;
    self.buttonH = imageViewH + titleLabelH;
    self.titleWidth = self.buttonW;
}

#pragma mark - 设置ImageDown的frame
- (void)dealImageDownFrame
{
    //1、titleLabel
    self.titleLabelX = self.buttonTitleEdgeInsets.left;
    self.titleLabelY = self.buttonTitleEdgeInsets.top;

    //2、imageView
    self.imageViewX = self.buttonImageEdgeInsets.left;
    self.imageViewY = CGRectGetMaxY(self.titleLabel.frame) + self.buttonTitleEdgeInsets.bottom + self.buttonImageEdgeInsets.top;

    //3、button的frame
    CGFloat imageViewW = self.buttonImageEdgeInsets.left + self.buttonImageEdgeInsets.right + self.imageViewWidth;
    CGFloat imageViewH = self.buttonImageEdgeInsets.top + self.buttonImageEdgeInsets.bottom + self.imageViewHeight;
    CGFloat titleLabelW = self.buttonTitleEdgeInsets.left + self.titleEdgeInsets.right + self.titleWidth;
    CGFloat titleLabelH = self.buttonTitleEdgeInsets.top + self.buttonTitleEdgeInsets.bottom + self.titleHeight;

    self.buttonW = (imageViewW > titleLabelW) ? imageViewW : titleLabelW;
    self.buttonH = imageViewH + titleLabelH;
    self.titleWidth = self.buttonW;
}

#pragma mark - 设置imageLeft的frame
- (void)dealImageLeftFrame
{
    //1、imageView
    self.imageViewX = self.buttonImageEdgeInsets.left;
    self.imageViewY = self.imageEdgeInsets.top;

    //2、titleLabel
    self.titleLabelX = CGRectGetMaxX(self.imageView.frame) + self.buttonImageEdgeInsets.right + self.buttonTitleEdgeInsets.left;
    self.titleLabelY = self.buttonTitleEdgeInsets.top;

    //3、button的frame
    CGFloat imageViewW = self.buttonImageEdgeInsets.left + self.buttonImageEdgeInsets.right + self.imageViewWidth;
    CGFloat imageViewH = self.buttonImageEdgeInsets.top + self.buttonImageEdgeInsets.bottom + self.imageViewHeight;
    CGFloat titleLabelW = self.buttonTitleEdgeInsets.left + self.buttonTitleEdgeInsets.right + self.titleWidth;
    CGFloat titleLabelH = self.buttonTitleEdgeInsets.top + self.buttonTitleEdgeInsets.bottom + self.titleHeight;

    self.buttonW = imageViewW + titleLabelW;
    self.buttonH = (imageViewH > titleLabelH) ? imageViewH : titleLabelH;
}

#pragma mark - 设置imageRight的frame
- (void)dealImageRightFrame
{
    //1、titleLabel
    self.titleLabelX = self.buttonTitleEdgeInsets.left;
    self.titleLabelY = self.buttonTitleEdgeInsets.top;

    //2、imageView
    self.imageViewX = CGRectGetMaxX(self.titleLabel.frame) + self.buttonTitleEdgeInsets.right + self.buttonImageEdgeInsets.left;
    self.imageViewY = self.buttonImageEdgeInsets.top;

    //3、button
    CGFloat imageViewW = self.buttonImageEdgeInsets.left + self.buttonImageEdgeInsets.right + self.imageViewWidth;
    CGFloat imageViewH = self.buttonImageEdgeInsets.top + self.buttonImageEdgeInsets.bottom + self.imageViewHeight;
    CGFloat titleLabelW = self.buttonTitleEdgeInsets.left + self.buttonTitleEdgeInsets.right + self.titleWidth;
    CGFloat titleLabelH = self.buttonTitleEdgeInsets.top + self.buttonTitleEdgeInsets.bottom + self.titleHeight;

    self.buttonW = imageViewW + titleLabelW;
    self.buttonH = (imageViewH > titleLabelH) ? imageViewH : titleLabelH;
}

#pragma mark - 设置imageView的宽高
- (void)dealImageViewWidthAndHeight
{
    //1、设置图片的Frame、此时只考虑buttonImageEdgeInsets的top和bottom、默认垂直居中
    UIImage *image = self.imageView.image;
    //2、是否需要设置imageViewWidth、imageViewHeight
    CGFloat imageViewWidth = (self.imageViewWidth == 0) ? image.size.width : self.imageViewWidth;
    CGFloat imageViewHeight = (self.imageViewHeight == 0) ? image.size.height : self.imageViewHeight;

    self.imageViewWidth = imageViewWidth;
    self.imageViewHeight = imageViewHeight;
}

#pragma mark - 设置titleLabel的宽高
- (void)dealTitleLabelWidthAndHeight
{
    NSString *titleText = self.titleLabel.text;
    if (!self.fontName)
    {
       self.titleLabel.font = [UIFont systemFontOfSize:self.titleFont];
    }
    else
    {
        self.titleLabel.font = [UIFont fontWithName:self.fontName size:self.titleFont];
    }
    CGSize size = [titleText sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:self.titleLabel.font,NSFontAttributeName,nil]];

    self.titleWidth = size.width;
    self.titleHeight = size.height;
}

#pragma mark - 设置subView位置
- (void)setSubViewsFrame
{
    self.imageView.frame = CGRectMake(self.imageViewX, self.imageViewY, self.imageViewWidth, self.imageViewHeight);
    self.titleLabel.frame = CGRectMake(self.titleLabelX, self.titleLabelY, self.titleWidth, self.titleHeight);
    CGRect buttonFrame = self.frame;
    self.frame = CGRectMake(buttonFrame.origin.x, buttonFrame.origin.y, self.buttonW, self.buttonH);

    NSLog(@"self.frame  =%@",NSStringFromCGRect(self.frame));
}


@end





//
//  ViewController.m
//  UIButton
//
//  Created by 杨世川 on 17/5/13.
//  Copyright © 2017年 杨世川. All rights reserved.
//

#import "ViewController.h"

static CGFloat imageViewX = 0;
static CGFloat imageViewY = 0;

static CGFloat titleLabelX = 0;
static CGFloat titleLabelY = 0;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

//    [self contentCenterButton];
//    [self contentLeftAndTopButton];
//    [self contentRightAndTopButton];
//    [self contentBottomLeftButton];
//    [self contentBottomRightButton];
//    [self imageViewUpWithTitleLabelDown];
//    [self imageViewDownWithTitleLabelUp];
    [self imageIsBiggerThanButton];
}

//imageView和titleLable在右上角
- (void)contentRightAndTopButton
{
    //1、添加按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"add"] forState:UIControlStateNormal];
    [btn setTitle:@"title" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.layer.borderColor = [UIColor redColor].CGColor;
    btn.layer.borderWidth = 1.0;
    btn.frame = CGRectMake(100, 100, 200, 200);
    [self.view addSubview:btn];

    //2、设置按钮内部控件显示样式
    btn.contentHorizontalAlignment =UIControlContentHorizontalAlignmentRight;
    btn.contentVerticalAlignment = UIControlContentVerticalAlignmentTop;

    //3、获取控件宽度
    CGFloat imageViewWidth = btn.imageView.frame.size.width;
    CGFloat titleWidth = btn.titleLabel.frame.size.width;

    //4、设置内边距
    [btn setImageEdgeInsets:UIEdgeInsetsMake(0, imageViewWidth, 0, 0)];
    [btn setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, titleWidth)];

    //5、添加边界线、方便观察
    imageViewX = 124.8;
    imageViewY = 0;
    titleLabelX = 169.5;
    titleLabelY = 0;
    [self setBorderLineWith:btn];
    NSLog(@"imageView.frame = %@",NSStringFromCGRect(btn.imageView.frame));
    NSLog(@"titleLable.frame = %@",NSStringFromCGRect(btn.titleLabel.frame));
}

//imageView和titleLable在左上角
- (void)contentLeftAndTopButton
{
    //1、添加按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"add"] forState:UIControlStateNormal];
    [btn setTitle:@"title" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.layer.borderColor = [UIColor redColor].CGColor;
    btn.layer.borderWidth = 1.0;
    btn.frame = CGRectMake(100, 100, 200, 200);
    [self.view addSubview:btn];

    //2、设置按钮内部控件显示样式
    btn.contentHorizontalAlignment =UIControlContentHorizontalAlignmentLeft;
    btn.contentVerticalAlignment = UIControlContentVerticalAlignmentTop;

    //3、获取控件宽度
    CGFloat imageViewWidth = btn.imageView.frame.size.width;
    CGFloat titleWidth = btn.titleLabel.frame.size.width;

    //4、设置内边距
    [btn setImageEdgeInsets:UIEdgeInsetsMake(0, imageViewWidth, 0, 0)];
    [btn setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, titleWidth)];

    //5、添加边界线、方便观察
    imageViewX = 0;
    imageViewY = 0;
    titleLabelX = 45;
    titleLabelY = 0;
    [self setBorderLineWith:btn];
    NSLog(@"imageView.frame = %@",NSStringFromCGRect(btn.imageView.frame));
    NSLog(@"titleLable.frame = %@",NSStringFromCGRect(btn.titleLabel.frame));
}

//imageView和titleLable在左下角
- (void)contentBottomLeftButton
{
    //1、添加按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"add"] forState:UIControlStateNormal];
    [btn setTitle:@"title" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.layer.borderColor = [UIColor redColor].CGColor;
    btn.layer.borderWidth = 1.0;
    btn.frame = CGRectMake(100, 100, 200, 200);
    [self.view addSubview:btn];

    //2、设置按钮内部控件显示样式
    btn.contentHorizontalAlignment =UIControlContentHorizontalAlignmentLeft;
    btn.contentVerticalAlignment = UIControlContentVerticalAlignmentBottom;

    //3、获取控件宽度
    CGFloat imageViewWidth = btn.imageView.frame.size.width;
    CGFloat titleWidth = btn.titleLabel.frame.size.width;

    //4、设置内边距
    [btn setImageEdgeInsets:UIEdgeInsetsMake(0, imageViewWidth, 0, 0)];
    [btn setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, titleWidth)];

    //5、添加边界线、方便观察
    imageViewX = 0;
    imageViewY = 159;
    titleLabelX = 45;
    titleLabelY = 178.5;
    [self setBorderLineWith:btn];
    NSLog(@"imageView.frame = %@",NSStringFromCGRect(btn.imageView.frame));
    NSLog(@"titleLable.frame = %@",NSStringFromCGRect(btn.titleLabel.frame));
}

- (void)contentBottomRightButton
{
    //1、添加按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"add"] forState:UIControlStateNormal];
    [btn setTitle:@"title" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.layer.borderColor = [UIColor redColor].CGColor;
    btn.layer.borderWidth = 1.0;
    btn.frame = CGRectMake(100, 100, 200, 200);
    [self.view addSubview:btn];

    //2、设置按钮内部控件显示样式
    btn.contentHorizontalAlignment =UIControlContentHorizontalAlignmentRight;
    btn.contentVerticalAlignment = UIControlContentVerticalAlignmentBottom;

    //3、获取控件宽度
    CGFloat imageViewWidth = btn.imageView.frame.size.width;
    CGFloat titleWidth = btn.titleLabel.frame.size.width;

    //4、设置内边距
    [btn setImageEdgeInsets:UIEdgeInsetsMake(0, imageViewWidth, 0, 0)];
    [btn setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, titleWidth)];

    //5、添加边界线、方便观察
    imageViewX = 124.8;
    imageViewY = 159;
    titleLabelX = 139;
    titleLabelY = 178.5;
    [self setBorderLineWith:btn];
    NSLog(@"imageView.frame = %@",NSStringFromCGRect(btn.imageView.frame));
    NSLog(@"titleLable.frame = %@",NSStringFromCGRect(btn.titleLabel.frame));
}


//imageView和titleLable居中模式
- (void)contentCenterButton
{
    //1、添加按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"add"] forState:UIControlStateNormal];
    [btn setTitle:@"title" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.layer.borderColor = [UIColor redColor].CGColor;
    btn.layer.borderWidth = 1.0;
    btn.frame = CGRectMake(100, 100, 200, 200);
    [self.view addSubview:btn];

    //2、设置按钮内部控件显示样式
    btn.contentHorizontalAlignment =UIControlContentHorizontalAlignmentCenter;
    btn.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;

    //3、获取控件宽度
    CGFloat imageViewWidth = btn.imageView.frame.size.width;
    CGFloat titleWidth = btn.titleLabel.frame.size.width;

    //4、设置内边距
    [btn setImageEdgeInsets:UIEdgeInsetsMake(0, imageViewWidth * 2, 0, 0)];
    [btn setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, titleWidth * 2)];

    //5、添加边界线、方便观察
    imageViewX = 62;
    imageViewY = 79.5;
    titleLabelX = 107.5;
    titleLabelY = 89.5;
    [self setBorderLineWith:btn];
    NSLog(@"imageView.frame = %@",NSStringFromCGRect(btn.imageView.frame));
    NSLog(@"titleLable.frame = %@",NSStringFromCGRect(btn.titleLabel.frame));
}

//图片在上，文字在下
- (void)imageViewUpWithTitleLabelDown
{
    //1、添加按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"add"] forState:UIControlStateNormal];
    [btn setTitle:@"title" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.layer.borderColor = [UIColor redColor].CGColor;
    btn.layer.borderWidth = 1.0;
    btn.frame = CGRectMake(100, 100, 200, 200);
    [self.view addSubview:btn];

    //2、设置按钮内部控件显示样式
    btn.contentHorizontalAlignment =UIControlContentHorizontalAlignmentCenter;
    btn.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;

    //3、获取控件宽度
    CGFloat imageViewWidth = btn.imageView.frame.size.width;
    CGFloat imageViewHeight = btn.imageView.frame.size.height;

    CGFloat titleWidth = btn.titleLabel.frame.size.width;
    CGFloat titleHeight = btn.titleLabel.frame.size.height;

    //4、设置内边距
    [btn setImageEdgeInsets:UIEdgeInsetsMake(0, imageViewWidth, imageViewHeight, 0)];
    [btn setTitleEdgeInsets:UIEdgeInsetsMake(titleHeight, 0, 0, titleWidth)];

    //5、添加边界线、方便观察
    imageViewX = 62;
    imageViewY = 79.5;
    titleLabelX = 107.5;
    titleLabelY = 89.5;
    [self setBorderLineWith:btn];
    NSLog(@"imageView.frame = %@",NSStringFromCGRect(btn.imageView.frame));
    NSLog(@"titleLable.frame = %@",NSStringFromCGRect(btn.titleLabel.frame));
}

//图片在上，文字在下
- (void)imageViewDownWithTitleLabelUp
{
    //1、添加按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"add"] forState:UIControlStateNormal];
    [btn setTitle:@"title" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.layer.borderColor = [UIColor redColor].CGColor;
    btn.layer.borderWidth = 1.0;
    btn.frame = CGRectMake(100, 100, 200, 200);
    [self.view addSubview:btn];

    //2、设置按钮内部控件显示样式
    btn.contentHorizontalAlignment =UIControlContentHorizontalAlignmentCenter;
    btn.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;

    //3、获取控件宽度
    CGFloat imageViewWidth = btn.imageView.frame.size.width;
    CGFloat imageViewHeight = btn.imageView.frame.size.height;

    CGFloat titleWidth = btn.titleLabel.frame.size.width;
    CGFloat titleHeight = btn.titleLabel.frame.size.height;

    //4、设置内边距
    [btn setImageEdgeInsets:UIEdgeInsetsMake(imageViewHeight, imageViewWidth, 0, 0)];
    [btn setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, titleHeight, titleWidth)];

    //5、添加边界线、方便观察
    imageViewX = 62;
    imageViewY = 79.5;
    titleLabelX = 107.5;
    titleLabelY = 89.5;
    [self setBorderLineWith:btn];
    NSLog(@"imageView.frame = %@",NSStringFromCGRect(btn.imageView.frame));
    NSLog(@"titleLable.frame = %@",NSStringFromCGRect(btn.titleLabel.frame));
}

//图片尺寸大于按钮的尺寸
- (void)imageIsBiggerThanButton
{
    //1、添加按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"qq.jpg"] forState:UIControlStateNormal];
    [btn setTitle:@"title" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.layer.borderColor = [UIColor redColor].CGColor;
    btn.layer.borderWidth = 1.0;
    btn.frame = CGRectMake(100, 100, 200, 200);
    [self.view addSubview:btn];
}


//添加边界线、方便观察
- (void)setBorderLineWith:(UIButton *)btn
{
    CGFloat x = btn.frame.origin.x;
    CGFloat y = btn.frame.origin.y;

    CGFloat imageViewWidth = btn.imageView.frame.size.width;
    CGFloat imageViewHeight = btn.imageView.frame.size.height;

    CGFloat titleLabelWidth = btn.titleLabel.frame.size.width;
    CGFloat titleLabelHeight = btn.titleLabel.frame.size.height;

    UIView *viewOne = [[UIView alloc]initWithFrame:CGRectMake(x + imageViewX, y + imageViewY, imageViewWidth, imageViewHeight)];
    viewOne.backgroundColor = [UIColor clearColor];
    viewOne.layer.borderWidth = 0.5;
    viewOne.layer.borderColor = [UIColor redColor].CGColor;
    [self.view addSubview:viewOne];

    UIView *viewTwo = [[UIView alloc]initWithFrame:CGRectMake(x + titleLabelX, y + titleLabelY, titleLabelWidth, titleLabelHeight)];
    viewTwo.backgroundColor = [UIColor clearColor];
    viewTwo.layer.borderWidth = 0.5;
    viewTwo.layer.borderColor = [UIColor redColor].CGColor;
    [self.view addSubview:viewTwo];

    UIView *viewThree = [[UIView alloc]initWithFrame:CGRectMake(x, y + 100, 200, 1)];
    viewThree.backgroundColor = [UIColor redColor];
    [self.view addSubview:viewThree];

    UIView *viewFour = [[UIView alloc]initWithFrame:CGRectMake(x + 100, y, 1, 200)];
    viewFour.backgroundColor = [UIColor redColor];
    [self.view addSubview:viewFour];

}

@end


//
//  ViewController.m
//  ChineseToPinYinDemo
//
//  Created by kuxing on 15/3/23.
//  Copyright (c) 2015年 yangyanan. All rights reserved.
//

#import "ViewController.h"
#import "ChineseToPinyin.h"
@interface ViewController ()
@property (nonatomic,strong) UITextView *textView,*resultTextView;
@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	UITextView *textView = [[UITextView alloc] init];
	textView.backgroundColor = [UIColor grayColor];
	textView.text = @"测试数据";
	textView.translatesAutoresizingMaskIntoConstraints = NO;
	[self.view addSubview:textView];
	[self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[textView]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(textView)]];
	self.textView = textView;
	UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
	button.translatesAutoresizingMaskIntoConstraints = NO;
	[self.view addSubview:button];
	[button setTitle:@"Chinese to PinYin" forState:UIControlStateNormal];
	[button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
	[self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[button]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(button)]];
	
	UITextView *resultTextView = [[UITextView alloc] init];
	resultTextView.backgroundColor = [UIColor whiteColor];
	resultTextView.textColor = [UIColor blackColor];
	self.resultTextView = resultTextView;
	resultTextView.translatesAutoresizingMaskIntoConstraints = NO;
	[self.view addSubview:resultTextView];
	[self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[resultTextView]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(resultTextView)]];
	
	
	[self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[textView(100)][button(50)][resultTextView(50)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(textView,resultTextView,button)]];
	
}
- (void)buttonClick:(id)sender
{
	NSString *text=[ChineseToPinyin pinyinFromChiniseString:self.textView.text];
	self.resultTextView.text = text;

}
- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end

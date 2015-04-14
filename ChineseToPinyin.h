//
//  ChineseToPinyin.h
//  LianPu
//
//  Created by shawnlee on 10-12-16.
//  Copyright 2010 lianpu. All rights reserved.
//

/* USE LIKE
 
 NSLog(@"%@", [ChineseToPinyin pinyinFromChiniseString:@"世界杯"]);
 NSLog(@"%c", [ChineseToPinyin sortSectionTitle:@"世界杯"]);
 
 */


#import <Foundation/Foundation.h>


@interface ChineseToPinyin : NSObject

+ (NSString *) pinyinFromChiniseString:(NSString *)string;

+ (char) sortSectionTitle:(NSString *)string;

@end

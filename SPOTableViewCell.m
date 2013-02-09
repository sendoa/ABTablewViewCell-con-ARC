//
//  SPOTableViewCell.m
//  Metodo Tweetie
//
//  Created by Sendoa Portuondo on 06/02/13.
//  Copyright (c) 2013 Qbikode Solutions, S.L. All rights reserved.
//

#import "SPOTableViewCell.h"

static UIFont *titleFont = nil;
static UIFont *subTitleFont = nil;
static UIColor *titleColor = nil;
static UIColor *subTitleColor = nil;
static UIColor *cellDefaultColor = nil;
static UIColor *cellHighlightedColor = nil;

@implementation SPOTableViewCell

+ (void)initialize
{
	titleFont = [UIFont systemFontOfSize:17];
	subTitleFont = [UIFont systemFontOfSize:13];
	titleColor = [UIColor darkTextColor];
	subTitleColor = [UIColor darkGrayColor];
	cellDefaultColor = [UIColor whiteColor];
	cellHighlightedColor = [UIColor blueColor];
}

- (void)drawContentView:(CGRect)rect highlighted:(BOOL)highlighted
{	
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	if(self.highlighted || self.selected)
	{
		CGContextSetFillColorWithColor(context, cellHighlightedColor.CGColor);
		CGContextFillRect(context, CGRectMake(0, 0, self.frame.size.width, self.frame.size.height));
		CGContextSetFillColorWithColor(context, titleColor.CGColor);
	} else {
		CGContextSetFillColorWithColor(context, cellDefaultColor.CGColor);
		CGContextFillRect(context, CGRectMake(0, 0, self.frame.size.width, self.frame.size.height));
		CGContextSetFillColorWithColor(context, titleColor.CGColor);
	}
	
    // Thumbnail
    [_thumbnail drawInRect:CGRectMake(12, 4, 35, 35)];
    
    // Título
	[titleColor set];
    [_title drawAtPoint:CGPointMake(54, 3)
			   forWidth:200
			   withFont:titleFont
			   fontSize:17
		  lineBreakMode:NSLineBreakByTruncatingTail
	 baselineAdjustment:UIBaselineAdjustmentAlignCenters];
	
    // Subtítulo
    [subTitleColor set];
    [_subtitle drawAtPoint:CGPointMake(54, 23)
				  forWidth:200
				  withFont:subTitleFont
				  fontSize:13
			 lineBreakMode:NSLineBreakByTruncatingTail
		baselineAdjustment:UIBaselineAdjustmentAlignCenters];
}

@end

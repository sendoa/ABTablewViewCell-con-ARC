//
//  SPOTableViewCell.h
//  Metodo Tweetie
//
//  Created by Sendoa Portuondo on 06/02/13.
//  Copyright (c) 2013 Qbikode Solutions, S.L. All rights reserved.
//

#import "ABTableViewCell.h"

@interface SPOTableViewCell : ABTableViewCell

@property (copy, nonatomic) UIImage *thumbnail;
@property (copy, nonatomic) NSString *title;
@property (copy, nonatomic) NSString *subtitle;

@end

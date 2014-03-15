//
//  ColorTheme.m
//  Merge
//
//  Created by Jason Fieldman on 3/15/14.
//  Copyright (c) 2014 Jason Fieldman. All rights reserved.
//

#import "ColorTheme.h"

@implementation ColorTheme

SINGLETON_IMPL(ColorTheme);

- (id) init {
	if ((self = [super init])) {
	
		_shapeThemes = [NSMutableArray array];
		
		{
			NSMutableArray *theme = [NSMutableArray array];
			#if 0
			for (int i = 0; i < 7; i++) {
				[theme addObject:[UIColor colorWithHue:i/6.5 saturation:0.45 brightness:(0.2+i*0.2) alpha:(0.2+i*0.2)]];
			}
			#else
			float sat = 0.3;
			[theme addObject:[UIColor colorWithHue:0.00 saturation:sat brightness:1 alpha:1]];
			[theme addObject:[UIColor colorWithHue:0.09 saturation:sat brightness:1 alpha:1]];
			[theme addObject:[UIColor colorWithHue:0.20 saturation:sat brightness:1 alpha:1]];
			[theme addObject:[UIColor colorWithHue:0.33 saturation:sat brightness:1 alpha:1]];
			[theme addObject:[UIColor colorWithHue:0.55 saturation:sat brightness:1 alpha:1]];
			[theme addObject:[UIColor colorWithHue:0.70 saturation:sat brightness:1 alpha:1]];
			#endif
			[_shapeThemes addObject:theme];
		}
		
	}
	return self;
}

- (UIColor*) colorForShapeId:(int)shapeId {
	return (UIColor*)([_shapeThemes[0] objectAtIndex:shapeId]);
}


@end
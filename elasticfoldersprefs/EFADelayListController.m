#include "EFADelayListController.h"

@implementation EFADelayListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Delay" target:self];
	}

	return _specifiers;
}

@end

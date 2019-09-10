#include "EFAMassListController.h"

@implementation EFAMassListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Mass" target:self];
	}

	return _specifiers;
}

@end

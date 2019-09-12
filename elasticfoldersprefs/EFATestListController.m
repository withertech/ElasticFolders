#include "EFATestListController.h"

@implementation EFATestListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Test" target:self];
	}

	return _specifiers;
}

@end

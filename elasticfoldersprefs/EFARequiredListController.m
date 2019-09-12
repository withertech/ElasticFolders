#include "EFARequiredListController.h"

@implementation EFARequiredListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Required" target:self];
	}

	return _specifiers;
}

@end

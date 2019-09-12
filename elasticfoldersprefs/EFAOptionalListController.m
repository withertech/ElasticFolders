#include "EFAOptionalListController.h"

@implementation EFAOptionalListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Optional" target:self];
	}

	return _specifiers;
}

@end

#include "EFADampingListController.h"

@implementation EFADampingListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Damping" target:self];
	}

	return _specifiers;
}

@end

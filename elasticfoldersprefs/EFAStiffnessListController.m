#include "EFAStiffnessListController.h"

@implementation EFAStiffnessListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Stiffness" target:self];
	}

	return _specifiers;
}

@end

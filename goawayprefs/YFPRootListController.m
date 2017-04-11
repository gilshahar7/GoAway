#include "YFPRootListController.h"

@implementation YFPRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}

-(void)save
{
    [self.view endEditing:YES];
}

@end

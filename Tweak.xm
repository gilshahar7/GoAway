@interface SBDashBoardModalView
@property (nonatomic,copy) NSString * titleText;
@property (nonatomic,copy) NSString * subtitleText;
@property (nonatomic,retain) UIButton * secondaryActionButton;
@end

	static NSString *settingsPath = @"/var/mobile/Library/Preferences/com.gilshahar7.goawayprefs.plist";
	static NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:settingsPath];

%hook SBDashBoardModalView
-(void)layoutSubviews{
	%orig;
	NSString * titleText = [prefs objectForKey:@"titleTextField"];
	if(!(titleText == nil || [titleText isEqual:@""])){
		self.titleText = titleText;
	}
	NSString * subtitleText = [prefs objectForKey:@"subtitleTextField"];
	if(!(subtitleText == nil || [subtitleText isEqual:@""])){
		self.subtitleText = subtitleText;
	}

}
-(void)setSecondaryActionButtonText:(NSString *)arg1 {
    NSString * emergencyText = [prefs objectForKey:@"emergencyTextField"];
	if(!(emergencyText == nil || [emergencyText isEqual:@""])){
		%orig(emergencyText);
	}
	%orig;
}
%end
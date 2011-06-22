#import <AudioToolbox/AudioToolbox.h>
%hook UIAlertView

- (void)show
{
	AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
	%orig;
}

%end

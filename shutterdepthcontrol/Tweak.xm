#import <UIKit/UIKit.h>

NSDictionary *bundle = [[NSUserDefaults standardUserDefaults] persistentDomainForName:@"com.jbrownllama.shutterdepth"];

id PMisEnabled = [bundle valueForKey:@"PMisEnabled"];


%hook CAMCaptureCapabilities

-(bool) isDepthEffectApertureSupported {
	if ([PMisEnabled isEqual:@1]) {
		return TRUE;
	}else{
		return FALSE;
	}
}
%end

%hook FigCaptureSourceVideoFormat

-(float)minSimulatedAperture {
	if ([PMisEnabled isEqual:@1]) {
		return 1.4;
	}else{
		return 1.4;
	}
}

-(float)maxSimulatedAperture {
	if ([PMisEnabled isEqual:@1]) {
		return 16;
	}else{
		return 16;
	}
}

-(float)defaultSimulatedAperture {
	if ([PMisEnabled isEqual:@1]) {
		return 4.5;
	}else{
		return 4.5;
	}
}
%end

%hook AVCaptureDeviceFormat

-(float)minSimulatedAperture {
	if ([PMisEnabled isEqual:@1]) {
		return 1.4;
	}else{
		return 1.4;
	}
}

-(float)maxSimulatedAperture {
	if ([PMisEnabled isEqual:@1]) {
		return 16;
	}else{
		return 16;
	}
}

-(float)defaultSimulatedAperture {
	if ([PMisEnabled isEqual:@1]) {
		return 4.5;
	}else{
		return 4.5;
	}
}
%end

%hook PUCropToolController

-(void)viewWillAppear:(BOOL)argument {
	if ([PMisEnabled isEqual:@1]) {
		return %orig;
	}else{
		return %orig;
	}
}

-(void)viewWillDissappear:(BOOL)argument {
	if ([PMisEnabled isEqual:@1]) {
		return %orig;
	}else{
		return %orig;
	}
}
%end

%hook PUFiltersToolController

-(void)viewWillAppear:(BOOL)argument {
	if ([PMisEnabled isEqual:@1]) {
		return %orig;
	}else{
		return %orig;
	}
}

-(void)viewWillDissappear:(BOOL)argument {
	if ([PMisEnabled isEqual:@1]) {
		return %orig;
	}else{
		return %orig;
	}
}
%end

%hook PUAdjustmentsToolController

-(void)viewWillAppear:(BOOL)argument {
	if ([PMisEnabled isEqual:@1]) {
		return %orig;
	}else{
		return %orig;
	}
}

-(void)viewWillDissappear:(BOOL)argument {
	if ([PMisEnabled isEqual:@1]) {
		return %orig;
	}else{
		return %orig;
	}
}
%end

%hook PURedeyeToolController

-(void)viewWillAppear:(BOOL)argument {
	if ([PMisEnabled isEqual:@1]) {
		return %orig;
	}else{
		return %orig;
	}
}

-(void)viewWillDissappear:(BOOL)argument {
	if ([PMisEnabled isEqual:@1]) {
		return %orig;
	}else{
		return %orig;
	}
}
%end

%hook CAMViewfinderViewController

-(bool) _shouldEnableApertureButton {
	if ([PMisEnabled isEqual:@1]) {
		return TRUE;
	}else{
		return FALSE;
	}
}
%end



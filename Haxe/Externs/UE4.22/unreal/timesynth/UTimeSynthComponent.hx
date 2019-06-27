/**
 * 
 * WARNING! This file was autogenerated by: 
 *  _   _ _   _ __   __ 
 * | | | | | | |\ \ / / 
 * | | | | |_| | \ V /  
 * | | | |  _  | /   \  
 * | |_| | | | |/ /^\ \ 
 *  \___/\_| |_/\/   \/ 
 * 
 * This file was autogenerated by UnrealHxGenerator using UHT definitions.
 * It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
 * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal.timesynth;

@:umodule("TimeSynth")
@:glueCppIncludes("TimeSynthComponent.h")
@:uextern @:uclass extern class UTimeSynthComponent extends unreal.audiomixer.USynthComponent {
  
  /**
    Sets the quantization settings on the time synth
  **/
  @:ufunction(BlueprintCallable) @:final public function SetQuantizationSettings(InQuantizationSettings : unreal.Const<unreal.PRef<unreal.timesynth.FTimeSynthQuantizationSettings>>) : Void;
  
  /**
    Sets just the BPM of the time synth on the next bar event.
  **/
  @:ufunction(BlueprintCallable) @:final public function SetBPM(BeatsPerMinute : unreal.Float32) : Void;
  
  /**
    Returns the current BPM of the time synth
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetBPM() : unreal.Int32;
  
  /**
    Sets the seed of the internal random stream so choices can be repeated or controlled.
  **/
  @:ufunction(BlueprintCallable) @:final public function SetSeed(InSeed : unreal.Int32) : Void;
  
  /**
    Resets the internal seed to it's current seed (allows repeating same random choices)
  **/
  @:ufunction(BlueprintCallable) @:final public function ResetSeed() : Void;
  
  /**
    Plays the given clip using the global quantization setting
  **/
  @:ufunction(BlueprintCallable) @:final public function PlayClip(InClip : unreal.timesynth.UTimeSynthClip, @:opt("None") InVolumeGroup : unreal.timesynth.UTimeSynthVolumeGroup) : unreal.timesynth.FTimeSynthClipHandle;
  
  /**
    Stops the clip on the desired quantization boundary with given fade time. Uses clip's fade time.
  **/
  @:ufunction(BlueprintCallable) @:final public function StopClip(InClipHandle : unreal.timesynth.FTimeSynthClipHandle, EventQuantization : unreal.timesynth.ETimeSynthEventClipQuantization) : Void;
  
  /**
    Stops the clip on the desired quantization boundary with given fade time. Overrides the clip's fade time.
  **/
  @:ufunction(BlueprintCallable) @:final public function StopClipWithFadeOverride(InClipHandle : unreal.timesynth.FTimeSynthClipHandle, EventQuantization : unreal.timesynth.ETimeSynthEventClipQuantization, FadeTime : unreal.Const<unreal.PRef<unreal.timesynth.FTimeSynthTimeDef>>) : Void;
  
  /**
    Sets the volume (in dB) of the given volume group over the supplied FadeTime
  **/
  @:ufunction(BlueprintCallable) @:final public function SetVolumeGroup(InVolumeGroup : unreal.timesynth.UTimeSynthVolumeGroup, VolumeDb : unreal.Float32, FadeTimeSec : unreal.Float32 = 0.000000) : Void;
  
  /**
    Stops clips playing on given volume group. Clips use their fade time.
  **/
  @:ufunction(BlueprintCallable) @:final public function StopSoundsOnVolumeGroup(InVolumeGroup : unreal.timesynth.UTimeSynthVolumeGroup, EventQuantization : unreal.timesynth.ETimeSynthEventClipQuantization) : Void;
  
  /**
    Stops clips playing on given volume group with the given fade time override.
  **/
  @:ufunction(BlueprintCallable) @:final public function StopSoundsOnVolumeGroupWithFadeOverride(InVolumeGroup : unreal.timesynth.UTimeSynthVolumeGroup, EventQuantization : unreal.timesynth.ETimeSynthEventClipQuantization, FadeTime : unreal.Const<unreal.PRef<unreal.timesynth.FTimeSynthTimeDef>>) : Void;
  
  /**
    Returns the spectral data if spectrum analysis is enabled.
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetSpectralData() : unreal.TArray<unreal.timesynth.FTimeSynthSpectralData>;
  
  /**
    Returns the current envelope follower value. Call at whatever rate desired
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetEnvelopeFollowerValue() : unreal.Float32;
  
  /**
    The envelope follower settings to use
  **/
  @:uproperty public var EnvelopeFollowerSettings : unreal.timesynth.FTimeSynthEnvelopeFollowerSettings;
  
  /**
    Whether or not the filter is enabled
  **/
  @:uproperty public var bIsEnvelopeFollowerEnabled : Bool;
  
  /**
    The filter settings to use for filter B
  **/
  @:uproperty public var FilterBSettings : unreal.timesynth.FTimeSynthFilterSettings;
  
  /**
    The filter settings to use for filter A
  **/
  @:uproperty public var FilterASettings : unreal.timesynth.FTimeSynthFilterSettings;
  
  /**
    Whether or not the filter B is enabled
  **/
  @:uproperty public var bIsFilterBEnabled : Bool;
  
  /**
    Whether or not the filter A is enabled
  **/
  @:uproperty public var bIsFilterAEnabled : Bool;
  
  /**
    Delegate to get continuous playback time in seconds
  **/
  @:uproperty public var OnPlaybackTime : unreal.timesynth.FOnTimeSynthPlaybackTime;
  
  /**
    What FFT bin-size to use. Smaller makes it more time-reactive but less accurate in frequency space.
  **/
  @:uproperty public var FFTSize : unreal.timesynth.ETimeSynthFFTSize;
  
  /**
    What frequencies to report magnitudes for during spectrum analysis
  **/
  @:uproperty public var FrequenciesToAnalyze : unreal.TArray<unreal.Float32>;
  
  /**
    Whether or not we are enabling spectrum analysis on the synth component. Enabling will result in FFT analysis being run.
  **/
  @:uproperty public var bEnableSpectralAnalysis : Bool;
  
  /**
    The default quantizations settings
  **/
  @:uproperty public var QuantizationSettings : unreal.timesynth.FTimeSynthQuantizationSettings;
  
  /**
    Register an event to respond to a specific quantization event
  **/
  @:ufunction(BlueprintCallable) @:final public function AddQuantizationEventDelegate(QuantizationType : unreal.timesynth.ETimeSynthEventQuantization, OnQuantizationEvent : unreal.Const<unreal.PRef<unreal.timesynth.FOnQuantizationEventBP>>) : Void;
  
  /**
    Set the filter settings for the filter at the particular index
  **/
  @:ufunction(BlueprintCallable) @:final public function SetFilterSettings(Filter : unreal.timesynth.ETimeSynthFilter, InSettings : unreal.Const<unreal.PRef<unreal.timesynth.FTimeSynthFilterSettings>>) : Void;
  
  /**
    Set the envelope follower settings
  **/
  @:ufunction(BlueprintCallable) @:final public function SetEnvelopeFollowerSettings(InSettings : unreal.Const<unreal.PRef<unreal.timesynth.FTimeSynthEnvelopeFollowerSettings>>) : Void;
  
  /**
    Enables or disables the filter
  **/
  @:ufunction(BlueprintCallable) @:final public function SetFilterEnabled(Filter : unreal.timesynth.ETimeSynthFilter, bIsEnabled : Bool) : Void;
  
  /**
    Enables or disables the envelope follower
  **/
  @:ufunction(BlueprintCallable) @:final public function SetEnvelopeFollowerEnabled(bInIsEnabled : Bool) : Void;
  
  /**
    Sets the desired FFT Size for the spectrum analyzer
  **/
  @:ufunction(BlueprintCallable) @:final public function SetFFTSize(InFFTSize : unreal.timesynth.ETimeSynthFFTSize) : Void;
  
}
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
package unreal.functionaltesting;

@:umodule("FunctionalTesting")
@:glueCppIncludes("Classes/FunctionalTest.h")
@:uname("EFunctionalTestResult")
@:class @:uextern @:uenum extern enum EFunctionalTestResult {
  
  /**
    When finishing a test if you use Default, you're not explicitly stating if the test passed or failed.
    Instead you're instead allowing any tested assertions to have decided that for you.  Even if you do
    explicitly log success, it can be overturned by errors that occurred during the test.
  **/
  Default;
  Invalid;
  Error;
  Running;
  Failed;
  Succeeded;
  
}

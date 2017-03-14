//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel-doppl/core-doppl/androidbasetest/src/main/java/org/skyscreamer/jsonassert/JSONCompareResult.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgSkyscreamerJsonassertJSONCompareResult")
#ifdef RESTRICT_OrgSkyscreamerJsonassertJSONCompareResult
#define INCLUDE_ALL_OrgSkyscreamerJsonassertJSONCompareResult 0
#else
#define INCLUDE_ALL_OrgSkyscreamerJsonassertJSONCompareResult 1
#endif
#undef RESTRICT_OrgSkyscreamerJsonassertJSONCompareResult

#if !defined (OrgSkyscreamerJsonassertJSONCompareResult_) && (INCLUDE_ALL_OrgSkyscreamerJsonassertJSONCompareResult || defined(INCLUDE_OrgSkyscreamerJsonassertJSONCompareResult))
#define OrgSkyscreamerJsonassertJSONCompareResult_

@class OrgSkyscreamerJsonassertValueMatcherException;
@protocol JavaUtilList;

@interface OrgSkyscreamerJsonassertJSONCompareResult : NSObject

#pragma mark Public

- (instancetype)init;

- (void)failWithNSString:(NSString *)message;

- (OrgSkyscreamerJsonassertJSONCompareResult *)failWithNSString:(NSString *)field
                                                         withId:(id)expected
                                                         withId:(id)actual;

- (OrgSkyscreamerJsonassertJSONCompareResult *)failWithNSString:(NSString *)field
              withOrgSkyscreamerJsonassertValueMatcherException:(OrgSkyscreamerJsonassertValueMatcherException *)exception;

- (jboolean)failed;

- (id)getActual;

- (id)getExpected;

- (NSString *)getField;

- (id<JavaUtilList>)getFieldFailures;

- (id<JavaUtilList>)getFieldMissing;

- (id<JavaUtilList>)getFieldUnexpected;

- (NSString *)getMessage;

- (jboolean)isFailureOnField;

- (jboolean)isMissingOnField;

- (jboolean)isUnexpectedOnField;

- (OrgSkyscreamerJsonassertJSONCompareResult *)missingWithNSString:(NSString *)field
                                                            withId:(id)expected;

- (jboolean)passed;

- (NSString *)description;

- (OrgSkyscreamerJsonassertJSONCompareResult *)unexpectedWithNSString:(NSString *)field
                                                               withId:(id)value;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgSkyscreamerJsonassertJSONCompareResult)

FOUNDATION_EXPORT void OrgSkyscreamerJsonassertJSONCompareResult_init(OrgSkyscreamerJsonassertJSONCompareResult *self);

FOUNDATION_EXPORT OrgSkyscreamerJsonassertJSONCompareResult *new_OrgSkyscreamerJsonassertJSONCompareResult_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgSkyscreamerJsonassertJSONCompareResult *create_OrgSkyscreamerJsonassertJSONCompareResult_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgSkyscreamerJsonassertJSONCompareResult)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgSkyscreamerJsonassertJSONCompareResult")

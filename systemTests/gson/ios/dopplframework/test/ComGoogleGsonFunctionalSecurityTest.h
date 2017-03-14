//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleGsonFunctionalSecurityTest")
#ifdef RESTRICT_ComGoogleGsonFunctionalSecurityTest
#define INCLUDE_ALL_ComGoogleGsonFunctionalSecurityTest 0
#else
#define INCLUDE_ALL_ComGoogleGsonFunctionalSecurityTest 1
#endif
#undef RESTRICT_ComGoogleGsonFunctionalSecurityTest

#if !defined (ComGoogleGsonFunctionalSecurityTest_) && (INCLUDE_ALL_ComGoogleGsonFunctionalSecurityTest || defined(INCLUDE_ComGoogleGsonFunctionalSecurityTest))
#define ComGoogleGsonFunctionalSecurityTest_

#define RESTRICT_JunitFrameworkTestCase 1
#define INCLUDE_JunitFrameworkTestCase 1
#include "junit/framework/TestCase.h"

@interface ComGoogleGsonFunctionalSecurityTest : JunitFrameworkTestCase

#pragma mark Public

- (instancetype)init;

- (void)testJsonWithNonExectuableTokenSerialization;

- (void)testJsonWithNonExectuableTokenWithConfiguredGsonDeserialization;

- (void)testJsonWithNonExectuableTokenWithRegularGsonDeserialization;

- (void)testNonExecutableJsonDeserialization;

- (void)testNonExecutableJsonSerialization;

#pragma mark Protected

- (void)setUp;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonFunctionalSecurityTest)

FOUNDATION_EXPORT void ComGoogleGsonFunctionalSecurityTest_init(ComGoogleGsonFunctionalSecurityTest *self);

FOUNDATION_EXPORT ComGoogleGsonFunctionalSecurityTest *new_ComGoogleGsonFunctionalSecurityTest_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonFunctionalSecurityTest *create_ComGoogleGsonFunctionalSecurityTest_init();

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonFunctionalSecurityTest)

#endif

#pragma pop_macro("INCLUDE_ALL_ComGoogleGsonFunctionalSecurityTest")

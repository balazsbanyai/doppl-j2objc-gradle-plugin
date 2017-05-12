//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleGsonFunctionalVersioningTest")
#ifdef RESTRICT_ComGoogleGsonFunctionalVersioningTest
#define INCLUDE_ALL_ComGoogleGsonFunctionalVersioningTest 0
#else
#define INCLUDE_ALL_ComGoogleGsonFunctionalVersioningTest 1
#endif
#undef RESTRICT_ComGoogleGsonFunctionalVersioningTest

#if !defined (ComGoogleGsonFunctionalVersioningTest_) && (INCLUDE_ALL_ComGoogleGsonFunctionalVersioningTest || defined(INCLUDE_ComGoogleGsonFunctionalVersioningTest))
#define ComGoogleGsonFunctionalVersioningTest_

#define RESTRICT_JunitFrameworkTestCase 1
#define INCLUDE_JunitFrameworkTestCase 1
#include "junit/framework/TestCase.h"

@interface ComGoogleGsonFunctionalVersioningTest : JunitFrameworkTestCase

#pragma mark Public

- (instancetype)init;

- (void)testIgnoreLaterVersionClassDeserialization;

- (void)testIgnoreLaterVersionClassSerialization;

- (void)testVersionedClassesDeserialization;

- (void)testVersionedClassesSerialization;

- (void)testVersionedGsonMixingSinceAndUntilDeserialization;

- (void)testVersionedGsonMixingSinceAndUntilSerialization;

- (void)testVersionedGsonWithUnversionedClassesDeserialization;

- (void)testVersionedGsonWithUnversionedClassesSerialization;

- (void)testVersionedUntilDeserialization;

- (void)testVersionedUntilSerialization;

#pragma mark Protected

- (void)setUp;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonFunctionalVersioningTest)

FOUNDATION_EXPORT void ComGoogleGsonFunctionalVersioningTest_init(ComGoogleGsonFunctionalVersioningTest *self);

FOUNDATION_EXPORT ComGoogleGsonFunctionalVersioningTest *new_ComGoogleGsonFunctionalVersioningTest_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonFunctionalVersioningTest *create_ComGoogleGsonFunctionalVersioningTest_init();

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonFunctionalVersioningTest)

#endif

#pragma pop_macro("INCLUDE_ALL_ComGoogleGsonFunctionalVersioningTest")
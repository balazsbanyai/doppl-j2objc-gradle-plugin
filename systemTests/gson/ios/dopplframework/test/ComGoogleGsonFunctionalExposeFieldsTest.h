//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleGsonFunctionalExposeFieldsTest")
#ifdef RESTRICT_ComGoogleGsonFunctionalExposeFieldsTest
#define INCLUDE_ALL_ComGoogleGsonFunctionalExposeFieldsTest 0
#else
#define INCLUDE_ALL_ComGoogleGsonFunctionalExposeFieldsTest 1
#endif
#undef RESTRICT_ComGoogleGsonFunctionalExposeFieldsTest

#if !defined (ComGoogleGsonFunctionalExposeFieldsTest_) && (INCLUDE_ALL_ComGoogleGsonFunctionalExposeFieldsTest || defined(INCLUDE_ComGoogleGsonFunctionalExposeFieldsTest))
#define ComGoogleGsonFunctionalExposeFieldsTest_

#define RESTRICT_JunitFrameworkTestCase 1
#define INCLUDE_JunitFrameworkTestCase 1
#include "junit/framework/TestCase.h"

@interface ComGoogleGsonFunctionalExposeFieldsTest : JunitFrameworkTestCase

#pragma mark Public

- (instancetype)init;

- (void)testArrayWithOneNullExposeFieldObjectSerialization;

- (void)testExposeAnnotationDeserialization;

- (void)testExposeAnnotationSerialization;

- (void)testExposedInterfaceFieldDeserialization;

- (void)testExposedInterfaceFieldSerialization;

- (void)testNoExposedFieldDeserialization;

- (void)testNoExposedFieldSerialization;

- (void)testNullExposeFieldSerialization;

#pragma mark Protected

- (void)setUp;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonFunctionalExposeFieldsTest)

FOUNDATION_EXPORT void ComGoogleGsonFunctionalExposeFieldsTest_init(ComGoogleGsonFunctionalExposeFieldsTest *self);

FOUNDATION_EXPORT ComGoogleGsonFunctionalExposeFieldsTest *new_ComGoogleGsonFunctionalExposeFieldsTest_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonFunctionalExposeFieldsTest *create_ComGoogleGsonFunctionalExposeFieldsTest_init();

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonFunctionalExposeFieldsTest)

#endif

#pragma pop_macro("INCLUDE_ALL_ComGoogleGsonFunctionalExposeFieldsTest")
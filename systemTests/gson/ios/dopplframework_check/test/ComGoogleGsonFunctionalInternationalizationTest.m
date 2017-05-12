//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "ComGoogleGsonFunctionalInternationalizationTest.h"
#include "ComGoogleGsonGson.h"
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "junit/framework/TestCase.h"

@interface ComGoogleGsonFunctionalInternationalizationTest () {
 @public
  ComGoogleGsonGson *gson_;
}

@end

J2OBJC_FIELD_SETTER(ComGoogleGsonFunctionalInternationalizationTest, gson_, ComGoogleGsonGson *)

@implementation ComGoogleGsonFunctionalInternationalizationTest

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonFunctionalInternationalizationTest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setUp {
  [super setUp];
  JreStrongAssignAndConsume(&gson_, new_ComGoogleGsonGson_init());
}

- (void)testStringsWithRawChineseCharactersDeserialization {
  NSString *expected = @"\u597d\u597d\u597d";
  NSString *json = JreStrcat("C$C", '"', expected, '"');
  NSString *actual = [((ComGoogleGsonGson *) nil_chk(gson_)) fromJsonWithNSString:json withIOSClass:NSString_class_()];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(expected, actual);
}

- (void)testStringsWithUnicodeChineseCharactersSerialization {
  NSString *target = @"\u597d\u597d\u597d";
  NSString *json = [((ComGoogleGsonGson *) nil_chk(gson_)) toJsonWithId:target];
  NSString *expected = @"\"\u597d\u597d\u597d\"";
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(expected, json);
}

- (void)testStringsWithUnicodeChineseCharactersDeserialization {
  NSString *expected = @"\u597d\u597d\u597d";
  NSString *json = JreStrcat("C$C", '"', expected, '"');
  NSString *actual = [((ComGoogleGsonGson *) nil_chk(gson_)) fromJsonWithNSString:json withIOSClass:NSString_class_()];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(expected, actual);
}

- (void)testStringsWithUnicodeChineseCharactersEscapedDeserialization {
  NSString *actual = [((ComGoogleGsonGson *) nil_chk(gson_)) fromJsonWithNSString:@"'\\u597d\\u597d\\u597d'" withIOSClass:NSString_class_()];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"\u597d\u597d\u597d", actual);
}

- (void)dealloc {
  RELEASE_(gson_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setUp);
  methods[2].selector = @selector(testStringsWithRawChineseCharactersDeserialization);
  methods[3].selector = @selector(testStringsWithUnicodeChineseCharactersSerialization);
  methods[4].selector = @selector(testStringsWithUnicodeChineseCharactersDeserialization);
  methods[5].selector = @selector(testStringsWithUnicodeChineseCharactersEscapedDeserialization);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "gson_", "LComGoogleGsonGson;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaLangException;" };
  static const J2ObjcClassInfo _ComGoogleGsonFunctionalInternationalizationTest = { "InternationalizationTest", "com.google.gson.functional", ptrTable, methods, fields, 7, 0x1, 6, 1, -1, -1, -1, -1, -1 };
  return &_ComGoogleGsonFunctionalInternationalizationTest;
}

@end

void ComGoogleGsonFunctionalInternationalizationTest_init(ComGoogleGsonFunctionalInternationalizationTest *self) {
  JunitFrameworkTestCase_init(self);
}

ComGoogleGsonFunctionalInternationalizationTest *new_ComGoogleGsonFunctionalInternationalizationTest_init() {
  J2OBJC_NEW_IMPL(ComGoogleGsonFunctionalInternationalizationTest, init)
}

ComGoogleGsonFunctionalInternationalizationTest *create_ComGoogleGsonFunctionalInternationalizationTest_init() {
  J2OBJC_CREATE_IMPL(ComGoogleGsonFunctionalInternationalizationTest, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonFunctionalInternationalizationTest)
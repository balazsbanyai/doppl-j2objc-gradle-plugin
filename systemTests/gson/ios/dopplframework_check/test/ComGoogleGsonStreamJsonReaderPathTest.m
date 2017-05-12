//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "ComGoogleGsonStreamJsonReader.h"
#include "ComGoogleGsonStreamJsonReaderPathTest.h"
#include "ComGoogleGsonStreamJsonToken.h"
#include "J2ObjC_source.h"
#include "java/io/StringReader.h"
#include "junit/framework/TestCase.h"

@implementation ComGoogleGsonStreamJsonReaderPathTest

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonStreamJsonReaderPathTest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)testPath {
  ComGoogleGsonStreamJsonReader *reader = create_ComGoogleGsonStreamJsonReader_initWithJavaIoReader_(create_JavaIoStringReader_initWithNSString_(@"{\"a\":[2,true,false,null,\"b\",{\"c\":\"d\"},[3]]}"));
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$", [reader getPath]);
  [reader beginObject];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.", [reader getPath]);
  [reader nextName];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.a", [reader getPath]);
  [reader beginArray];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.a[0]", [reader getPath]);
  [reader nextInt];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.a[1]", [reader getPath]);
  [reader nextBoolean];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.a[2]", [reader getPath]);
  [reader nextBoolean];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.a[3]", [reader getPath]);
  [reader nextNull];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.a[4]", [reader getPath]);
  [reader nextString];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.a[5]", [reader getPath]);
  [reader beginObject];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.a[5].", [reader getPath]);
  [reader nextName];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.a[5].c", [reader getPath]);
  [reader nextString];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.a[5].c", [reader getPath]);
  [reader endObject];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.a[6]", [reader getPath]);
  [reader beginArray];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.a[6][0]", [reader getPath]);
  [reader nextInt];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.a[6][1]", [reader getPath]);
  [reader endArray];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.a[7]", [reader getPath]);
  [reader endArray];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.a", [reader getPath]);
  [reader endObject];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$", [reader getPath]);
}

- (void)testObjectPath {
  ComGoogleGsonStreamJsonReader *reader = create_ComGoogleGsonStreamJsonReader_initWithJavaIoReader_(create_JavaIoStringReader_initWithNSString_(@"{\"a\":1,\"b\":2}"));
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$", [reader getPath]);
  [reader peek];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$", [reader getPath]);
  [reader beginObject];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.", [reader getPath]);
  [reader peek];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.", [reader getPath]);
  [reader nextName];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.a", [reader getPath]);
  [reader peek];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.a", [reader getPath]);
  [reader nextInt];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.a", [reader getPath]);
  [reader peek];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.a", [reader getPath]);
  [reader nextName];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.b", [reader getPath]);
  [reader peek];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.b", [reader getPath]);
  [reader nextInt];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.b", [reader getPath]);
  [reader peek];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.b", [reader getPath]);
  [reader endObject];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$", [reader getPath]);
  [reader peek];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$", [reader getPath]);
  [reader close];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$", [reader getPath]);
}

- (void)testArrayPath {
  ComGoogleGsonStreamJsonReader *reader = create_ComGoogleGsonStreamJsonReader_initWithJavaIoReader_(create_JavaIoStringReader_initWithNSString_(@"[1,2]"));
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$", [reader getPath]);
  [reader peek];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$", [reader getPath]);
  [reader beginArray];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$[0]", [reader getPath]);
  [reader peek];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$[0]", [reader getPath]);
  [reader nextInt];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$[1]", [reader getPath]);
  [reader peek];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$[1]", [reader getPath]);
  [reader nextInt];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$[2]", [reader getPath]);
  [reader peek];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$[2]", [reader getPath]);
  [reader endArray];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$", [reader getPath]);
  [reader peek];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$", [reader getPath]);
  [reader close];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$", [reader getPath]);
}

- (void)testMultipleTopLevelValuesInOneDocument {
  ComGoogleGsonStreamJsonReader *reader = create_ComGoogleGsonStreamJsonReader_initWithJavaIoReader_(create_JavaIoStringReader_initWithNSString_(@"[][]"));
  [reader setLenientWithBoolean:true];
  [reader beginArray];
  [reader endArray];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$", [reader getPath]);
  [reader beginArray];
  [reader endArray];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$", [reader getPath]);
}

- (void)testSkipArrayElements {
  ComGoogleGsonStreamJsonReader *reader = create_ComGoogleGsonStreamJsonReader_initWithJavaIoReader_(create_JavaIoStringReader_initWithNSString_(@"[1,2,3]"));
  [reader beginArray];
  [reader skipValue];
  [reader skipValue];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$[2]", [reader getPath]);
}

- (void)testSkipObjectNames {
  ComGoogleGsonStreamJsonReader *reader = create_ComGoogleGsonStreamJsonReader_initWithJavaIoReader_(create_JavaIoStringReader_initWithNSString_(@"{\"a\":1}"));
  [reader beginObject];
  [reader skipValue];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.null", [reader getPath]);
}

- (void)testSkipObjectValues {
  ComGoogleGsonStreamJsonReader *reader = create_ComGoogleGsonStreamJsonReader_initWithJavaIoReader_(create_JavaIoStringReader_initWithNSString_(@"{\"a\":1,\"b\":2}"));
  [reader beginObject];
  [reader nextName];
  [reader skipValue];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.null", [reader getPath]);
  [reader nextName];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$.b", [reader getPath]);
}

- (void)testSkipNestedStructures {
  ComGoogleGsonStreamJsonReader *reader = create_ComGoogleGsonStreamJsonReader_initWithJavaIoReader_(create_JavaIoStringReader_initWithNSString_(@"[[1,2,3],4]"));
  [reader beginArray];
  [reader skipValue];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$[1]", [reader getPath]);
}

- (void)testArrayOfObjects {
  ComGoogleGsonStreamJsonReader *reader = create_ComGoogleGsonStreamJsonReader_initWithJavaIoReader_(create_JavaIoStringReader_initWithNSString_(@"[{},{},{}]"));
  [reader beginArray];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$[0]", [reader getPath]);
  [reader beginObject];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$[0].", [reader getPath]);
  [reader endObject];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$[1]", [reader getPath]);
  [reader beginObject];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$[1].", [reader getPath]);
  [reader endObject];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$[2]", [reader getPath]);
  [reader beginObject];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$[2].", [reader getPath]);
  [reader endObject];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$[3]", [reader getPath]);
  [reader endArray];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$", [reader getPath]);
}

- (void)testArrayOfArrays {
  ComGoogleGsonStreamJsonReader *reader = create_ComGoogleGsonStreamJsonReader_initWithJavaIoReader_(create_JavaIoStringReader_initWithNSString_(@"[[],[],[]]"));
  [reader beginArray];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$[0]", [reader getPath]);
  [reader beginArray];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$[0][0]", [reader getPath]);
  [reader endArray];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$[1]", [reader getPath]);
  [reader beginArray];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$[1][0]", [reader getPath]);
  [reader endArray];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$[2]", [reader getPath]);
  [reader beginArray];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$[2][0]", [reader getPath]);
  [reader endArray];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$[3]", [reader getPath]);
  [reader endArray];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"$", [reader getPath]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(testPath);
  methods[2].selector = @selector(testObjectPath);
  methods[3].selector = @selector(testArrayPath);
  methods[4].selector = @selector(testMultipleTopLevelValuesInOneDocument);
  methods[5].selector = @selector(testSkipArrayElements);
  methods[6].selector = @selector(testSkipObjectNames);
  methods[7].selector = @selector(testSkipObjectValues);
  methods[8].selector = @selector(testSkipNestedStructures);
  methods[9].selector = @selector(testArrayOfObjects);
  methods[10].selector = @selector(testArrayOfArrays);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LJavaIoIOException;" };
  static const J2ObjcClassInfo _ComGoogleGsonStreamJsonReaderPathTest = { "JsonReaderPathTest", "com.google.gson.stream", ptrTable, methods, NULL, 7, 0x1, 11, 0, -1, -1, -1, -1, -1 };
  return &_ComGoogleGsonStreamJsonReaderPathTest;
}

@end

void ComGoogleGsonStreamJsonReaderPathTest_init(ComGoogleGsonStreamJsonReaderPathTest *self) {
  JunitFrameworkTestCase_init(self);
}

ComGoogleGsonStreamJsonReaderPathTest *new_ComGoogleGsonStreamJsonReaderPathTest_init() {
  J2OBJC_NEW_IMPL(ComGoogleGsonStreamJsonReaderPathTest, init)
}

ComGoogleGsonStreamJsonReaderPathTest *create_ComGoogleGsonStreamJsonReaderPathTest_init() {
  J2OBJC_CREATE_IMPL(ComGoogleGsonStreamJsonReaderPathTest, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonStreamJsonReaderPathTest)
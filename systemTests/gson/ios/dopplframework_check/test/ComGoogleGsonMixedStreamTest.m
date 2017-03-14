//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "ComGoogleGsonGson.h"
#include "ComGoogleGsonGsonBuilder.h"
#include "ComGoogleGsonJsonParseException.h"
#include "ComGoogleGsonJsonPrimitive.h"
#include "ComGoogleGsonMixedStreamTest.h"
#include "ComGoogleGsonReflectTypeToken.h"
#include "ComGoogleGsonStreamJsonReader.h"
#include "ComGoogleGsonStreamJsonWriter.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/StringReader.h"
#include "java/io/StringWriter.h"
#include "java/lang/Double.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/reflect/Type.h"
#include "java/util/Arrays.h"
#include "java/util/List.h"
#include "junit/framework/TestCase.h"

inline ComGoogleGsonMixedStreamTest_Car *ComGoogleGsonMixedStreamTest_get_BLUE_MUSTANG();
static ComGoogleGsonMixedStreamTest_Car *ComGoogleGsonMixedStreamTest_BLUE_MUSTANG;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleGsonMixedStreamTest, BLUE_MUSTANG, ComGoogleGsonMixedStreamTest_Car *)

inline ComGoogleGsonMixedStreamTest_Car *ComGoogleGsonMixedStreamTest_get_BLACK_BMW();
static ComGoogleGsonMixedStreamTest_Car *ComGoogleGsonMixedStreamTest_BLACK_BMW;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleGsonMixedStreamTest, BLACK_BMW, ComGoogleGsonMixedStreamTest_Car *)

inline ComGoogleGsonMixedStreamTest_Car *ComGoogleGsonMixedStreamTest_get_RED_MIATA();
static ComGoogleGsonMixedStreamTest_Car *ComGoogleGsonMixedStreamTest_RED_MIATA;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleGsonMixedStreamTest, RED_MIATA, ComGoogleGsonMixedStreamTest_Car *)

inline NSString *ComGoogleGsonMixedStreamTest_get_CARS_JSON();
static NSString *ComGoogleGsonMixedStreamTest_CARS_JSON = @"[\n  {\n    \"name\": \"mustang\",\n    \"color\": 255\n  },\n  {\n    \"name\": \"bmw\",\n    \"color\": 0\n  },\n  {\n    \"name\": \"miata\",\n    \"color\": 16711680\n  }\n]";
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleGsonMixedStreamTest, CARS_JSON, NSString *)

@interface ComGoogleGsonMixedStreamTest_1 : ComGoogleGsonReflectTypeToken

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonMixedStreamTest_1)

__attribute__((unused)) static void ComGoogleGsonMixedStreamTest_1_init(ComGoogleGsonMixedStreamTest_1 *self);

__attribute__((unused)) static ComGoogleGsonMixedStreamTest_1 *new_ComGoogleGsonMixedStreamTest_1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleGsonMixedStreamTest_1 *create_ComGoogleGsonMixedStreamTest_1_init();

@interface ComGoogleGsonMixedStreamTest_2 : ComGoogleGsonReflectTypeToken

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonMixedStreamTest_2)

__attribute__((unused)) static void ComGoogleGsonMixedStreamTest_2_init(ComGoogleGsonMixedStreamTest_2 *self);

__attribute__((unused)) static ComGoogleGsonMixedStreamTest_2 *new_ComGoogleGsonMixedStreamTest_2_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleGsonMixedStreamTest_2 *create_ComGoogleGsonMixedStreamTest_2_init();

@interface ComGoogleGsonMixedStreamTest_3 : ComGoogleGsonReflectTypeToken

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonMixedStreamTest_3)

__attribute__((unused)) static void ComGoogleGsonMixedStreamTest_3_init(ComGoogleGsonMixedStreamTest_3 *self);

__attribute__((unused)) static ComGoogleGsonMixedStreamTest_3 *new_ComGoogleGsonMixedStreamTest_3_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleGsonMixedStreamTest_3 *create_ComGoogleGsonMixedStreamTest_3_init();

J2OBJC_INITIALIZED_DEFN(ComGoogleGsonMixedStreamTest)

@implementation ComGoogleGsonMixedStreamTest

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonMixedStreamTest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)testWriteMixedStreamed {
  ComGoogleGsonGson *gson = create_ComGoogleGsonGson_init();
  JavaIoStringWriter *stringWriter = create_JavaIoStringWriter_init();
  ComGoogleGsonStreamJsonWriter *jsonWriter = create_ComGoogleGsonStreamJsonWriter_initWithJavaIoWriter_(stringWriter);
  [jsonWriter beginArray];
  [jsonWriter setIndentWithNSString:@"  "];
  [gson toJsonWithId:ComGoogleGsonMixedStreamTest_BLUE_MUSTANG withJavaLangReflectType:ComGoogleGsonMixedStreamTest_Car_class_() withComGoogleGsonStreamJsonWriter:jsonWriter];
  [gson toJsonWithId:ComGoogleGsonMixedStreamTest_BLACK_BMW withJavaLangReflectType:ComGoogleGsonMixedStreamTest_Car_class_() withComGoogleGsonStreamJsonWriter:jsonWriter];
  [gson toJsonWithId:ComGoogleGsonMixedStreamTest_RED_MIATA withJavaLangReflectType:ComGoogleGsonMixedStreamTest_Car_class_() withComGoogleGsonStreamJsonWriter:jsonWriter];
  [jsonWriter endArray];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(ComGoogleGsonMixedStreamTest_CARS_JSON, [stringWriter description]);
}

- (void)testReadMixedStreamed {
  ComGoogleGsonGson *gson = create_ComGoogleGsonGson_init();
  JavaIoStringReader *stringReader = create_JavaIoStringReader_initWithNSString_(ComGoogleGsonMixedStreamTest_CARS_JSON);
  ComGoogleGsonStreamJsonReader *jsonReader = create_ComGoogleGsonStreamJsonReader_initWithJavaIoReader_(stringReader);
  [jsonReader beginArray];
  JunitFrameworkTestCase_assertEqualsWithId_withId_(ComGoogleGsonMixedStreamTest_BLUE_MUSTANG, [gson fromJsonWithComGoogleGsonStreamJsonReader:jsonReader withJavaLangReflectType:ComGoogleGsonMixedStreamTest_Car_class_()]);
  JunitFrameworkTestCase_assertEqualsWithId_withId_(ComGoogleGsonMixedStreamTest_BLACK_BMW, [gson fromJsonWithComGoogleGsonStreamJsonReader:jsonReader withJavaLangReflectType:ComGoogleGsonMixedStreamTest_Car_class_()]);
  JunitFrameworkTestCase_assertEqualsWithId_withId_(ComGoogleGsonMixedStreamTest_RED_MIATA, [gson fromJsonWithComGoogleGsonStreamJsonReader:jsonReader withJavaLangReflectType:ComGoogleGsonMixedStreamTest_Car_class_()]);
  [jsonReader endArray];
}

- (void)testReaderDoesNotMutateState {
  ComGoogleGsonGson *gson = create_ComGoogleGsonGson_init();
  ComGoogleGsonStreamJsonReader *jsonReader = create_ComGoogleGsonStreamJsonReader_initWithJavaIoReader_(create_JavaIoStringReader_initWithNSString_(ComGoogleGsonMixedStreamTest_CARS_JSON));
  [jsonReader beginArray];
  [jsonReader setLenientWithBoolean:false];
  [gson fromJsonWithComGoogleGsonStreamJsonReader:jsonReader withJavaLangReflectType:ComGoogleGsonMixedStreamTest_Car_class_()];
  JunitFrameworkTestCase_assertFalseWithBoolean_([jsonReader isLenient]);
  [jsonReader setLenientWithBoolean:true];
  [gson fromJsonWithComGoogleGsonStreamJsonReader:jsonReader withJavaLangReflectType:ComGoogleGsonMixedStreamTest_Car_class_()];
  JunitFrameworkTestCase_assertTrueWithBoolean_([jsonReader isLenient]);
}

- (void)testWriteDoesNotMutateState {
  ComGoogleGsonGson *gson = create_ComGoogleGsonGson_init();
  ComGoogleGsonStreamJsonWriter *jsonWriter = create_ComGoogleGsonStreamJsonWriter_initWithJavaIoWriter_(create_JavaIoStringWriter_init());
  [jsonWriter beginArray];
  [jsonWriter setHtmlSafeWithBoolean:true];
  [jsonWriter setLenientWithBoolean:true];
  [gson toJsonWithId:ComGoogleGsonMixedStreamTest_BLUE_MUSTANG withJavaLangReflectType:ComGoogleGsonMixedStreamTest_Car_class_() withComGoogleGsonStreamJsonWriter:jsonWriter];
  JunitFrameworkTestCase_assertTrueWithBoolean_([jsonWriter isHtmlSafe]);
  JunitFrameworkTestCase_assertTrueWithBoolean_([jsonWriter isLenient]);
  [jsonWriter setHtmlSafeWithBoolean:false];
  [jsonWriter setLenientWithBoolean:false];
  [gson toJsonWithId:ComGoogleGsonMixedStreamTest_BLUE_MUSTANG withJavaLangReflectType:ComGoogleGsonMixedStreamTest_Car_class_() withComGoogleGsonStreamJsonWriter:jsonWriter];
  JunitFrameworkTestCase_assertFalseWithBoolean_([jsonWriter isHtmlSafe]);
  JunitFrameworkTestCase_assertFalseWithBoolean_([jsonWriter isLenient]);
}

- (void)testReadInvalidState {
  ComGoogleGsonGson *gson = create_ComGoogleGsonGson_init();
  ComGoogleGsonStreamJsonReader *jsonReader = create_ComGoogleGsonStreamJsonReader_initWithJavaIoReader_(create_JavaIoStringReader_initWithNSString_(ComGoogleGsonMixedStreamTest_CARS_JSON));
  [jsonReader beginArray];
  [jsonReader beginObject];
  @try {
    [gson fromJsonWithComGoogleGsonStreamJsonReader:jsonReader withJavaLangReflectType:NSString_class_()];
    JunitFrameworkTestCase_fail();
  }
  @catch (ComGoogleGsonJsonParseException *expected) {
  }
}

- (void)testReadClosed {
  ComGoogleGsonGson *gson = create_ComGoogleGsonGson_init();
  ComGoogleGsonStreamJsonReader *jsonReader = create_ComGoogleGsonStreamJsonReader_initWithJavaIoReader_(create_JavaIoStringReader_initWithNSString_(ComGoogleGsonMixedStreamTest_CARS_JSON));
  [jsonReader close];
  @try {
    [gson fromJsonWithComGoogleGsonStreamJsonReader:jsonReader withJavaLangReflectType:[create_ComGoogleGsonMixedStreamTest_1_init() getType]];
    JunitFrameworkTestCase_fail();
  }
  @catch (ComGoogleGsonJsonParseException *expected) {
  }
}

- (void)testWriteInvalidState {
  ComGoogleGsonGson *gson = create_ComGoogleGsonGson_init();
  ComGoogleGsonStreamJsonWriter *jsonWriter = create_ComGoogleGsonStreamJsonWriter_initWithJavaIoWriter_(create_JavaIoStringWriter_init());
  [jsonWriter beginObject];
  @try {
    [gson toJsonWithId:ComGoogleGsonMixedStreamTest_BLUE_MUSTANG withJavaLangReflectType:ComGoogleGsonMixedStreamTest_Car_class_() withComGoogleGsonStreamJsonWriter:jsonWriter];
    JunitFrameworkTestCase_fail();
  }
  @catch (JavaLangIllegalStateException *expected) {
  }
}

- (void)testWriteClosed {
  ComGoogleGsonGson *gson = create_ComGoogleGsonGson_init();
  ComGoogleGsonStreamJsonWriter *jsonWriter = create_ComGoogleGsonStreamJsonWriter_initWithJavaIoWriter_(create_JavaIoStringWriter_init());
  [jsonWriter beginArray];
  [jsonWriter endArray];
  [jsonWriter close];
  @try {
    [gson toJsonWithId:ComGoogleGsonMixedStreamTest_BLUE_MUSTANG withJavaLangReflectType:ComGoogleGsonMixedStreamTest_Car_class_() withComGoogleGsonStreamJsonWriter:jsonWriter];
    JunitFrameworkTestCase_fail();
  }
  @catch (JavaLangIllegalStateException *expected) {
  }
}

- (void)testWriteNulls {
  ComGoogleGsonGson *gson = create_ComGoogleGsonGson_init();
  @try {
    [gson toJsonWithComGoogleGsonJsonElement:create_ComGoogleGsonJsonPrimitive_initWithNSString_(@"hello") withComGoogleGsonStreamJsonWriter:nil];
    JunitFrameworkTestCase_fail();
  }
  @catch (JavaLangNullPointerException *expected) {
  }
  JavaIoStringWriter *stringWriter = create_JavaIoStringWriter_init();
  [gson toJsonWithComGoogleGsonJsonElement:nil withComGoogleGsonStreamJsonWriter:create_ComGoogleGsonStreamJsonWriter_initWithJavaIoWriter_(stringWriter)];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"null", [stringWriter description]);
}

- (void)testReadNulls {
  ComGoogleGsonGson *gson = create_ComGoogleGsonGson_init();
  @try {
    [gson fromJsonWithComGoogleGsonStreamJsonReader:nil withJavaLangReflectType:JavaLangInteger_class_()];
    JunitFrameworkTestCase_fail();
  }
  @catch (JavaLangNullPointerException *expected) {
  }
  @try {
    [gson fromJsonWithComGoogleGsonStreamJsonReader:create_ComGoogleGsonStreamJsonReader_initWithJavaIoReader_(create_JavaIoStringReader_initWithNSString_(@"true")) withJavaLangReflectType:nil];
    JunitFrameworkTestCase_fail();
  }
  @catch (JavaLangNullPointerException *expected) {
  }
}

- (void)testWriteHtmlSafe {
  id<JavaUtilList> contents = JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray arrayWithObjects:(id[]){ @"<", @">", @"&", @"=", @"'" } count:5 type:NSString_class_()]);
  id<JavaLangReflectType> type = [create_ComGoogleGsonMixedStreamTest_2_init() getType];
  JavaIoStringWriter *writer = create_JavaIoStringWriter_init();
  [create_ComGoogleGsonGson_init() toJsonWithId:contents withJavaLangReflectType:type withComGoogleGsonStreamJsonWriter:create_ComGoogleGsonStreamJsonWriter_initWithJavaIoWriter_(writer)];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"[\"\\u003c\",\"\\u003e\",\"\\u0026\",\"\\u003d\",\"\\u0027\"]", [writer description]);
  writer = create_JavaIoStringWriter_init();
  [((ComGoogleGsonGson *) nil_chk([((ComGoogleGsonGsonBuilder *) nil_chk([create_ComGoogleGsonGsonBuilder_init() disableHtmlEscaping])) create])) toJsonWithId:contents withJavaLangReflectType:type withComGoogleGsonStreamJsonWriter:create_ComGoogleGsonStreamJsonWriter_initWithJavaIoWriter_(writer)];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"[\"<\",\">\",\"&\",\"=\",\"'\"]", [writer description]);
}

- (void)testWriteLenient {
  id<JavaUtilList> doubles = JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray arrayWithObjects:(id[]){ JavaLangDouble_valueOfWithDouble_(JavaLangDouble_NaN), JavaLangDouble_valueOfWithDouble_(JavaLangDouble_NEGATIVE_INFINITY), JavaLangDouble_valueOfWithDouble_(JavaLangDouble_POSITIVE_INFINITY), JavaLangDouble_valueOfWithDouble_(-0.0), JavaLangDouble_valueOfWithDouble_(0.5), JavaLangDouble_valueOfWithDouble_(0.0) } count:6 type:JavaLangDouble_class_()]);
  id<JavaLangReflectType> type = [create_ComGoogleGsonMixedStreamTest_3_init() getType];
  JavaIoStringWriter *writer = create_JavaIoStringWriter_init();
  ComGoogleGsonStreamJsonWriter *jsonWriter = create_ComGoogleGsonStreamJsonWriter_initWithJavaIoWriter_(writer);
  [((ComGoogleGsonGson *) nil_chk([((ComGoogleGsonGsonBuilder *) nil_chk([create_ComGoogleGsonGsonBuilder_init() serializeSpecialFloatingPointValues])) create])) toJsonWithId:doubles withJavaLangReflectType:type withComGoogleGsonStreamJsonWriter:jsonWriter];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"[NaN,-Infinity,Infinity,-0.0,0.5,0.0]", [writer description]);
  @try {
    [create_ComGoogleGsonGson_init() toJsonWithId:doubles withJavaLangReflectType:type withComGoogleGsonStreamJsonWriter:create_ComGoogleGsonStreamJsonWriter_initWithJavaIoWriter_(create_JavaIoStringWriter_init())];
    JunitFrameworkTestCase_fail();
  }
  @catch (JavaLangIllegalArgumentException *expected) {
  }
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
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(testWriteMixedStreamed);
  methods[2].selector = @selector(testReadMixedStreamed);
  methods[3].selector = @selector(testReaderDoesNotMutateState);
  methods[4].selector = @selector(testWriteDoesNotMutateState);
  methods[5].selector = @selector(testReadInvalidState);
  methods[6].selector = @selector(testReadClosed);
  methods[7].selector = @selector(testWriteInvalidState);
  methods[8].selector = @selector(testWriteClosed);
  methods[9].selector = @selector(testWriteNulls);
  methods[10].selector = @selector(testReadNulls);
  methods[11].selector = @selector(testWriteHtmlSafe);
  methods[12].selector = @selector(testWriteLenient);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "BLUE_MUSTANG", "LComGoogleGsonMixedStreamTest_Car;", .constantValue.asLong = 0, 0x1a, -1, 1, -1, -1 },
    { "BLACK_BMW", "LComGoogleGsonMixedStreamTest_Car;", .constantValue.asLong = 0, 0x1a, -1, 2, -1, -1 },
    { "RED_MIATA", "LComGoogleGsonMixedStreamTest_Car;", .constantValue.asLong = 0, 0x1a, -1, 3, -1, -1 },
    { "CARS_JSON", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 4, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaIoIOException;", &ComGoogleGsonMixedStreamTest_BLUE_MUSTANG, &ComGoogleGsonMixedStreamTest_BLACK_BMW, &ComGoogleGsonMixedStreamTest_RED_MIATA, &ComGoogleGsonMixedStreamTest_CARS_JSON, "LComGoogleGsonMixedStreamTest_Car;" };
  static const J2ObjcClassInfo _ComGoogleGsonMixedStreamTest = { "MixedStreamTest", "com.google.gson", ptrTable, methods, fields, 7, 0x11, 13, 4, -1, 5, -1, -1, -1 };
  return &_ComGoogleGsonMixedStreamTest;
}

+ (void)initialize {
  if (self == [ComGoogleGsonMixedStreamTest class]) {
    JreStrongAssignAndConsume(&ComGoogleGsonMixedStreamTest_BLUE_MUSTANG, new_ComGoogleGsonMixedStreamTest_Car_initWithNSString_withInt_(@"mustang", (jint) 0x0000FF));
    JreStrongAssignAndConsume(&ComGoogleGsonMixedStreamTest_BLACK_BMW, new_ComGoogleGsonMixedStreamTest_Car_initWithNSString_withInt_(@"bmw", (jint) 0x000000));
    JreStrongAssignAndConsume(&ComGoogleGsonMixedStreamTest_RED_MIATA, new_ComGoogleGsonMixedStreamTest_Car_initWithNSString_withInt_(@"miata", (jint) 0xFF0000));
    J2OBJC_SET_INITIALIZED(ComGoogleGsonMixedStreamTest)
  }
}

@end

void ComGoogleGsonMixedStreamTest_init(ComGoogleGsonMixedStreamTest *self) {
  JunitFrameworkTestCase_init(self);
}

ComGoogleGsonMixedStreamTest *new_ComGoogleGsonMixedStreamTest_init() {
  J2OBJC_NEW_IMPL(ComGoogleGsonMixedStreamTest, init)
}

ComGoogleGsonMixedStreamTest *create_ComGoogleGsonMixedStreamTest_init() {
  J2OBJC_CREATE_IMPL(ComGoogleGsonMixedStreamTest, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonMixedStreamTest)

@implementation ComGoogleGsonMixedStreamTest_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonMixedStreamTest_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LComGoogleGsonMixedStreamTest;", "testReadClosed", "Lcom/google/gson/reflect/TypeToken<Ljava/util/List<Lcom/google/gson/MixedStreamTest$Car;>;>;" };
  static const J2ObjcClassInfo _ComGoogleGsonMixedStreamTest_1 = { "", "com.google.gson", ptrTable, methods, NULL, 7, 0x8018, 1, 0, 0, -1, 1, 2, -1 };
  return &_ComGoogleGsonMixedStreamTest_1;
}

@end

void ComGoogleGsonMixedStreamTest_1_init(ComGoogleGsonMixedStreamTest_1 *self) {
  ComGoogleGsonReflectTypeToken_init(self);
}

ComGoogleGsonMixedStreamTest_1 *new_ComGoogleGsonMixedStreamTest_1_init() {
  J2OBJC_NEW_IMPL(ComGoogleGsonMixedStreamTest_1, init)
}

ComGoogleGsonMixedStreamTest_1 *create_ComGoogleGsonMixedStreamTest_1_init() {
  J2OBJC_CREATE_IMPL(ComGoogleGsonMixedStreamTest_1, init)
}

@implementation ComGoogleGsonMixedStreamTest_2

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonMixedStreamTest_2_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LComGoogleGsonMixedStreamTest;", "testWriteHtmlSafe", "Lcom/google/gson/reflect/TypeToken<Ljava/util/List<Ljava/lang/String;>;>;" };
  static const J2ObjcClassInfo _ComGoogleGsonMixedStreamTest_2 = { "", "com.google.gson", ptrTable, methods, NULL, 7, 0x8018, 1, 0, 0, -1, 1, 2, -1 };
  return &_ComGoogleGsonMixedStreamTest_2;
}

@end

void ComGoogleGsonMixedStreamTest_2_init(ComGoogleGsonMixedStreamTest_2 *self) {
  ComGoogleGsonReflectTypeToken_init(self);
}

ComGoogleGsonMixedStreamTest_2 *new_ComGoogleGsonMixedStreamTest_2_init() {
  J2OBJC_NEW_IMPL(ComGoogleGsonMixedStreamTest_2, init)
}

ComGoogleGsonMixedStreamTest_2 *create_ComGoogleGsonMixedStreamTest_2_init() {
  J2OBJC_CREATE_IMPL(ComGoogleGsonMixedStreamTest_2, init)
}

@implementation ComGoogleGsonMixedStreamTest_3

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonMixedStreamTest_3_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LComGoogleGsonMixedStreamTest;", "testWriteLenient", "Lcom/google/gson/reflect/TypeToken<Ljava/util/List<Ljava/lang/Double;>;>;" };
  static const J2ObjcClassInfo _ComGoogleGsonMixedStreamTest_3 = { "", "com.google.gson", ptrTable, methods, NULL, 7, 0x8018, 1, 0, 0, -1, 1, 2, -1 };
  return &_ComGoogleGsonMixedStreamTest_3;
}

@end

void ComGoogleGsonMixedStreamTest_3_init(ComGoogleGsonMixedStreamTest_3 *self) {
  ComGoogleGsonReflectTypeToken_init(self);
}

ComGoogleGsonMixedStreamTest_3 *new_ComGoogleGsonMixedStreamTest_3_init() {
  J2OBJC_NEW_IMPL(ComGoogleGsonMixedStreamTest_3, init)
}

ComGoogleGsonMixedStreamTest_3 *create_ComGoogleGsonMixedStreamTest_3_init() {
  J2OBJC_CREATE_IMPL(ComGoogleGsonMixedStreamTest_3, init)
}

@implementation ComGoogleGsonMixedStreamTest_Car

- (instancetype)initWithNSString:(NSString *)name
                         withInt:(jint)color {
  ComGoogleGsonMixedStreamTest_Car_initWithNSString_withInt_(self, name, color);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonMixedStreamTest_Car_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSUInteger)hash {
  return ((jint) [((NSString *) nil_chk(name_)) hash]) ^ color_;
}

- (jboolean)isEqual:(id)o {
  return [o isKindOfClass:[ComGoogleGsonMixedStreamTest_Car class]] && [((NSString *) nil_chk(((ComGoogleGsonMixedStreamTest_Car *) nil_chk(((ComGoogleGsonMixedStreamTest_Car *) cast_chk(o, [ComGoogleGsonMixedStreamTest_Car class]))))->name_)) isEqual:name_] && ((ComGoogleGsonMixedStreamTest_Car *) nil_chk(((ComGoogleGsonMixedStreamTest_Car *) cast_chk(o, [ComGoogleGsonMixedStreamTest_Car class]))))->color_ == color_;
}

- (void)dealloc {
  RELEASE_(name_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSString:withInt:);
  methods[1].selector = @selector(init);
  methods[2].selector = @selector(hash);
  methods[3].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "name_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "color_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;I", "hashCode", "equals", "LNSObject;", "LComGoogleGsonMixedStreamTest;" };
  static const J2ObjcClassInfo _ComGoogleGsonMixedStreamTest_Car = { "Car", "com.google.gson", ptrTable, methods, fields, 7, 0x18, 4, 2, 4, -1, -1, -1, -1 };
  return &_ComGoogleGsonMixedStreamTest_Car;
}

@end

void ComGoogleGsonMixedStreamTest_Car_initWithNSString_withInt_(ComGoogleGsonMixedStreamTest_Car *self, NSString *name, jint color) {
  NSObject_init(self);
  JreStrongAssign(&self->name_, name);
  self->color_ = color;
}

ComGoogleGsonMixedStreamTest_Car *new_ComGoogleGsonMixedStreamTest_Car_initWithNSString_withInt_(NSString *name, jint color) {
  J2OBJC_NEW_IMPL(ComGoogleGsonMixedStreamTest_Car, initWithNSString_withInt_, name, color)
}

ComGoogleGsonMixedStreamTest_Car *create_ComGoogleGsonMixedStreamTest_Car_initWithNSString_withInt_(NSString *name, jint color) {
  J2OBJC_CREATE_IMPL(ComGoogleGsonMixedStreamTest_Car, initWithNSString_withInt_, name, color)
}

void ComGoogleGsonMixedStreamTest_Car_init(ComGoogleGsonMixedStreamTest_Car *self) {
  NSObject_init(self);
}

ComGoogleGsonMixedStreamTest_Car *new_ComGoogleGsonMixedStreamTest_Car_init() {
  J2OBJC_NEW_IMPL(ComGoogleGsonMixedStreamTest_Car, init)
}

ComGoogleGsonMixedStreamTest_Car *create_ComGoogleGsonMixedStreamTest_Car_init() {
  J2OBJC_CREATE_IMPL(ComGoogleGsonMixedStreamTest_Car, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonMixedStreamTest_Car)

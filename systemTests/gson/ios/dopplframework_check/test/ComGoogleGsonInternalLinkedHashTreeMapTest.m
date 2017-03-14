//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "ComGoogleGsonCommonMoreAsserts.h"
#include "ComGoogleGsonInternalLinkedHashTreeMap.h"
#include "ComGoogleGsonInternalLinkedHashTreeMapTest.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Character.h"
#include "java/lang/ClassCastException.h"
#include "java/lang/Integer.h"
#include "java/lang/Iterable.h"
#include "java/lang/Math.h"
#include "java/lang/NullPointerException.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/Collection.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Random.h"
#include "java/util/Set.h"
#include "junit/framework/TestCase.h"

@interface ComGoogleGsonInternalLinkedHashTreeMapTest ()

- (void)assertAvlWalkerWithComGoogleGsonInternalLinkedHashTreeMap_Node:(ComGoogleGsonInternalLinkedHashTreeMap_Node *)root
                                                     withNSStringArray:(IOSObjectArray *)values;

- (void)assertAvlBuilderWithInt:(jint)size
                   withNSString:(NSString *)expected;

- (ComGoogleGsonInternalLinkedHashTreeMap_Node *)nodeWithNSString:(NSString *)value;

- (ComGoogleGsonInternalLinkedHashTreeMap_Node *)nodeWithComGoogleGsonInternalLinkedHashTreeMap_Node:(ComGoogleGsonInternalLinkedHashTreeMap_Node *)left
                                                                                        withNSString:(NSString *)value
                                                     withComGoogleGsonInternalLinkedHashTreeMap_Node:(ComGoogleGsonInternalLinkedHashTreeMap_Node *)right;

- (void)assertTreeWithNSString:(NSString *)expected
withComGoogleGsonInternalLinkedHashTreeMap_Node:(ComGoogleGsonInternalLinkedHashTreeMap_Node *)root;

- (void)assertConsistentWithComGoogleGsonInternalLinkedHashTreeMap_Node:(ComGoogleGsonInternalLinkedHashTreeMap_Node *)node;

- (NSString *)toStringWithComGoogleGsonInternalLinkedHashTreeMap_Node:(ComGoogleGsonInternalLinkedHashTreeMap_Node *)root;

- (void)assertIterationOrderWithJavaLangIterable:(id<JavaLangIterable>)actual
                               withNSObjectArray:(IOSObjectArray *)expected;

@end

inline ComGoogleGsonInternalLinkedHashTreeMap_Node *ComGoogleGsonInternalLinkedHashTreeMapTest_get_head();
static ComGoogleGsonInternalLinkedHashTreeMap_Node *ComGoogleGsonInternalLinkedHashTreeMapTest_head;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleGsonInternalLinkedHashTreeMapTest, head, ComGoogleGsonInternalLinkedHashTreeMap_Node *)

__attribute__((unused)) static void ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlWalkerWithComGoogleGsonInternalLinkedHashTreeMap_Node_withNSStringArray_(ComGoogleGsonInternalLinkedHashTreeMapTest *self, ComGoogleGsonInternalLinkedHashTreeMap_Node *root, IOSObjectArray *values);

__attribute__((unused)) static void ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlBuilderWithInt_withNSString_(ComGoogleGsonInternalLinkedHashTreeMapTest *self, jint size, NSString *expected);

__attribute__((unused)) static ComGoogleGsonInternalLinkedHashTreeMap_Node *ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithNSString_(ComGoogleGsonInternalLinkedHashTreeMapTest *self, NSString *value);

__attribute__((unused)) static ComGoogleGsonInternalLinkedHashTreeMap_Node *ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithComGoogleGsonInternalLinkedHashTreeMap_Node_withNSString_withComGoogleGsonInternalLinkedHashTreeMap_Node_(ComGoogleGsonInternalLinkedHashTreeMapTest *self, ComGoogleGsonInternalLinkedHashTreeMap_Node *left, NSString *value, ComGoogleGsonInternalLinkedHashTreeMap_Node *right);

__attribute__((unused)) static void ComGoogleGsonInternalLinkedHashTreeMapTest_assertTreeWithNSString_withComGoogleGsonInternalLinkedHashTreeMap_Node_(ComGoogleGsonInternalLinkedHashTreeMapTest *self, NSString *expected, ComGoogleGsonInternalLinkedHashTreeMap_Node *root);

__attribute__((unused)) static void ComGoogleGsonInternalLinkedHashTreeMapTest_assertConsistentWithComGoogleGsonInternalLinkedHashTreeMap_Node_(ComGoogleGsonInternalLinkedHashTreeMapTest *self, ComGoogleGsonInternalLinkedHashTreeMap_Node *node);

__attribute__((unused)) static NSString *ComGoogleGsonInternalLinkedHashTreeMapTest_toStringWithComGoogleGsonInternalLinkedHashTreeMap_Node_(ComGoogleGsonInternalLinkedHashTreeMapTest *self, ComGoogleGsonInternalLinkedHashTreeMap_Node *root);

__attribute__((unused)) static void ComGoogleGsonInternalLinkedHashTreeMapTest_assertIterationOrderWithJavaLangIterable_withNSObjectArray_(ComGoogleGsonInternalLinkedHashTreeMapTest *self, id<JavaLangIterable> actual, IOSObjectArray *expected);

J2OBJC_INITIALIZED_DEFN(ComGoogleGsonInternalLinkedHashTreeMapTest)

@implementation ComGoogleGsonInternalLinkedHashTreeMapTest

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonInternalLinkedHashTreeMapTest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)testIterationOrder {
  ComGoogleGsonInternalLinkedHashTreeMap *map = create_ComGoogleGsonInternalLinkedHashTreeMap_init();
  [map putWithId:@"a" withId:@"android"];
  [map putWithId:@"c" withId:@"cola"];
  [map putWithId:@"b" withId:@"bbq"];
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertIterationOrderWithJavaLangIterable_withNSObjectArray_(self, [map keySet], [IOSObjectArray arrayWithObjects:(id[]){ @"a", @"c", @"b" } count:3 type:NSString_class_()]);
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertIterationOrderWithJavaLangIterable_withNSObjectArray_(self, [map values], [IOSObjectArray arrayWithObjects:(id[]){ @"android", @"cola", @"bbq" } count:3 type:NSString_class_()]);
}

- (void)testRemoveRootDoesNotDoubleUnlink {
  ComGoogleGsonInternalLinkedHashTreeMap *map = create_ComGoogleGsonInternalLinkedHashTreeMap_init();
  [map putWithId:@"a" withId:@"android"];
  [map putWithId:@"c" withId:@"cola"];
  [map putWithId:@"b" withId:@"bbq"];
  id<JavaUtilIterator> it = [((id<JavaUtilSet>) nil_chk([map entrySet])) iterator];
  [((id<JavaUtilIterator>) nil_chk(it)) next];
  [it next];
  [it next];
  [it remove];
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertIterationOrderWithJavaLangIterable_withNSObjectArray_(self, [map keySet], [IOSObjectArray arrayWithObjects:(id[]){ @"a", @"c" } count:2 type:NSString_class_()]);
}

- (void)testPutNullKeyFails {
  ComGoogleGsonInternalLinkedHashTreeMap *map = create_ComGoogleGsonInternalLinkedHashTreeMap_init();
  @try {
    [map putWithId:nil withId:@"android"];
    JunitFrameworkTestCase_fail();
  }
  @catch (JavaLangNullPointerException *expected) {
  }
}

- (void)testPutNonComparableKeyFails {
  ComGoogleGsonInternalLinkedHashTreeMap *map = create_ComGoogleGsonInternalLinkedHashTreeMap_init();
  @try {
    [map putWithId:create_NSObject_init() withId:@"android"];
    JunitFrameworkTestCase_fail();
  }
  @catch (JavaLangClassCastException *expected) {
  }
}

- (void)testContainsNonComparableKeyReturnsFalse {
  ComGoogleGsonInternalLinkedHashTreeMap *map = create_ComGoogleGsonInternalLinkedHashTreeMap_init();
  [map putWithId:@"a" withId:@"android"];
  JunitFrameworkTestCase_assertFalseWithBoolean_([map containsKeyWithId:create_NSObject_init()]);
}

- (void)testContainsNullKeyIsAlwaysFalse {
  ComGoogleGsonInternalLinkedHashTreeMap *map = create_ComGoogleGsonInternalLinkedHashTreeMap_init();
  [map putWithId:@"a" withId:@"android"];
  JunitFrameworkTestCase_assertFalseWithBoolean_([map containsKeyWithId:nil]);
}

- (void)testPutOverrides {
  ComGoogleGsonInternalLinkedHashTreeMap *map = create_ComGoogleGsonInternalLinkedHashTreeMap_init();
  JunitFrameworkTestCase_assertNullWithId_([map putWithId:@"d" withId:@"donut"]);
  JunitFrameworkTestCase_assertNullWithId_([map putWithId:@"e" withId:@"eclair"]);
  JunitFrameworkTestCase_assertNullWithId_([map putWithId:@"f" withId:@"froyo"]);
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(3, [map size]);
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"donut", [map getWithId:@"d"]);
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"donut", [map putWithId:@"d" withId:@"done"]);
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(3, [map size]);
}

- (void)testEmptyStringValues {
  ComGoogleGsonInternalLinkedHashTreeMap *map = create_ComGoogleGsonInternalLinkedHashTreeMap_init();
  [map putWithId:@"a" withId:@""];
  JunitFrameworkTestCase_assertTrueWithBoolean_([map containsKeyWithId:@"a"]);
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"", [map getWithId:@"a"]);
}

- (void)testForceDoublingAndRehash {
  JavaUtilRandom *random = create_JavaUtilRandom_initWithLong_(1367593214724LL);
  ComGoogleGsonInternalLinkedHashTreeMap *map = create_ComGoogleGsonInternalLinkedHashTreeMap_init();
  IOSObjectArray *keys = [IOSObjectArray arrayWithLength:1000 type:NSString_class_()];
  for (jint i = 0; i < keys->size_; i++) {
    IOSObjectArray_Set(keys, i, JreStrcat("$CI", JavaLangInteger_toStringWithInt_withInt_(JavaLangMath_absWithInt_([random nextInt]), 36), '-', i));
    [map putWithId:IOSObjectArray_Get(keys, i) withId:JreStrcat("I", i)];
  }
  for (jint i = 0; i < keys->size_; i++) {
    NSString *key = IOSObjectArray_Get(keys, i);
    JunitFrameworkTestCase_assertTrueWithBoolean_([map containsKeyWithId:key]);
    JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(JreStrcat("I", i), [map getWithId:key]);
  }
}

- (void)testClear {
  ComGoogleGsonInternalLinkedHashTreeMap *map = create_ComGoogleGsonInternalLinkedHashTreeMap_init();
  [map putWithId:@"a" withId:@"android"];
  [map putWithId:@"c" withId:@"cola"];
  [map putWithId:@"b" withId:@"bbq"];
  [map clear];
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertIterationOrderWithJavaLangIterable_withNSObjectArray_(self, [map keySet], [IOSObjectArray arrayWithLength:0 type:NSString_class_()]);
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(0, [map size]);
}

- (void)testEqualsAndHashCode {
  ComGoogleGsonInternalLinkedHashTreeMap *map1 = create_ComGoogleGsonInternalLinkedHashTreeMap_init();
  [map1 putWithId:@"A" withId:JavaLangInteger_valueOfWithInt_(1)];
  [map1 putWithId:@"B" withId:JavaLangInteger_valueOfWithInt_(2)];
  [map1 putWithId:@"C" withId:JavaLangInteger_valueOfWithInt_(3)];
  [map1 putWithId:@"D" withId:JavaLangInteger_valueOfWithInt_(4)];
  ComGoogleGsonInternalLinkedHashTreeMap *map2 = create_ComGoogleGsonInternalLinkedHashTreeMap_init();
  [map2 putWithId:@"C" withId:JavaLangInteger_valueOfWithInt_(3)];
  [map2 putWithId:@"B" withId:JavaLangInteger_valueOfWithInt_(2)];
  [map2 putWithId:@"D" withId:JavaLangInteger_valueOfWithInt_(4)];
  [map2 putWithId:@"A" withId:JavaLangInteger_valueOfWithInt_(1)];
  ComGoogleGsonCommonMoreAsserts_assertEqualsAndHashCodeWithId_withId_(map1, map2);
}

- (void)testAvlWalker {
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlWalkerWithComGoogleGsonInternalLinkedHashTreeMap_Node_withNSStringArray_(self, ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithComGoogleGsonInternalLinkedHashTreeMap_Node_withNSString_withComGoogleGsonInternalLinkedHashTreeMap_Node_(self, ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithNSString_(self, @"a"), @"b", ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithNSString_(self, @"c")), [IOSObjectArray arrayWithObjects:(id[]){ @"a", @"b", @"c" } count:3 type:NSString_class_()]);
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlWalkerWithComGoogleGsonInternalLinkedHashTreeMap_Node_withNSStringArray_(self, ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithComGoogleGsonInternalLinkedHashTreeMap_Node_withNSString_withComGoogleGsonInternalLinkedHashTreeMap_Node_(self, ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithComGoogleGsonInternalLinkedHashTreeMap_Node_withNSString_withComGoogleGsonInternalLinkedHashTreeMap_Node_(self, ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithNSString_(self, @"a"), @"b", ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithNSString_(self, @"c")), @"d", ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithComGoogleGsonInternalLinkedHashTreeMap_Node_withNSString_withComGoogleGsonInternalLinkedHashTreeMap_Node_(self, ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithNSString_(self, @"e"), @"f", ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithNSString_(self, @"g"))), [IOSObjectArray arrayWithObjects:(id[]){ @"a", @"b", @"c", @"d", @"e", @"f", @"g" } count:7 type:NSString_class_()]);
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlWalkerWithComGoogleGsonInternalLinkedHashTreeMap_Node_withNSStringArray_(self, ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithComGoogleGsonInternalLinkedHashTreeMap_Node_withNSString_withComGoogleGsonInternalLinkedHashTreeMap_Node_(self, ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithComGoogleGsonInternalLinkedHashTreeMap_Node_withNSString_withComGoogleGsonInternalLinkedHashTreeMap_Node_(self, nil, @"a", ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithNSString_(self, @"b")), @"c", ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithComGoogleGsonInternalLinkedHashTreeMap_Node_withNSString_withComGoogleGsonInternalLinkedHashTreeMap_Node_(self, ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithNSString_(self, @"d"), @"e", nil)), [IOSObjectArray arrayWithObjects:(id[]){ @"a", @"b", @"c", @"d", @"e" } count:5 type:NSString_class_()]);
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlWalkerWithComGoogleGsonInternalLinkedHashTreeMap_Node_withNSStringArray_(self, ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithComGoogleGsonInternalLinkedHashTreeMap_Node_withNSString_withComGoogleGsonInternalLinkedHashTreeMap_Node_(self, nil, @"a", ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithComGoogleGsonInternalLinkedHashTreeMap_Node_withNSString_withComGoogleGsonInternalLinkedHashTreeMap_Node_(self, nil, @"b", ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithComGoogleGsonInternalLinkedHashTreeMap_Node_withNSString_withComGoogleGsonInternalLinkedHashTreeMap_Node_(self, nil, @"c", ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithNSString_(self, @"d")))), [IOSObjectArray arrayWithObjects:(id[]){ @"a", @"b", @"c", @"d" } count:4 type:NSString_class_()]);
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlWalkerWithComGoogleGsonInternalLinkedHashTreeMap_Node_withNSStringArray_(self, ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithComGoogleGsonInternalLinkedHashTreeMap_Node_withNSString_withComGoogleGsonInternalLinkedHashTreeMap_Node_(self, ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithComGoogleGsonInternalLinkedHashTreeMap_Node_withNSString_withComGoogleGsonInternalLinkedHashTreeMap_Node_(self, ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithComGoogleGsonInternalLinkedHashTreeMap_Node_withNSString_withComGoogleGsonInternalLinkedHashTreeMap_Node_(self, ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithNSString_(self, @"a"), @"b", nil), @"c", nil), @"d", nil), [IOSObjectArray arrayWithObjects:(id[]){ @"a", @"b", @"c", @"d" } count:4 type:NSString_class_()]);
}

- (void)assertAvlWalkerWithComGoogleGsonInternalLinkedHashTreeMap_Node:(ComGoogleGsonInternalLinkedHashTreeMap_Node *)root
                                                     withNSStringArray:(IOSObjectArray *)values {
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlWalkerWithComGoogleGsonInternalLinkedHashTreeMap_Node_withNSStringArray_(self, root, values);
}

- (void)testAvlBuilder {
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlBuilderWithInt_withNSString_(self, 1, @"a");
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlBuilderWithInt_withNSString_(self, 2, @"(. a b)");
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlBuilderWithInt_withNSString_(self, 3, @"(a b c)");
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlBuilderWithInt_withNSString_(self, 4, @"(a b (. c d))");
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlBuilderWithInt_withNSString_(self, 5, @"(a b (c d e))");
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlBuilderWithInt_withNSString_(self, 6, @"((. a b) c (d e f))");
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlBuilderWithInt_withNSString_(self, 7, @"((a b c) d (e f g))");
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlBuilderWithInt_withNSString_(self, 8, @"((a b c) d (e f (. g h)))");
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlBuilderWithInt_withNSString_(self, 9, @"((a b c) d (e f (g h i)))");
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlBuilderWithInt_withNSString_(self, 10, @"((a b c) d ((. e f) g (h i j)))");
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlBuilderWithInt_withNSString_(self, 11, @"((a b c) d ((e f g) h (i j k)))");
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlBuilderWithInt_withNSString_(self, 12, @"((a b (. c d)) e ((f g h) i (j k l)))");
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlBuilderWithInt_withNSString_(self, 13, @"((a b (c d e)) f ((g h i) j (k l m)))");
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlBuilderWithInt_withNSString_(self, 14, @"(((. a b) c (d e f)) g ((h i j) k (l m n)))");
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlBuilderWithInt_withNSString_(self, 15, @"(((a b c) d (e f g)) h ((i j k) l (m n o)))");
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlBuilderWithInt_withNSString_(self, 16, @"(((a b c) d (e f g)) h ((i j k) l (m n (. o p))))");
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlBuilderWithInt_withNSString_(self, 30, @"((((. a b) c (d e f)) g ((h i j) k (l m n))) o (((p q r) s (t u v)) w ((x y z) A (B C D))))");
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlBuilderWithInt_withNSString_(self, 31, @"((((a b c) d (e f g)) h ((i j k) l (m n o))) p (((q r s) t (u v w)) x ((y z A) B (C D E))))");
}

- (void)assertAvlBuilderWithInt:(jint)size
                   withNSString:(NSString *)expected {
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlBuilderWithInt_withNSString_(self, size, expected);
}

- (ComGoogleGsonInternalLinkedHashTreeMap_Node *)nodeWithNSString:(NSString *)value {
  return ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithNSString_(self, value);
}

- (ComGoogleGsonInternalLinkedHashTreeMap_Node *)nodeWithComGoogleGsonInternalLinkedHashTreeMap_Node:(ComGoogleGsonInternalLinkedHashTreeMap_Node *)left
                                                                                        withNSString:(NSString *)value
                                                     withComGoogleGsonInternalLinkedHashTreeMap_Node:(ComGoogleGsonInternalLinkedHashTreeMap_Node *)right {
  return ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithComGoogleGsonInternalLinkedHashTreeMap_Node_withNSString_withComGoogleGsonInternalLinkedHashTreeMap_Node_(self, left, value, right);
}

- (void)assertTreeWithNSString:(NSString *)expected
withComGoogleGsonInternalLinkedHashTreeMap_Node:(ComGoogleGsonInternalLinkedHashTreeMap_Node *)root {
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertTreeWithNSString_withComGoogleGsonInternalLinkedHashTreeMap_Node_(self, expected, root);
}

- (void)assertConsistentWithComGoogleGsonInternalLinkedHashTreeMap_Node:(ComGoogleGsonInternalLinkedHashTreeMap_Node *)node {
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertConsistentWithComGoogleGsonInternalLinkedHashTreeMap_Node_(self, node);
}

- (NSString *)toStringWithComGoogleGsonInternalLinkedHashTreeMap_Node:(ComGoogleGsonInternalLinkedHashTreeMap_Node *)root {
  return ComGoogleGsonInternalLinkedHashTreeMapTest_toStringWithComGoogleGsonInternalLinkedHashTreeMap_Node_(self, root);
}

- (void)assertIterationOrderWithJavaLangIterable:(id<JavaLangIterable>)actual
                               withNSObjectArray:(IOSObjectArray *)expected {
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertIterationOrderWithJavaLangIterable_withNSObjectArray_(self, actual, expected);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x82, 1, 2, -1, 3, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 4, 5, -1, -1, -1, -1 },
    { NULL, "LComGoogleGsonInternalLinkedHashTreeMap_Node;", 0x2, 6, 7, -1, 8, -1, -1 },
    { NULL, "LComGoogleGsonInternalLinkedHashTreeMap_Node;", 0x2, 6, 9, -1, 10, -1, -1 },
    { NULL, "V", 0x2, 11, 12, -1, 13, -1, -1 },
    { NULL, "V", 0x2, 14, 15, -1, 16, -1, -1 },
    { NULL, "LNSString;", 0x2, 17, 15, -1, 18, -1, -1 },
    { NULL, "V", 0x82, 19, 20, -1, 21, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(testIterationOrder);
  methods[2].selector = @selector(testRemoveRootDoesNotDoubleUnlink);
  methods[3].selector = @selector(testPutNullKeyFails);
  methods[4].selector = @selector(testPutNonComparableKeyFails);
  methods[5].selector = @selector(testContainsNonComparableKeyReturnsFalse);
  methods[6].selector = @selector(testContainsNullKeyIsAlwaysFalse);
  methods[7].selector = @selector(testPutOverrides);
  methods[8].selector = @selector(testEmptyStringValues);
  methods[9].selector = @selector(testForceDoublingAndRehash);
  methods[10].selector = @selector(testClear);
  methods[11].selector = @selector(testEqualsAndHashCode);
  methods[12].selector = @selector(testAvlWalker);
  methods[13].selector = @selector(assertAvlWalkerWithComGoogleGsonInternalLinkedHashTreeMap_Node:withNSStringArray:);
  methods[14].selector = @selector(testAvlBuilder);
  methods[15].selector = @selector(assertAvlBuilderWithInt:withNSString:);
  methods[16].selector = @selector(nodeWithNSString:);
  methods[17].selector = @selector(nodeWithComGoogleGsonInternalLinkedHashTreeMap_Node:withNSString:withComGoogleGsonInternalLinkedHashTreeMap_Node:);
  methods[18].selector = @selector(assertTreeWithNSString:withComGoogleGsonInternalLinkedHashTreeMap_Node:);
  methods[19].selector = @selector(assertConsistentWithComGoogleGsonInternalLinkedHashTreeMap_Node:);
  methods[20].selector = @selector(toStringWithComGoogleGsonInternalLinkedHashTreeMap_Node:);
  methods[21].selector = @selector(assertIterationOrderWithJavaLangIterable:withNSObjectArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "head", "LComGoogleGsonInternalLinkedHashTreeMap_Node;", .constantValue.asLong = 0, 0x1a, -1, 22, 23, -1 },
  };
  static const void *ptrTable[] = { "LJavaLangException;", "assertAvlWalker", "LComGoogleGsonInternalLinkedHashTreeMap_Node;[LNSString;", "(Lcom/google/gson/internal/LinkedHashTreeMap$Node<Ljava/lang/String;Ljava/lang/String;>;[Ljava/lang/String;)V", "assertAvlBuilder", "ILNSString;", "node", "LNSString;", "(Ljava/lang/String;)Lcom/google/gson/internal/LinkedHashTreeMap$Node<Ljava/lang/String;Ljava/lang/String;>;", "LComGoogleGsonInternalLinkedHashTreeMap_Node;LNSString;LComGoogleGsonInternalLinkedHashTreeMap_Node;", "(Lcom/google/gson/internal/LinkedHashTreeMap$Node<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;Lcom/google/gson/internal/LinkedHashTreeMap$Node<Ljava/lang/String;Ljava/lang/String;>;)Lcom/google/gson/internal/LinkedHashTreeMap$Node<Ljava/lang/String;Ljava/lang/String;>;", "assertTree", "LNSString;LComGoogleGsonInternalLinkedHashTreeMap_Node;", "(Ljava/lang/String;Lcom/google/gson/internal/LinkedHashTreeMap$Node<**>;)V", "assertConsistent", "LComGoogleGsonInternalLinkedHashTreeMap_Node;", "(Lcom/google/gson/internal/LinkedHashTreeMap$Node<**>;)V", "toString", "(Lcom/google/gson/internal/LinkedHashTreeMap$Node<**>;)Ljava/lang/String;", "assertIterationOrder", "LJavaLangIterable;[LNSObject;", "<T:Ljava/lang/Object;>(Ljava/lang/Iterable<TT;>;[TT;)V", &ComGoogleGsonInternalLinkedHashTreeMapTest_head, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<Ljava/lang/String;Ljava/lang/String;>;" };
  static const J2ObjcClassInfo _ComGoogleGsonInternalLinkedHashTreeMapTest = { "LinkedHashTreeMapTest", "com.google.gson.internal", ptrTable, methods, fields, 7, 0x11, 22, 1, -1, -1, -1, -1, -1 };
  return &_ComGoogleGsonInternalLinkedHashTreeMapTest;
}

+ (void)initialize {
  if (self == [ComGoogleGsonInternalLinkedHashTreeMapTest class]) {
    JreStrongAssignAndConsume(&ComGoogleGsonInternalLinkedHashTreeMapTest_head, new_ComGoogleGsonInternalLinkedHashTreeMap_Node_init());
    J2OBJC_SET_INITIALIZED(ComGoogleGsonInternalLinkedHashTreeMapTest)
  }
}

@end

void ComGoogleGsonInternalLinkedHashTreeMapTest_init(ComGoogleGsonInternalLinkedHashTreeMapTest *self) {
  JunitFrameworkTestCase_init(self);
}

ComGoogleGsonInternalLinkedHashTreeMapTest *new_ComGoogleGsonInternalLinkedHashTreeMapTest_init() {
  J2OBJC_NEW_IMPL(ComGoogleGsonInternalLinkedHashTreeMapTest, init)
}

ComGoogleGsonInternalLinkedHashTreeMapTest *create_ComGoogleGsonInternalLinkedHashTreeMapTest_init() {
  J2OBJC_CREATE_IMPL(ComGoogleGsonInternalLinkedHashTreeMapTest, init)
}

void ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlWalkerWithComGoogleGsonInternalLinkedHashTreeMap_Node_withNSStringArray_(ComGoogleGsonInternalLinkedHashTreeMapTest *self, ComGoogleGsonInternalLinkedHashTreeMap_Node *root, IOSObjectArray *values) {
  ComGoogleGsonInternalLinkedHashTreeMap_AvlIterator *iterator = create_ComGoogleGsonInternalLinkedHashTreeMap_AvlIterator_init();
  [iterator resetWithComGoogleGsonInternalLinkedHashTreeMap_Node:root];
  {
    IOSObjectArray *a__ = values;
    NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    NSString * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      NSString *value = *b__++;
      JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(value, [((ComGoogleGsonInternalLinkedHashTreeMap_Node *) nil_chk([iterator next])) getKey]);
    }
  }
  JunitFrameworkTestCase_assertNullWithId_([iterator next]);
}

void ComGoogleGsonInternalLinkedHashTreeMapTest_assertAvlBuilderWithInt_withNSString_(ComGoogleGsonInternalLinkedHashTreeMapTest *self, jint size, NSString *expected) {
  IOSCharArray *values = [@"abcdefghijklmnopqrstuvwxyzABCDE" java_toCharArray];
  ComGoogleGsonInternalLinkedHashTreeMap_AvlBuilder *avlBuilder = create_ComGoogleGsonInternalLinkedHashTreeMap_AvlBuilder_init();
  [avlBuilder resetWithInt:size];
  for (jint i = 0; i < size; i++) {
    [avlBuilder addWithComGoogleGsonInternalLinkedHashTreeMap_Node:ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithNSString_(self, JavaLangCharacter_toStringWithChar_(IOSCharArray_Get(nil_chk(values), i)))];
  }
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertTreeWithNSString_withComGoogleGsonInternalLinkedHashTreeMap_Node_(self, expected, [avlBuilder root]);
}

ComGoogleGsonInternalLinkedHashTreeMap_Node *ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithNSString_(ComGoogleGsonInternalLinkedHashTreeMapTest *self, NSString *value) {
  return create_ComGoogleGsonInternalLinkedHashTreeMap_Node_initWithComGoogleGsonInternalLinkedHashTreeMap_Node_withId_withInt_withComGoogleGsonInternalLinkedHashTreeMap_Node_withComGoogleGsonInternalLinkedHashTreeMap_Node_(nil, value, ((jint) [((NSString *) nil_chk(value)) hash]), ComGoogleGsonInternalLinkedHashTreeMapTest_head, ComGoogleGsonInternalLinkedHashTreeMapTest_head);
}

ComGoogleGsonInternalLinkedHashTreeMap_Node *ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithComGoogleGsonInternalLinkedHashTreeMap_Node_withNSString_withComGoogleGsonInternalLinkedHashTreeMap_Node_(ComGoogleGsonInternalLinkedHashTreeMapTest *self, ComGoogleGsonInternalLinkedHashTreeMap_Node *left, NSString *value, ComGoogleGsonInternalLinkedHashTreeMap_Node *right) {
  ComGoogleGsonInternalLinkedHashTreeMap_Node *result = ComGoogleGsonInternalLinkedHashTreeMapTest_nodeWithNSString_(self, value);
  if (left != nil) {
    JreStrongAssign(&((ComGoogleGsonInternalLinkedHashTreeMap_Node *) nil_chk(result))->left_, left);
    JreStrongAssign(&left->parent_, result);
  }
  if (right != nil) {
    JreStrongAssign(&((ComGoogleGsonInternalLinkedHashTreeMap_Node *) nil_chk(result))->right_, right);
    JreStrongAssign(&right->parent_, result);
  }
  return result;
}

void ComGoogleGsonInternalLinkedHashTreeMapTest_assertTreeWithNSString_withComGoogleGsonInternalLinkedHashTreeMap_Node_(ComGoogleGsonInternalLinkedHashTreeMapTest *self, NSString *expected, ComGoogleGsonInternalLinkedHashTreeMap_Node *root) {
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(expected, ComGoogleGsonInternalLinkedHashTreeMapTest_toStringWithComGoogleGsonInternalLinkedHashTreeMap_Node_(self, root));
  ComGoogleGsonInternalLinkedHashTreeMapTest_assertConsistentWithComGoogleGsonInternalLinkedHashTreeMap_Node_(self, root);
}

void ComGoogleGsonInternalLinkedHashTreeMapTest_assertConsistentWithComGoogleGsonInternalLinkedHashTreeMap_Node_(ComGoogleGsonInternalLinkedHashTreeMapTest *self, ComGoogleGsonInternalLinkedHashTreeMap_Node *node) {
  jint leftHeight = 0;
  if (((ComGoogleGsonInternalLinkedHashTreeMap_Node *) nil_chk(node))->left_ != nil) {
    ComGoogleGsonInternalLinkedHashTreeMapTest_assertConsistentWithComGoogleGsonInternalLinkedHashTreeMap_Node_(self, node->left_);
    JunitFrameworkTestCase_assertSameWithId_withId_(node, ((ComGoogleGsonInternalLinkedHashTreeMap_Node *) nil_chk(node->left_))->parent_);
    leftHeight = ((ComGoogleGsonInternalLinkedHashTreeMap_Node *) nil_chk(node->left_))->height_;
  }
  jint rightHeight = 0;
  if (node->right_ != nil) {
    ComGoogleGsonInternalLinkedHashTreeMapTest_assertConsistentWithComGoogleGsonInternalLinkedHashTreeMap_Node_(self, node->right_);
    JunitFrameworkTestCase_assertSameWithId_withId_(node, ((ComGoogleGsonInternalLinkedHashTreeMap_Node *) nil_chk(node->right_))->parent_);
    rightHeight = ((ComGoogleGsonInternalLinkedHashTreeMap_Node *) nil_chk(node->right_))->height_;
  }
  if (node->parent_ != nil) {
    JunitFrameworkTestCase_assertTrueWithBoolean_(node->parent_->left_ == node || node->parent_->right_ == node);
  }
  if (JavaLangMath_maxWithInt_withInt_(leftHeight, rightHeight) + 1 != node->height_) {
    JunitFrameworkTestCase_fail();
  }
}

NSString *ComGoogleGsonInternalLinkedHashTreeMapTest_toStringWithComGoogleGsonInternalLinkedHashTreeMap_Node_(ComGoogleGsonInternalLinkedHashTreeMapTest *self, ComGoogleGsonInternalLinkedHashTreeMap_Node *root) {
  if (root == nil) {
    return @".";
  }
  else if (root->left_ == nil && root->right_ == nil) {
    return NSString_java_valueOf_(root->key_);
  }
  else {
    return NSString_java_formatWithNSString_withNSObjectArray_(@"(%s %s %s)", [IOSObjectArray arrayWithObjects:(id[]){ ComGoogleGsonInternalLinkedHashTreeMapTest_toStringWithComGoogleGsonInternalLinkedHashTreeMap_Node_(self, root->left_), root->key_, ComGoogleGsonInternalLinkedHashTreeMapTest_toStringWithComGoogleGsonInternalLinkedHashTreeMap_Node_(self, root->right_) } count:3 type:NSObject_class_()]);
  }
}

void ComGoogleGsonInternalLinkedHashTreeMapTest_assertIterationOrderWithJavaLangIterable_withNSObjectArray_(ComGoogleGsonInternalLinkedHashTreeMapTest *self, id<JavaLangIterable> actual, IOSObjectArray *expected) {
  JavaUtilArrayList *actualList = create_JavaUtilArrayList_init();
  for (id __strong t in nil_chk(actual)) {
    [actualList addWithId:t];
  }
  JunitFrameworkTestCase_assertEqualsWithId_withId_(JavaUtilArrays_asListWithNSObjectArray_(expected), actualList);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonInternalLinkedHashTreeMapTest)

package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.databind.util.RawValue;
import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes.dex */
public interface JsonNodeCreator {
    ArrayNode arrayNode();

    ArrayNode arrayNode(int i);

    /* renamed from: binaryNode */
    ValueNode mo391binaryNode(byte[] bArr);

    /* renamed from: binaryNode */
    ValueNode mo392binaryNode(byte[] bArr, int i, int i2);

    /* renamed from: booleanNode */
    ValueNode mo393booleanNode(boolean z);

    /* renamed from: nullNode */
    ValueNode mo394nullNode();

    /* renamed from: numberNode */
    ValueNode mo395numberNode(byte b);

    /* renamed from: numberNode */
    ValueNode mo396numberNode(double d);

    /* renamed from: numberNode */
    ValueNode mo397numberNode(float f);

    /* renamed from: numberNode */
    ValueNode mo398numberNode(int i);

    /* renamed from: numberNode */
    ValueNode mo399numberNode(long j);

    ValueNode numberNode(Byte b);

    ValueNode numberNode(Double d);

    ValueNode numberNode(Float f);

    ValueNode numberNode(Integer num);

    ValueNode numberNode(Long l);

    ValueNode numberNode(Short sh);

    /* renamed from: numberNode */
    ValueNode mo400numberNode(BigDecimal bigDecimal);

    /* renamed from: numberNode */
    ValueNode mo401numberNode(BigInteger bigInteger);

    /* renamed from: numberNode */
    ValueNode mo402numberNode(short s);

    ObjectNode objectNode();

    ValueNode pojoNode(Object obj);

    ValueNode rawValueNode(RawValue rawValue);

    /* renamed from: textNode */
    ValueNode mo403textNode(String str);
}

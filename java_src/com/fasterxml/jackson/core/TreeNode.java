package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.JsonParser;
import java.util.Iterator;
/* loaded from: classes.dex */
public interface TreeNode {
    JsonToken asToken();

    /* renamed from: at */
    TreeNode mo220at(JsonPointer jsonPointer);

    /* renamed from: at */
    TreeNode mo221at(String str) throws IllegalArgumentException;

    Iterator<String> fieldNames();

    /* renamed from: get */
    TreeNode mo415get(int i);

    /* renamed from: get */
    TreeNode mo416get(String str);

    boolean isArray();

    boolean isContainerNode();

    boolean isMissingNode();

    boolean isObject();

    boolean isValueNode();

    JsonParser.NumberType numberType();

    /* renamed from: path */
    TreeNode mo417path(int i);

    /* renamed from: path */
    TreeNode mo418path(String str);

    int size();

    JsonParser traverse();

    JsonParser traverse(ObjectCodec objectCodec);
}

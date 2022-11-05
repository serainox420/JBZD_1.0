package com.fasterxml.jackson.core;

import java.io.IOException;
/* loaded from: classes.dex */
public abstract class TreeCodec {
    /* renamed from: createArrayNode */
    public abstract TreeNode mo232createArrayNode();

    /* renamed from: createObjectNode */
    public abstract TreeNode mo233createObjectNode();

    public abstract <T extends TreeNode> T readTree(JsonParser jsonParser) throws IOException, JsonProcessingException;

    public abstract JsonParser treeAsTokens(TreeNode treeNode);

    public abstract void writeTree(JsonGenerator jsonGenerator, TreeNode treeNode) throws IOException, JsonProcessingException;
}

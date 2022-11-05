package com.inmobi.commons.network;

import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class Response {

    /* renamed from: a  reason: collision with root package name */
    String f3816a;
    int b;
    Map<String, List<String>> c;
    ErrorCode d;

    public Response(ErrorCode errorCode) {
        this.f3816a = null;
        this.b = 0;
        this.c = null;
        this.d = errorCode;
    }

    public Response(String str, int i, Map<String, List<String>> map) {
        this.f3816a = null;
        this.b = 0;
        this.c = null;
        this.f3816a = str;
        this.b = i;
        this.c = map;
    }

    public int getStatusCode() {
        return this.b;
    }

    public String getResponseBody() {
        return this.f3816a;
    }

    public ErrorCode getError() {
        return this.d;
    }

    public Map<String, List<String>> getHeaders() {
        return this.c;
    }
}

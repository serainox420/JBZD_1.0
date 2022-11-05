package com.smaato.soma.internal.c;

import com.smaato.soma.exception.UTF8EncodingFailedException;
import java.net.URLEncoder;
/* compiled from: StringFormatter.java */
/* loaded from: classes3.dex */
public class k {
    public static String a(String str) throws UTF8EncodingFailedException {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UTF8EncodingFailedException(e2);
        }
    }
}

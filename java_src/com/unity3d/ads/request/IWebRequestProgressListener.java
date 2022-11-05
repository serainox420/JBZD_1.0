package com.unity3d.ads.request;

import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public interface IWebRequestProgressListener {
    void onRequestProgress(String str, long j, long j2);

    void onRequestStart(String str, long j, int i, Map<String, List<String>> map);
}

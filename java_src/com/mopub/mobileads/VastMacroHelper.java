package com.mopub.mobileads;

import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class VastMacroHelper {

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f4469a;
    private final Map<j, String> b;

    public VastMacroHelper(List<String> list) {
        Preconditions.checkNotNull(list, "uris cannot be null");
        this.f4469a = list;
        this.b = new HashMap();
        this.b.put(j.CACHEBUSTING, a());
    }

    public List<String> getUris() {
        j[] values;
        ArrayList arrayList = new ArrayList();
        for (String str : this.f4469a) {
            if (!TextUtils.isEmpty(str)) {
                String str2 = str;
                for (j jVar : j.values()) {
                    String str3 = this.b.get(jVar);
                    if (str3 == null) {
                        str3 = "";
                    }
                    str2 = str2.replaceAll("\\[" + jVar.name() + "\\]", str3);
                }
                arrayList.add(str2);
            }
        }
        return arrayList;
    }

    public VastMacroHelper withErrorCode(VastErrorCode vastErrorCode) {
        if (vastErrorCode != null) {
            this.b.put(j.ERRORCODE, vastErrorCode.a());
        }
        return this;
    }

    public VastMacroHelper withContentPlayHead(Integer num) {
        if (num != null) {
            String a2 = a(num.intValue());
            if (!TextUtils.isEmpty(a2)) {
                this.b.put(j.CONTENTPLAYHEAD, a2);
            }
        }
        return this;
    }

    public VastMacroHelper withAssetUri(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                str = URLEncoder.encode(str, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                MoPubLog.w("Failed to encode url", e);
            }
            this.b.put(j.ASSETURI, str);
        }
        return this;
    }

    private String a() {
        return String.format(Locale.US, "%08d", Long.valueOf(Math.round(Math.random() * 1.0E8d)));
    }

    private String a(int i) {
        return String.format("%02d:%02d:%02d.%03d", Long.valueOf(TimeUnit.MILLISECONDS.toHours(i)), Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(i) % TimeUnit.HOURS.toMinutes(1L)), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(i) % TimeUnit.MINUTES.toSeconds(1L)), Integer.valueOf(i % 1000));
    }
}

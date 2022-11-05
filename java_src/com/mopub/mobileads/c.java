package com.mopub.mobileads;

import android.text.TextUtils;
import android.util.Pair;
import com.mopub.common.MoPubReward;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.CustomEventRewardedVideo;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RewardedVideoData.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, CustomEventRewardedVideo> f4508a = new TreeMap();
    private final Map<String, MoPubReward> b = new TreeMap();
    private final Map<String, String> c = new TreeMap();
    private final Map<Class<? extends CustomEventRewardedVideo>, MoPubReward> d = new HashMap();
    private final Map<a, Set<String>> e = new HashMap();
    private final Set<CustomEventRewardedVideo.CustomEventRewardedVideoListener> f = new HashSet();
    private String g;
    private String h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CustomEventRewardedVideo a(String str) {
        return this.f4508a.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MoPubReward b(String str) {
        return this.b.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.c.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MoPubReward a(Class<? extends CustomEventRewardedVideo> cls) {
        return this.d.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<String> a(Class<? extends CustomEventRewardedVideo> cls, String str) {
        if (str == null) {
            HashSet hashSet = new HashSet();
            for (Map.Entry<a, Set<String>> entry : this.e.entrySet()) {
                if (cls == entry.getKey().f4509a) {
                    hashSet.addAll(entry.getValue());
                }
            }
            return hashSet;
        }
        a aVar = new a(cls, str);
        return this.e.containsKey(aVar) ? this.e.get(aVar) : Collections.emptySet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public void a(String str, CustomEventRewardedVideo customEventRewardedVideo, CustomEventRewardedVideo.CustomEventRewardedVideoListener customEventRewardedVideoListener, String str2) {
        this.f4508a.put(str, customEventRewardedVideo);
        this.f.add(customEventRewardedVideoListener);
        a((Class<? extends CustomEventRewardedVideo>) customEventRewardedVideo.getClass(), str2, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, String str2, String str3) {
        Preconditions.checkNotNull(str);
        if (str2 == null || str3 == null) {
            this.b.remove(str);
            return;
        }
        try {
            int parseInt = Integer.parseInt(str3);
            if (parseInt >= 0) {
                this.b.put(str, MoPubReward.success(str2, parseInt));
            }
        } catch (NumberFormatException e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, String str2) {
        Preconditions.checkNotNull(str);
        this.c.put(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Class<? extends CustomEventRewardedVideo> cls, MoPubReward moPubReward) {
        Preconditions.checkNotNull(cls);
        this.d.put(cls, moPubReward);
    }

    void a(Class<? extends CustomEventRewardedVideo> cls, String str, String str2) {
        a aVar = new a(cls, str);
        Iterator<Map.Entry<a, Set<String>>> it = this.e.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<a, Set<String>> next = it.next();
            if (!next.getKey().equals(aVar) && next.getValue().contains(str2)) {
                next.getValue().remove(str2);
                if (next.getValue().isEmpty()) {
                    it.remove();
                }
            }
        }
        Set<String> set = this.e.get(aVar);
        if (set == null) {
            set = new HashSet<>();
            this.e.put(aVar, set);
        }
        set.add(str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(String str) {
        this.g = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        return this.g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(String str) {
        this.h = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b() {
        return this.h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RewardedVideoData.java */
    /* loaded from: classes3.dex */
    public static class a extends Pair<Class<? extends CustomEventRewardedVideo>, String> {

        /* renamed from: a  reason: collision with root package name */
        final Class<? extends CustomEventRewardedVideo> f4509a;
        final String b;

        public a(Class<? extends CustomEventRewardedVideo> cls, String str) {
            super(cls, str);
            this.f4509a = cls;
            this.b = str;
        }
    }
}

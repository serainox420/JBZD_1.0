package com.google.android.exoplayer2.source.b.a;

import com.facebook.appevents.AppEventsConstants;
import com.google.android.exoplayer2.Format;
import java.util.Collections;
import java.util.List;
/* compiled from: HlsMasterPlaylist.java */
/* loaded from: classes2.dex */
public final class a extends c {

    /* renamed from: a  reason: collision with root package name */
    public final List<C0139a> f3352a;
    public final List<C0139a> b;
    public final List<C0139a> c;
    public final Format d;
    public final List<Format> e;

    /* compiled from: HlsMasterPlaylist.java */
    /* renamed from: com.google.android.exoplayer2.source.b.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0139a {

        /* renamed from: a  reason: collision with root package name */
        public final String f3353a;
        public final Format b;

        public static C0139a a(String str) {
            return new C0139a(str, Format.b(AppEventsConstants.EVENT_PARAM_VALUE_NO, "application/x-mpegURL", null, null, -1, 0, null));
        }

        public C0139a(String str, Format format) {
            this.f3353a = str;
            this.b = format;
        }
    }

    public a(String str, List<C0139a> list, List<C0139a> list2, List<C0139a> list3, Format format, List<Format> list4) {
        super(str, 0);
        this.f3352a = Collections.unmodifiableList(list);
        this.b = Collections.unmodifiableList(list2);
        this.c = Collections.unmodifiableList(list3);
        this.d = format;
        this.e = Collections.unmodifiableList(list4);
    }

    public static a a(String str) {
        List singletonList = Collections.singletonList(C0139a.a(str));
        List emptyList = Collections.emptyList();
        return new a(null, singletonList, emptyList, emptyList, null, Collections.emptyList());
    }
}

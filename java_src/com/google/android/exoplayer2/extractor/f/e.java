package com.google.android.exoplayer2.extractor.f;

import android.util.SparseArray;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.f.u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: DefaultTsPayloadReaderFactory.java */
/* loaded from: classes2.dex */
public final class e implements u.b {

    /* renamed from: a  reason: collision with root package name */
    private final int f3260a;
    private final List<Format> b;

    public e() {
        this(0, Collections.emptyList());
    }

    public e(int i, List<Format> list) {
        this.f3260a = i;
        if (!a(32) && list.isEmpty()) {
            list = Collections.singletonList(Format.a((String) null, "application/cea-608", (String) null, -1, 0, (String) null, (DrmInitData) null));
        }
        this.b = list;
    }

    @Override // com.google.android.exoplayer2.extractor.f.u.b
    public SparseArray<u> a() {
        return new SparseArray<>();
    }

    @Override // com.google.android.exoplayer2.extractor.f.u.b
    public u a(int i, u.a aVar) {
        switch (i) {
            case 2:
                return new n(new h());
            case 3:
            case 4:
                return new n(new l(aVar.b));
            case 15:
                if (a(2)) {
                    return null;
                }
                return new n(new d(false, aVar.b));
            case 21:
                return new n(new k());
            case 27:
                if (a(4)) {
                    return null;
                }
                return new n(new i(a(aVar), a(1), a(8)));
            case 36:
                return new n(new j(a(aVar)));
            case 129:
            case 135:
                return new n(new b(aVar.b));
            case 130:
            case 138:
                return new n(new f(aVar.b));
            case 134:
                if (a(16)) {
                    return null;
                }
                return new q(new s());
            default:
                return null;
        }
    }

    private r a(u.a aVar) {
        String str;
        int i;
        if (a(32)) {
            return new r(this.b);
        }
        com.google.android.exoplayer2.util.l lVar = new com.google.android.exoplayer2.util.l(aVar.c);
        List<Format> list = this.b;
        while (lVar.b() > 0) {
            int f = lVar.f();
            int d = lVar.d() + lVar.f();
            if (f == 134) {
                ArrayList arrayList = new ArrayList();
                int f2 = lVar.f() & 31;
                for (int i2 = 0; i2 < f2; i2++) {
                    String e = lVar.e(3);
                    int f3 = lVar.f();
                    if ((f3 & 128) != 0) {
                        str = "application/cea-708";
                        i = f3 & 63;
                    } else {
                        str = "application/cea-608";
                        i = 1;
                    }
                    arrayList.add(Format.a((String) null, str, (String) null, -1, 0, e, i, (DrmInitData) null));
                    lVar.d(2);
                }
                list = arrayList;
            }
            lVar.c(d);
        }
        return new r(list);
    }

    private boolean a(int i) {
        return (this.f3260a & i) != 0;
    }
}

package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.util.l;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
/* compiled from: ScriptTagPayloadReader.java */
/* loaded from: classes2.dex */
final class c extends TagPayloadReader {
    private long b;

    public c(n nVar) {
        super(nVar);
        this.b = -9223372036854775807L;
    }

    public long a() {
        return this.b;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean a(l lVar) {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected void a(l lVar, long j) throws ParserException {
        if (b(lVar) != 2) {
            throw new ParserException();
        }
        if ("onMetaData".equals(e(lVar))) {
            if (b(lVar) != 8) {
                throw new ParserException();
            }
            HashMap<String, Object> h = h(lVar);
            if (h.containsKey(VastIconXmlManager.DURATION)) {
                double doubleValue = ((Double) h.get(VastIconXmlManager.DURATION)).doubleValue();
                if (doubleValue > 0.0d) {
                    this.b = (long) (doubleValue * 1000000.0d);
                }
            }
        }
    }

    private static int b(l lVar) {
        return lVar.f();
    }

    private static Boolean c(l lVar) {
        boolean z = true;
        if (lVar.f() != 1) {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    private static Double d(l lVar) {
        return Double.valueOf(Double.longBitsToDouble(lVar.o()));
    }

    private static String e(l lVar) {
        int g = lVar.g();
        int d = lVar.d();
        lVar.d(g);
        return new String(lVar.f3511a, d, g);
    }

    private static ArrayList<Object> f(l lVar) {
        int s = lVar.s();
        ArrayList<Object> arrayList = new ArrayList<>(s);
        for (int i = 0; i < s; i++) {
            arrayList.add(a(lVar, b(lVar)));
        }
        return arrayList;
    }

    private static HashMap<String, Object> g(l lVar) {
        HashMap<String, Object> hashMap = new HashMap<>();
        while (true) {
            String e = e(lVar);
            int b = b(lVar);
            if (b != 9) {
                hashMap.put(e, a(lVar, b));
            } else {
                return hashMap;
            }
        }
    }

    private static HashMap<String, Object> h(l lVar) {
        int s = lVar.s();
        HashMap<String, Object> hashMap = new HashMap<>(s);
        for (int i = 0; i < s; i++) {
            hashMap.put(e(lVar), a(lVar, b(lVar)));
        }
        return hashMap;
    }

    private static Date i(l lVar) {
        Date date = new Date((long) d(lVar).doubleValue());
        lVar.d(2);
        return date;
    }

    private static Object a(l lVar, int i) {
        switch (i) {
            case 0:
                return d(lVar);
            case 1:
                return c(lVar);
            case 2:
                return e(lVar);
            case 3:
                return g(lVar);
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            default:
                return null;
            case 8:
                return h(lVar);
            case 10:
                return f(lVar);
            case 11:
                return i(lVar);
        }
    }
}

package bolts;

import android.net.Uri;
import java.util.Collections;
import java.util.List;
/* compiled from: AppLink.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private Uri f931a;
    private List<a> b;
    private Uri c;

    /* compiled from: AppLink.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final Uri f932a;
        private final String b;
        private final String c;
        private final String d;

        public a(String str, String str2, Uri uri, String str3) {
            this.b = str;
            this.c = str2;
            this.f932a = uri;
            this.d = str3;
        }
    }

    public b(Uri uri, List<a> list, Uri uri2) {
        this.f931a = uri;
        this.b = list == null ? Collections.emptyList() : list;
        this.c = uri2;
    }
}

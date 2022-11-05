package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.RestrictTo;
import android.support.v4.app.ak;
import android.support.v4.app.al;
import android.support.v4.app.am;
import android.support.v4.app.an;
import android.support.v4.app.ap;
import android.support.v4.app.aq;
import android.support.v4.app.ar;
import android.widget.RemoteViews;
import com.facebook.share.internal.ShareConstants;
import com.pubmatic.sdk.common.CommonConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: NotificationCompat.java */
/* loaded from: classes.dex */
public class aj {

    /* renamed from: a  reason: collision with root package name */
    static final h f228a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NotificationCompat.java */
    /* loaded from: classes.dex */
    public interface h {
        Notification a(d dVar, e eVar);

        Bundle a(Notification notification);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: NotificationCompat.java */
    @RestrictTo
    /* loaded from: classes.dex */
    public static class e {
        protected e() {
        }

        public Notification a(d dVar, ai aiVar) {
            Notification b = aiVar.b();
            if (dVar.C != null) {
                b.contentView = dVar.C;
            }
            return b;
        }
    }

    /* compiled from: NotificationCompat.java */
    /* loaded from: classes.dex */
    static class l implements h {
        l() {
        }

        @Override // android.support.v4.app.aj.h
        public Notification a(d dVar, e eVar) {
            Notification a2 = an.a(dVar.F, dVar.f232a, dVar.d(), dVar.c(), dVar.d, dVar.e);
            if (dVar.j > 0) {
                a2.flags |= 128;
            }
            if (dVar.C != null) {
                a2.contentView = dVar.C;
            }
            return a2;
        }

        @Override // android.support.v4.app.aj.h
        public Bundle a(Notification notification) {
            return null;
        }
    }

    /* compiled from: NotificationCompat.java */
    /* loaded from: classes.dex */
    static class m extends l {
        m() {
        }

        @Override // android.support.v4.app.aj.l, android.support.v4.app.aj.h
        public Notification a(d dVar, e eVar) {
            Notification a2 = ao.a(dVar.f232a, dVar.F, dVar.d(), dVar.c(), dVar.h, dVar.f, dVar.i, dVar.d, dVar.e, dVar.g);
            if (dVar.C != null) {
                a2.contentView = dVar.C;
            }
            return a2;
        }
    }

    /* compiled from: NotificationCompat.java */
    /* loaded from: classes.dex */
    static class n extends l {
        n() {
        }

        @Override // android.support.v4.app.aj.l, android.support.v4.app.aj.h
        public Notification a(d dVar, e eVar) {
            return eVar.a(dVar, new ap.a(dVar.f232a, dVar.F, dVar.d(), dVar.c(), dVar.h, dVar.f, dVar.i, dVar.d, dVar.e, dVar.g, dVar.p, dVar.q, dVar.r));
        }
    }

    /* compiled from: NotificationCompat.java */
    /* loaded from: classes.dex */
    static class o extends l {
        o() {
        }

        @Override // android.support.v4.app.aj.l, android.support.v4.app.aj.h
        public Notification a(d dVar, e eVar) {
            Bundle a2;
            aq.a aVar = new aq.a(dVar.f232a, dVar.F, dVar.d(), dVar.c(), dVar.h, dVar.f, dVar.i, dVar.d, dVar.e, dVar.g, dVar.p, dVar.q, dVar.r, dVar.l, dVar.j, dVar.n, dVar.w, dVar.y, dVar.s, dVar.t, dVar.u, dVar.C, dVar.D);
            aj.a(aVar, dVar.v);
            aj.a(aVar, dVar.m);
            Notification a3 = eVar.a(dVar, aVar);
            if (dVar.m != null && (a2 = a(a3)) != null) {
                dVar.m.a(a2);
            }
            return a3;
        }

        @Override // android.support.v4.app.aj.l, android.support.v4.app.aj.h
        public Bundle a(Notification notification) {
            return aq.a(notification);
        }
    }

    /* compiled from: NotificationCompat.java */
    /* loaded from: classes.dex */
    static class p extends o {
        p() {
        }

        @Override // android.support.v4.app.aj.o, android.support.v4.app.aj.l, android.support.v4.app.aj.h
        public Notification a(d dVar, e eVar) {
            ar.a aVar = new ar.a(dVar.f232a, dVar.F, dVar.d(), dVar.c(), dVar.h, dVar.f, dVar.i, dVar.d, dVar.e, dVar.g, dVar.p, dVar.q, dVar.r, dVar.k, dVar.l, dVar.j, dVar.n, dVar.w, dVar.G, dVar.y, dVar.s, dVar.t, dVar.u, dVar.C, dVar.D);
            aj.a(aVar, dVar.v);
            aj.a(aVar, dVar.m);
            return eVar.a(dVar, aVar);
        }

        @Override // android.support.v4.app.aj.o, android.support.v4.app.aj.l, android.support.v4.app.aj.h
        public Bundle a(Notification notification) {
            return ar.a(notification);
        }
    }

    /* compiled from: NotificationCompat.java */
    /* loaded from: classes.dex */
    static class i extends p {
        i() {
        }

        @Override // android.support.v4.app.aj.p, android.support.v4.app.aj.o, android.support.v4.app.aj.l, android.support.v4.app.aj.h
        public Notification a(d dVar, e eVar) {
            ak.a aVar = new ak.a(dVar.f232a, dVar.F, dVar.d(), dVar.c(), dVar.h, dVar.f, dVar.i, dVar.d, dVar.e, dVar.g, dVar.p, dVar.q, dVar.r, dVar.k, dVar.l, dVar.j, dVar.n, dVar.w, dVar.G, dVar.y, dVar.s, dVar.t, dVar.u, dVar.C, dVar.D);
            aj.a(aVar, dVar.v);
            aj.a(aVar, dVar.m);
            Notification a2 = eVar.a(dVar, aVar);
            if (dVar.m != null) {
                dVar.m.a(a(a2));
            }
            return a2;
        }
    }

    /* compiled from: NotificationCompat.java */
    /* loaded from: classes.dex */
    static class j extends i {
        j() {
        }

        @Override // android.support.v4.app.aj.i, android.support.v4.app.aj.p, android.support.v4.app.aj.o, android.support.v4.app.aj.l, android.support.v4.app.aj.h
        public Notification a(d dVar, e eVar) {
            al.a aVar = new al.a(dVar.f232a, dVar.F, dVar.d(), dVar.c(), dVar.h, dVar.f, dVar.i, dVar.d, dVar.e, dVar.g, dVar.p, dVar.q, dVar.r, dVar.k, dVar.l, dVar.j, dVar.n, dVar.w, dVar.x, dVar.G, dVar.y, dVar.z, dVar.A, dVar.B, dVar.s, dVar.t, dVar.u, dVar.C, dVar.D, dVar.E);
            aj.a(aVar, dVar.v);
            aj.a(aVar, dVar.m);
            Notification a2 = eVar.a(dVar, aVar);
            if (dVar.m != null) {
                dVar.m.a(a(a2));
            }
            return a2;
        }
    }

    /* compiled from: NotificationCompat.java */
    /* loaded from: classes.dex */
    static class k extends j {
        k() {
        }

        @Override // android.support.v4.app.aj.j, android.support.v4.app.aj.i, android.support.v4.app.aj.p, android.support.v4.app.aj.o, android.support.v4.app.aj.l, android.support.v4.app.aj.h
        public Notification a(d dVar, e eVar) {
            am.a aVar = new am.a(dVar.f232a, dVar.F, dVar.b, dVar.c, dVar.h, dVar.f, dVar.i, dVar.d, dVar.e, dVar.g, dVar.p, dVar.q, dVar.r, dVar.k, dVar.l, dVar.j, dVar.n, dVar.w, dVar.x, dVar.G, dVar.y, dVar.z, dVar.A, dVar.B, dVar.s, dVar.t, dVar.u, dVar.o, dVar.C, dVar.D, dVar.E);
            aj.a(aVar, dVar.v);
            aj.b(aVar, dVar.m);
            Notification a2 = eVar.a(dVar, aVar);
            if (dVar.m != null) {
                dVar.m.a(a(a2));
            }
            return a2;
        }
    }

    static void a(ah ahVar, ArrayList<a> arrayList) {
        Iterator<a> it = arrayList.iterator();
        while (it.hasNext()) {
            ahVar.a(it.next());
        }
    }

    static void a(ai aiVar, q qVar) {
        if (qVar != null) {
            if (qVar instanceof c) {
                c cVar = (c) qVar;
                aq.a(aiVar, cVar.e, cVar.g, cVar.f, cVar.f231a);
            } else if (qVar instanceof f) {
                f fVar = (f) qVar;
                aq.a(aiVar, fVar.e, fVar.g, fVar.f, fVar.f233a);
            } else if (qVar instanceof b) {
                b bVar = (b) qVar;
                aq.a(aiVar, bVar.e, bVar.g, bVar.f, bVar.f230a, bVar.b, bVar.c);
            }
        }
    }

    static void b(ai aiVar, q qVar) {
        if (qVar != null) {
            if (qVar instanceof g) {
                g gVar = (g) qVar;
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                ArrayList arrayList5 = new ArrayList();
                for (g.a aVar : gVar.c) {
                    arrayList.add(aVar.a());
                    arrayList2.add(Long.valueOf(aVar.b()));
                    arrayList3.add(aVar.c());
                    arrayList4.add(aVar.d());
                    arrayList5.add(aVar.e());
                }
                am.a(aiVar, gVar.f234a, gVar.b, arrayList, arrayList2, arrayList3, arrayList4, arrayList5);
                return;
            }
            a(aiVar, qVar);
        }
    }

    static {
        if (android.support.v4.os.c.a()) {
            f228a = new k();
        } else if (Build.VERSION.SDK_INT >= 21) {
            f228a = new j();
        } else if (Build.VERSION.SDK_INT >= 20) {
            f228a = new i();
        } else if (Build.VERSION.SDK_INT >= 19) {
            f228a = new p();
        } else if (Build.VERSION.SDK_INT >= 16) {
            f228a = new o();
        } else if (Build.VERSION.SDK_INT >= 14) {
            f228a = new n();
        } else if (Build.VERSION.SDK_INT >= 11) {
            f228a = new m();
        } else {
            f228a = new l();
        }
    }

    /* compiled from: NotificationCompat.java */
    /* loaded from: classes.dex */
    public static class d {
        Notification B;
        RemoteViews C;
        RemoteViews D;
        RemoteViews E;
        public ArrayList<String> G;
        @RestrictTo

        /* renamed from: a  reason: collision with root package name */
        public Context f232a;
        @RestrictTo
        public CharSequence b;
        @RestrictTo
        public CharSequence c;
        PendingIntent d;
        PendingIntent e;
        RemoteViews f;
        @RestrictTo
        public Bitmap g;
        @RestrictTo
        public CharSequence h;
        @RestrictTo
        public int i;
        int j;
        @RestrictTo
        public boolean l;
        @RestrictTo
        public q m;
        @RestrictTo
        public CharSequence n;
        @RestrictTo
        public CharSequence[] o;
        int p;
        int q;
        boolean r;
        String s;
        boolean t;
        String u;
        String x;
        Bundle y;
        boolean k = true;
        @RestrictTo
        public ArrayList<a> v = new ArrayList<>();
        boolean w = false;
        int z = 0;
        int A = 0;
        @RestrictTo
        public Notification F = new Notification();

        public d(Context context) {
            this.f232a = context;
            this.F.when = System.currentTimeMillis();
            this.F.audioStreamType = -1;
            this.j = 0;
            this.G = new ArrayList<>();
        }

        public d a(long j) {
            this.F.when = j;
            return this;
        }

        public d a(int i) {
            this.F.icon = i;
            return this;
        }

        public d a(CharSequence charSequence) {
            this.b = d(charSequence);
            return this;
        }

        public d b(CharSequence charSequence) {
            this.c = d(charSequence);
            return this;
        }

        public d a(int i, int i2, boolean z) {
            this.p = i;
            this.q = i2;
            this.r = z;
            return this;
        }

        public d a(PendingIntent pendingIntent) {
            this.d = pendingIntent;
            return this;
        }

        public d b(PendingIntent pendingIntent) {
            this.F.deleteIntent = pendingIntent;
            return this;
        }

        public d c(CharSequence charSequence) {
            this.F.tickerText = d(charSequence);
            return this;
        }

        public d a(Bitmap bitmap) {
            this.g = bitmap;
            return this;
        }

        public d a(Uri uri) {
            this.F.sound = uri;
            this.F.audioStreamType = -1;
            return this;
        }

        public d a(boolean z) {
            a(2, z);
            return this;
        }

        public d b(boolean z) {
            a(8, z);
            return this;
        }

        public d c(boolean z) {
            a(16, z);
            return this;
        }

        public d d(boolean z) {
            this.w = z;
            return this;
        }

        public d b(int i) {
            this.F.defaults = i;
            if ((i & 4) != 0) {
                this.F.flags |= 1;
            }
            return this;
        }

        private void a(int i, boolean z) {
            if (z) {
                this.F.flags |= i;
                return;
            }
            this.F.flags &= i ^ (-1);
        }

        public d a(String str) {
            this.s = str;
            return this;
        }

        public d a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this.v.add(new a(i, charSequence, pendingIntent));
            return this;
        }

        public d a(q qVar) {
            if (this.m != qVar) {
                this.m = qVar;
                if (this.m != null) {
                    this.m.a(this);
                }
            }
            return this;
        }

        public d c(int i) {
            this.z = i;
            return this;
        }

        public Notification a() {
            return aj.f228a.a(this, b());
        }

        @RestrictTo
        protected e b() {
            return new e();
        }

        protected static CharSequence d(CharSequence charSequence) {
            if (charSequence != null && charSequence.length() > 5120) {
                return charSequence.subSequence(0, 5120);
            }
            return charSequence;
        }

        @RestrictTo
        protected CharSequence c() {
            return this.c;
        }

        @RestrictTo
        protected CharSequence d() {
            return this.b;
        }
    }

    /* compiled from: NotificationCompat.java */
    /* loaded from: classes.dex */
    public static abstract class q {
        d d;
        CharSequence e;
        CharSequence f;
        boolean g = false;

        public void a(d dVar) {
            if (this.d != dVar) {
                this.d = dVar;
                if (this.d != null) {
                    this.d.a(this);
                }
            }
        }

        @RestrictTo
        public void a(Bundle bundle) {
        }
    }

    /* compiled from: NotificationCompat.java */
    /* loaded from: classes.dex */
    public static class b extends q {

        /* renamed from: a  reason: collision with root package name */
        Bitmap f230a;
        Bitmap b;
        boolean c;

        public b a(CharSequence charSequence) {
            this.e = d.d(charSequence);
            return this;
        }

        public b b(CharSequence charSequence) {
            this.f = d.d(charSequence);
            this.g = true;
            return this;
        }

        public b a(Bitmap bitmap) {
            this.f230a = bitmap;
            return this;
        }
    }

    /* compiled from: NotificationCompat.java */
    /* loaded from: classes.dex */
    public static class c extends q {

        /* renamed from: a  reason: collision with root package name */
        CharSequence f231a;

        public c a(CharSequence charSequence) {
            this.f231a = d.d(charSequence);
            return this;
        }
    }

    /* compiled from: NotificationCompat.java */
    /* loaded from: classes.dex */
    public static class g extends q {

        /* renamed from: a  reason: collision with root package name */
        CharSequence f234a;
        CharSequence b;
        List<a> c = new ArrayList();

        g() {
        }

        @Override // android.support.v4.app.aj.q
        public void a(Bundle bundle) {
            super.a(bundle);
            if (this.f234a != null) {
                bundle.putCharSequence("android.selfDisplayName", this.f234a);
            }
            if (this.b != null) {
                bundle.putCharSequence("android.conversationTitle", this.b);
            }
            if (!this.c.isEmpty()) {
                bundle.putParcelableArray("android.messages", a.a(this.c));
            }
        }

        /* compiled from: NotificationCompat.java */
        /* loaded from: classes.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private final CharSequence f235a;
            private final long b;
            private final CharSequence c;
            private String d;
            private Uri e;

            public CharSequence a() {
                return this.f235a;
            }

            public long b() {
                return this.b;
            }

            public CharSequence c() {
                return this.c;
            }

            public String d() {
                return this.d;
            }

            public Uri e() {
                return this.e;
            }

            private Bundle f() {
                Bundle bundle = new Bundle();
                if (this.f235a != null) {
                    bundle.putCharSequence(CommonConstants.RESPONSE_TEXT, this.f235a);
                }
                bundle.putLong("time", this.b);
                if (this.c != null) {
                    bundle.putCharSequence("sender", this.c);
                }
                if (this.d != null) {
                    bundle.putString("type", this.d);
                }
                if (this.e != null) {
                    bundle.putParcelable(ShareConstants.MEDIA_URI, this.e);
                }
                return bundle;
            }

            static Bundle[] a(List<a> list) {
                Bundle[] bundleArr = new Bundle[list.size()];
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    bundleArr[i] = list.get(i).f();
                }
                return bundleArr;
            }
        }
    }

    /* compiled from: NotificationCompat.java */
    /* loaded from: classes.dex */
    public static class f extends q {

        /* renamed from: a  reason: collision with root package name */
        ArrayList<CharSequence> f233a = new ArrayList<>();

        public f a(CharSequence charSequence) {
            this.f233a.add(d.d(charSequence));
            return this;
        }
    }

    /* compiled from: NotificationCompat.java */
    /* loaded from: classes.dex */
    public static class a extends an.a {
        @RestrictTo
        public static final an.a.InterfaceC0011a e = new an.a.InterfaceC0011a() { // from class: android.support.v4.app.aj.a.1
        };

        /* renamed from: a  reason: collision with root package name */
        final Bundle f229a;
        public int b;
        public CharSequence c;
        public PendingIntent d;
        private final au[] f;
        private boolean g;

        public a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i, charSequence, pendingIntent, new Bundle(), null, true);
        }

        a(int i, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, au[] auVarArr, boolean z) {
            this.b = i;
            this.c = d.d(charSequence);
            this.d = pendingIntent;
            this.f229a = bundle == null ? new Bundle() : bundle;
            this.f = auVarArr;
            this.g = z;
        }

        @Override // android.support.v4.app.an.a
        public int a() {
            return this.b;
        }

        @Override // android.support.v4.app.an.a
        public CharSequence b() {
            return this.c;
        }

        @Override // android.support.v4.app.an.a
        public PendingIntent c() {
            return this.d;
        }

        @Override // android.support.v4.app.an.a
        public Bundle d() {
            return this.f229a;
        }

        @Override // android.support.v4.app.an.a
        public boolean e() {
            return this.g;
        }

        @Override // android.support.v4.app.an.a
        /* renamed from: f */
        public au[] g() {
            return this.f;
        }
    }

    public static Bundle a(Notification notification) {
        return f228a.a(notification);
    }
}

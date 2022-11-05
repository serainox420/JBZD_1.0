package android.support.customtabs;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.app.n;
import java.util.ArrayList;
/* compiled from: CustomTabsIntent.java */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final Intent f12a;
    public final Bundle b;

    public void a(Context context, Uri uri) {
        this.f12a.setData(uri);
        android.support.v4.content.b.a(context, this.f12a, this.b);
    }

    private c(Intent intent, Bundle bundle) {
        this.f12a = intent;
        this.b = bundle;
    }

    /* compiled from: CustomTabsIntent.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Intent f13a;
        private ArrayList<Bundle> b;
        private Bundle c;
        private ArrayList<Bundle> d;
        private boolean e;

        public a() {
            this(null);
        }

        public a(e eVar) {
            IBinder iBinder = null;
            this.f13a = new Intent("android.intent.action.VIEW");
            this.b = null;
            this.c = null;
            this.d = null;
            this.e = true;
            if (eVar != null) {
                this.f13a.setPackage(eVar.b().getPackageName());
            }
            Bundle bundle = new Bundle();
            n.a(bundle, "android.support.customtabs.extra.SESSION", eVar != null ? eVar.a() : iBinder);
            this.f13a.putExtras(bundle);
        }

        public c a() {
            if (this.b != null) {
                this.f13a.putParcelableArrayListExtra("android.support.customtabs.extra.MENU_ITEMS", this.b);
            }
            if (this.d != null) {
                this.f13a.putParcelableArrayListExtra("android.support.customtabs.extra.TOOLBAR_ITEMS", this.d);
            }
            this.f13a.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.e);
            return new c(this.f13a, this.c);
        }
    }
}

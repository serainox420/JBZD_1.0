package com.apprupt.sdk;

import android.app.Activity;
import android.app.ListActivity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.webkit.ValueCallback;
import com.apprupt.sdk.CvBaseActivity;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public class CvListActivity extends ListActivity implements CvBaseActivity {
    private boolean e = false;

    /* renamed from: a  reason: collision with root package name */
    protected ValueCallback<Uri[]> f1852a = null;
    protected ValueCallback<Uri> b = null;
    protected String c = null;
    protected final ArrayList<CvBaseActivity.PermissionListener> d = new ArrayList<>();

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        CvSDK.a((Activity) this);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        CvSDK.b((Activity) this);
        if (this.e) {
            CvSDK.c();
        }
        this.e = true;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        CvSDK.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onActivityResult(int i, int i2, Intent intent) {
        Uri[] uriArr;
        ValueCallback<Uri> a2 = a();
        ValueCallback<Uri[]> b = b();
        if (i != 1 || (a2 == null && b == null)) {
            super.onActivityResult(i, i2, intent);
            return;
        }
        String c = c();
        if (i2 == -1) {
            if (intent.getDataString() != null) {
                uriArr = new Uri[]{intent.getData()};
            } else if (c != null) {
                uriArr = new Uri[]{Uri.parse(c)};
            }
            if (b == null) {
                b.onReceiveValue(uriArr);
                b(null);
            }
            if (a2 == null) {
                for (Uri uri : uriArr) {
                    a2.onReceiveValue(uri);
                }
                a((ValueCallback<Uri>) null);
                return;
            }
            return;
        }
        uriArr = null;
        if (b == null) {
        }
        if (a2 == null) {
        }
    }

    @Override // com.apprupt.sdk.CvBaseActivity
    public void a(ValueCallback<Uri> valueCallback) {
        this.b = valueCallback;
    }

    public ValueCallback<Uri> a() {
        return this.b;
    }

    @Override // com.apprupt.sdk.CvBaseActivity
    public void b(ValueCallback<Uri[]> valueCallback) {
        this.f1852a = valueCallback;
    }

    public ValueCallback<Uri[]> b() {
        return this.f1852a;
    }

    @Override // com.apprupt.sdk.CvBaseActivity
    public void a(String str) {
        this.c = str;
    }

    public String c() {
        return this.c;
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        ArrayList arrayList = new ArrayList();
        Iterator<CvBaseActivity.PermissionListener> it = this.d.iterator();
        while (it.hasNext()) {
            CvBaseActivity.PermissionListener next = it.next();
            if (next.a(i, strArr, iArr)) {
                arrayList.add(next);
            }
        }
        if (arrayList.size() > 0) {
            this.d.removeAll(arrayList);
        }
    }
}

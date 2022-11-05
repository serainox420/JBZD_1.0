package com.adcolony.sdk;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.drive.DriveFile;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class bj {

    /* renamed from: a  reason: collision with root package name */
    static cp f1200a = null;
    AdColonyPubServicesOverlayActivity b = null;
    bu c = new bu();

    abstract boolean a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized cp b() {
        cp cpVar;
        synchronized (bj.class) {
            if (f1200a == null) {
                f1200a = new cp();
            }
            cpVar = f1200a;
        }
        return cpVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AdColonyPubServicesOverlayActivity adColonyPubServicesOverlayActivity) {
        this.b = adColonyPubServicesOverlayActivity;
        bz.aK().aB().b();
        if (adColonyPubServicesOverlayActivity == null) {
            bz.aK().az().b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdColonyPubServicesOverlayActivity c() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Boolean f() {
        return Boolean.valueOf(bz.aK().am());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.bj.1
            @Override // com.adcolony.sdk.bv
            public void a() {
                bj.this.b.g();
                bj.this.a((AdColonyPubServicesOverlayActivity) null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e() {
        return co.f() && !f().booleanValue() && this.b != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, boolean z, boolean z2) {
        if (co.f() && !f().booleanValue() && !e()) {
            a(str, z, z2, -2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final String str, final boolean z, final boolean z2, final int i, final String str2) {
        if (bz.aK().D()) {
            this.c.a(new bv() { // from class: com.adcolony.sdk.bj.2
                @Override // com.adcolony.sdk.bv
                public void a() {
                    if (co.f() && !bj.this.f().booleanValue()) {
                        if (bj.this.a()) {
                            String k = bz.aK().k(str);
                            Intent intent = new Intent("android.intent.action.VIEW");
                            intent.setData(Uri.parse(k));
                            if (!bj.this.e()) {
                                bz.aK().l().startActivity(intent);
                                return;
                            }
                            return;
                        }
                        Intent intent2 = new Intent(bz.aK().l(), AdColonyPubServicesOverlayActivity.class);
                        intent2.addFlags(67108864);
                        intent2.addFlags(DriveFile.MODE_WRITE_ONLY);
                        intent2.addFlags(DriveFile.MODE_READ_ONLY);
                        Bundle bundle = new Bundle();
                        bundle.putString("catalogPage", str);
                        bundle.putBoolean("close", z);
                        bundle.putBoolean("openedFromToast", z2);
                        bundle.putInt("display_type", i);
                        bundle.putString("source_id", str2);
                        intent2.putExtras(bundle);
                        if (!bj.this.e()) {
                            bz.aK().l().startActivity(intent2);
                        }
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final int i, final List<Object> list, final boolean z) {
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.bj.3
            @Override // com.adcolony.sdk.bv
            public void a() {
                List list2;
                if (list == null) {
                    list2 = new ArrayList();
                } else {
                    list2 = list;
                }
                if (cp.b().e()) {
                    if (cp.b().c() != null) {
                        cp.b().c().injectCallbackResult(i, co.a((List<Object>) list2));
                    }
                } else if (bz.aK().az().j()) {
                    bz.aK().az().a(i, co.a((List<Object>) list2));
                }
                if (z) {
                    bj.this.d();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, List<Object> list) {
        a(i, list, false);
    }
}

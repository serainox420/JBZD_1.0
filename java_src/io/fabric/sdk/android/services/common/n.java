package io.fabric.sdk.android.services.common;

import android.content.Context;
/* compiled from: InstallerPackageNameProvider.java */
/* loaded from: classes3.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private final io.fabric.sdk.android.services.a.d<String> f5675a = new io.fabric.sdk.android.services.a.d<String>() { // from class: io.fabric.sdk.android.services.common.n.1
        @Override // io.fabric.sdk.android.services.a.d
        /* renamed from: a */
        public String load(Context context) throws Exception {
            String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
            return installerPackageName == null ? "" : installerPackageName;
        }
    };
    private final io.fabric.sdk.android.services.a.b<String> b = new io.fabric.sdk.android.services.a.b<>();

    public String a(Context context) {
        try {
            String a2 = this.b.a(context, this.f5675a);
            if (!"".equals(a2)) {
                return a2;
            }
            return null;
        } catch (Exception e) {
            io.fabric.sdk.android.c.h().e("Fabric", "Failed to determine installer package name", e);
            return null;
        }
    }
}

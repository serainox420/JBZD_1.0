package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.support.annotation.Keep;
import android.util.Base64;
import android.util.Log;
import com.google.firebase.iid.g;
import java.io.IOException;
import java.security.KeyPair;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
/* loaded from: classes2.dex */
public class FirebaseInstanceId {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, FirebaseInstanceId> f3578a = new android.support.v4.f.a();
    private static d b;
    private final com.google.firebase.a c;
    private final c d;
    private final String e = b();

    private FirebaseInstanceId(com.google.firebase.a aVar, c cVar) {
        this.c = aVar;
        this.d = cVar;
        if (this.e == null) {
            throw new IllegalStateException("IID failing to initialize, FirebaseApp is missing project ID");
        }
        FirebaseInstanceIdService.zza(this.c.a(), this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(Context context) {
        return a(context, context.getPackageName());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            Log.w("FirebaseInstanceId", new StringBuilder(String.valueOf(valueOf).length() + 23).append("Failed to find package ").append(valueOf).toString());
            return 0;
        }
    }

    public static FirebaseInstanceId a() {
        return getInstance(com.google.firebase.a.d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(KeyPair keyPair) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(keyPair.getPublic().getEncoded());
            digest[0] = (byte) (((digest[0] & 15) + 112) & 255);
            return Base64.encodeToString(digest, 0, 8, 11);
        } catch (NoSuchAlgorithmException e) {
            Log.w("FirebaseInstanceId", "Unexpected error, device missing required alghorithms");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(byte[] bArr) {
        return Base64.encodeToString(bArr, 11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context, g gVar) {
        gVar.c();
        Intent intent = new Intent();
        intent.putExtra("CMD", "RST");
        f.a().a(context, intent);
    }

    private void a(Bundle bundle) {
        bundle.putString("gmp_app_id", this.c.c().b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            Log.w("FirebaseInstanceId", new StringBuilder(String.valueOf(valueOf).length() + 38).append("Never happens: can't find own package ").append(valueOf).toString());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(Context context) {
        Intent intent = new Intent();
        intent.putExtra("CMD", "SYNC");
        f.a().a(context, intent);
    }

    @Keep
    public static synchronized FirebaseInstanceId getInstance(com.google.firebase.a aVar) {
        FirebaseInstanceId firebaseInstanceId;
        synchronized (FirebaseInstanceId.class) {
            firebaseInstanceId = f3578a.get(aVar.c().b());
            if (firebaseInstanceId == null) {
                c a2 = c.a(aVar.a(), null);
                if (b == null) {
                    b = new d(a2.c());
                }
                firebaseInstanceId = new FirebaseInstanceId(aVar, a2);
                f3578a.put(aVar.c().b(), firebaseInstanceId);
            }
        }
        return firebaseInstanceId;
    }

    public String a(String str, String str2) throws IOException {
        Bundle bundle = new Bundle();
        a(bundle);
        return this.d.b(str, str2, bundle);
    }

    public String a(String str, String str2, Bundle bundle) throws IOException {
        a(bundle);
        return this.d.c(str, str2, bundle);
    }

    public void a(String str) {
        b.a(str);
        FirebaseInstanceIdService.zzcs(this.c.a());
    }

    String b() {
        String c = this.c.c().c();
        if (c != null) {
            return c;
        }
        String b2 = this.c.c().b();
        if (!b2.startsWith("1:")) {
            return b2;
        }
        String[] split = b2.split(":");
        if (split.length < 2) {
            return null;
        }
        String str = split[1];
        if (!str.isEmpty()) {
            return str;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(String str) throws IOException {
        g.a e = e();
        if (e == null || e.b(c.e)) {
            throw new IOException("token not available");
        }
        Bundle bundle = new Bundle();
        String valueOf = String.valueOf("/topics/");
        String valueOf2 = String.valueOf(str);
        bundle.putString("gcm.topic", valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        String str2 = e.f3591a;
        String valueOf3 = String.valueOf("/topics/");
        String valueOf4 = String.valueOf(str);
        a(str2, valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3), bundle);
    }

    public String c() {
        return a(this.d.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(String str) throws IOException {
        g.a e = e();
        if (e == null || e.b(c.e)) {
            throw new IOException("token not available");
        }
        Bundle bundle = new Bundle();
        String valueOf = String.valueOf("/topics/");
        String valueOf2 = String.valueOf(str);
        bundle.putString("gcm.topic", valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        c cVar = this.d;
        String str2 = e.f3591a;
        String valueOf3 = String.valueOf("/topics/");
        String valueOf4 = String.valueOf(str);
        cVar.a(str2, valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3), bundle);
    }

    public String d() {
        g.a e = e();
        if (e == null || e.b(c.e)) {
            FirebaseInstanceIdService.zzcs(this.c.a());
        }
        if (e != null) {
            return e.f3591a;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g.a e() {
        return this.d.c().a("", this.e, "*");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String f() throws IOException {
        return a(this.e, "*");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d g() {
        return b;
    }
}

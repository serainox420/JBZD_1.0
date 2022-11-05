package com.google.firebase.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.util.zzx;
import java.io.File;
import java.io.IOException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    SharedPreferences f3590a;
    Context b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a {
        private static final long d = TimeUnit.DAYS.toMillis(7);

        /* renamed from: a  reason: collision with root package name */
        final String f3591a;
        final String b;
        final long c;

        private a(String str, String str2, long j) {
            this.f3591a = str;
            this.b = str2;
            this.c = j;
        }

        static a a(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (!str.startsWith("{")) {
                return new a(str, null, 0L);
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                return new a(jSONObject.getString("token"), jSONObject.getString("appVersion"), jSONObject.getLong("timestamp"));
            } catch (JSONException e) {
                String valueOf = String.valueOf(e);
                Log.w("InstanceID/Store", new StringBuilder(String.valueOf(valueOf).length() + 23).append("Failed to parse token: ").append(valueOf).toString());
                return null;
            }
        }

        static String a(String str, String str2, long j) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("token", str);
                jSONObject.put("appVersion", str2);
                jSONObject.put("timestamp", j);
                return jSONObject.toString();
            } catch (JSONException e) {
                String valueOf = String.valueOf(e);
                Log.w("InstanceID/Store", new StringBuilder(String.valueOf(valueOf).length() + 24).append("Failed to encode token: ").append(valueOf).toString());
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean b(String str) {
            return System.currentTimeMillis() > this.c + d || !str.equals(this.b);
        }
    }

    public g(Context context) {
        this(context, "com.google.android.gms.appid");
    }

    public g(Context context, String str) {
        this.b = context;
        this.f3590a = context.getSharedPreferences(str, 0);
        String valueOf = String.valueOf(str);
        String valueOf2 = String.valueOf("-no-backup");
        e(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
    }

    private String a(String str, String str2) {
        String valueOf = String.valueOf("|S|");
        return new StringBuilder(String.valueOf(str).length() + String.valueOf(valueOf).length() + String.valueOf(str2).length()).append(str).append(valueOf).append(str2).toString();
    }

    private String c(String str, String str2, String str3) {
        String valueOf = String.valueOf("|T|");
        return new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(valueOf).length() + String.valueOf(str2).length() + String.valueOf(str3).length()).append(str).append(valueOf).append(str2).append("|").append(str3).toString();
    }

    private void e(String str) {
        File file = new File(zzx.getNoBackupFilesDir(this.b), str);
        if (file.exists()) {
            return;
        }
        try {
            if (!file.createNewFile() || b()) {
                return;
            }
            Log.i("InstanceID/Store", "App restored, clearing state");
            FirebaseInstanceId.a(this.b, this);
        } catch (IOException e) {
            if (!Log.isLoggable("InstanceID/Store", 3)) {
                return;
            }
            String valueOf = String.valueOf(e.getMessage());
            Log.d("InstanceID/Store", valueOf.length() != 0 ? "Error creating file in no backup dir: ".concat(valueOf) : new String("Error creating file in no backup dir: "));
        }
    }

    private void f(String str) {
        SharedPreferences.Editor edit = this.f3590a.edit();
        for (String str2 : this.f3590a.getAll().keySet()) {
            if (str2.startsWith(str)) {
                edit.remove(str2);
            }
        }
        edit.commit();
    }

    public SharedPreferences a() {
        return this.f3590a;
    }

    public synchronized a a(String str, String str2, String str3) {
        return a.a(this.f3590a.getString(c(str, str2, str3), null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized KeyPair a(String str) {
        KeyPair a2;
        a2 = com.google.firebase.iid.a.a();
        long currentTimeMillis = System.currentTimeMillis();
        SharedPreferences.Editor edit = this.f3590a.edit();
        edit.putString(a(str, "|P|"), FirebaseInstanceId.a(a2.getPublic().getEncoded()));
        edit.putString(a(str, "|K|"), FirebaseInstanceId.a(a2.getPrivate().getEncoded()));
        edit.putString(a(str, "cre"), Long.toString(currentTimeMillis));
        edit.commit();
        return a2;
    }

    public synchronized void a(String str, String str2, String str3, String str4, String str5) {
        String a2 = a.a(str4, str5, System.currentTimeMillis());
        if (a2 != null) {
            SharedPreferences.Editor edit = this.f3590a.edit();
            edit.putString(c(str, str2, str3), a2);
            edit.commit();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void b(String str) {
        f(String.valueOf(str).concat("|"));
    }

    public synchronized void b(String str, String str2, String str3) {
        String c = c(str, str2, str3);
        SharedPreferences.Editor edit = this.f3590a.edit();
        edit.remove(c);
        edit.commit();
    }

    public synchronized boolean b() {
        return this.f3590a.getAll().isEmpty();
    }

    public synchronized void c() {
        this.f3590a.edit().clear().commit();
    }

    public synchronized void c(String str) {
        f(String.valueOf(str).concat("|T|"));
    }

    public synchronized KeyPair d(String str) {
        KeyPair keyPair;
        String string = this.f3590a.getString(a(str, "|P|"), null);
        String string2 = this.f3590a.getString(a(str, "|K|"), null);
        if (string == null || string2 == null) {
            keyPair = null;
        } else {
            try {
                byte[] decode = Base64.decode(string, 8);
                byte[] decode2 = Base64.decode(string2, 8);
                KeyFactory keyFactory = KeyFactory.getInstance("RSA");
                keyPair = new KeyPair(keyFactory.generatePublic(new X509EncodedKeySpec(decode)), keyFactory.generatePrivate(new PKCS8EncodedKeySpec(decode2)));
            } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
                String valueOf = String.valueOf(e);
                Log.w("InstanceID/Store", new StringBuilder(String.valueOf(valueOf).length() + 19).append("Invalid key stored ").append(valueOf).toString());
                FirebaseInstanceId.a(this.b, this);
                keyPair = null;
            }
        }
        return keyPair;
    }
}

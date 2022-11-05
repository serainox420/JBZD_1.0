package io.fabric.sdk.android.services.settings;

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStream;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DefaultCachedSettingsIo.java */
/* loaded from: classes3.dex */
public class i implements g {

    /* renamed from: a  reason: collision with root package name */
    private final io.fabric.sdk.android.h f5717a;

    public i(io.fabric.sdk.android.h hVar) {
        this.f5717a = hVar;
    }

    @Override // io.fabric.sdk.android.services.settings.g
    public JSONObject a() {
        FileInputStream fileInputStream;
        JSONObject jSONObject;
        FileInputStream fileInputStream2 = 0;
        io.fabric.sdk.android.c.h().a("Fabric", "Reading cached settings...");
        try {
            try {
                File file = new File(new io.fabric.sdk.android.services.c.b(this.f5717a).a(), "com.crashlytics.settings.json");
                if (file.exists()) {
                    fileInputStream = new FileInputStream(file);
                    try {
                        jSONObject = new JSONObject(io.fabric.sdk.android.services.common.i.a((InputStream) fileInputStream));
                        fileInputStream2 = fileInputStream;
                    } catch (Exception e) {
                        e = e;
                        io.fabric.sdk.android.c.h().e("Fabric", "Failed to fetch cached settings", e);
                        io.fabric.sdk.android.services.common.i.a((Closeable) fileInputStream, "Error while closing settings cache file.");
                        return null;
                    }
                } else {
                    io.fabric.sdk.android.c.h().a("Fabric", "No cached settings found.");
                    jSONObject = null;
                }
                io.fabric.sdk.android.services.common.i.a((Closeable) fileInputStream2, "Error while closing settings cache file.");
                return jSONObject;
            } catch (Throwable th) {
                th = th;
                fileInputStream2 = "Fabric";
                io.fabric.sdk.android.services.common.i.a((Closeable) fileInputStream2, "Error while closing settings cache file.");
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            io.fabric.sdk.android.services.common.i.a((Closeable) fileInputStream2, "Error while closing settings cache file.");
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.io.Closeable, java.io.FileWriter] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v3 */
    @Override // io.fabric.sdk.android.services.settings.g
    public void a(long j, JSONObject jSONObject) {
        ?? r1;
        String str = "Fabric";
        io.fabric.sdk.android.c.h().a(str, "Writing settings to cache file...");
        if (jSONObject != null) {
            ?? r2 = null;
            try {
                try {
                    jSONObject.put("expires_at", j);
                    r1 = new FileWriter(new File(new io.fabric.sdk.android.services.c.b(this.f5717a).a(), "com.crashlytics.settings.json"));
                    try {
                        r1.write(jSONObject.toString());
                        r1.flush();
                        io.fabric.sdk.android.services.common.i.a((Closeable) r1, "Failed to close settings writer.");
                        str = r1;
                    } catch (Exception e) {
                        e = e;
                        io.fabric.sdk.android.c.h().e("Fabric", "Failed to cache settings", e);
                        io.fabric.sdk.android.services.common.i.a((Closeable) r1, "Failed to close settings writer.");
                        str = r1;
                    }
                } catch (Throwable th) {
                    th = th;
                    r2 = str;
                    io.fabric.sdk.android.services.common.i.a((Closeable) r2, "Failed to close settings writer.");
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                r1 = 0;
            } catch (Throwable th2) {
                th = th2;
                io.fabric.sdk.android.services.common.i.a((Closeable) r2, "Failed to close settings writer.");
                throw th;
            }
        }
    }
}

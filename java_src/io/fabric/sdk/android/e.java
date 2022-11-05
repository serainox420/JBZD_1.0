package io.fabric.sdk.android;

import android.os.SystemClock;
import android.text.TextUtils;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.Callable;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FabricKitsFinder.java */
/* loaded from: classes3.dex */
public class e implements Callable<Map<String, j>> {

    /* renamed from: a  reason: collision with root package name */
    final String f5647a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(String str) {
        this.f5647a = str;
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: a */
    public Map<String, j> call() throws Exception {
        j a2;
        HashMap hashMap = new HashMap();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        ZipFile b = b();
        Enumeration<? extends ZipEntry> entries = b.entries();
        int i = 0;
        while (entries.hasMoreElements()) {
            int i2 = i + 1;
            ZipEntry nextElement = entries.nextElement();
            if (nextElement.getName().startsWith("fabric/") && nextElement.getName().length() > "fabric/".length() && (a2 = a(nextElement, b)) != null) {
                hashMap.put(a2.a(), a2);
                c.h().b("Fabric", String.format("Found kit:[%s] version:[%s]", a2.a(), a2.b()));
            }
            i = i2;
        }
        if (b != null) {
            try {
                b.close();
            } catch (IOException e) {
            }
        }
        c.h().b("Fabric", "finish scanning in " + (SystemClock.elapsedRealtime() - elapsedRealtime) + " reading:" + i);
        return hashMap;
    }

    private j a(ZipEntry zipEntry, ZipFile zipFile) {
        InputStream inputStream;
        try {
            try {
                inputStream = zipFile.getInputStream(zipEntry);
                try {
                    Properties properties = new Properties();
                    properties.load(inputStream);
                    String property = properties.getProperty("fabric-identifier");
                    String property2 = properties.getProperty("fabric-version");
                    String property3 = properties.getProperty("fabric-build-type");
                    if (TextUtils.isEmpty(property) || TextUtils.isEmpty(property2)) {
                        throw new IllegalStateException("Invalid format of fabric file," + zipEntry.getName());
                    }
                    j jVar = new j(property, property2, property3);
                    io.fabric.sdk.android.services.common.i.a((Closeable) inputStream);
                    return jVar;
                } catch (IOException e) {
                    e = e;
                    c.h().e("Fabric", "Error when parsing fabric properties " + zipEntry.getName(), e);
                    io.fabric.sdk.android.services.common.i.a((Closeable) inputStream);
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                io.fabric.sdk.android.services.common.i.a((Closeable) null);
                throw th;
            }
        } catch (IOException e2) {
            e = e2;
            inputStream = null;
        } catch (Throwable th2) {
            th = th2;
            io.fabric.sdk.android.services.common.i.a((Closeable) null);
            throw th;
        }
    }

    protected ZipFile b() throws IOException {
        return new ZipFile(this.f5647a);
    }
}

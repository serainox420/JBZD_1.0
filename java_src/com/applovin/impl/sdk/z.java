package com.applovin.impl.sdk;

import android.content.Context;
import android.net.Uri;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdk;
import com.intentsoftware.addapptr.ad.NativeAd;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class z {

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinLogger f1672a;
    private final AppLovinSdkImpl b;
    private final String c = "FileManager";
    private final Object d = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(AppLovinSdk appLovinSdk) {
        this.b = (AppLovinSdkImpl) appLovinSdk;
        this.f1672a = appLovinSdk.getLogger();
    }

    long a(long j) {
        return j / 1048576;
    }

    public File a(String str, Context context, boolean z) {
        File file;
        File file2 = null;
        if (!di.isValidString(str)) {
            this.b.getLogger().d("FileManager", "Nothing to look up, skipping...");
        } else {
            this.f1672a.d("FileManager", "Looking up cached resource: " + str);
            if (a(context) || z) {
                if (str.contains(NativeAd.ICON_IMAGE_ASSET)) {
                    str = str.replace("/", io.fabric.sdk.android.services.b.b.ROLL_OVER_FILE_NAME_SEPARATOR).replace(".", io.fabric.sdk.android.services.b.b.ROLL_OVER_FILE_NAME_SEPARATOR);
                }
                synchronized (this.d) {
                    File b = b(context);
                    file = new File(b, str);
                    try {
                        b.mkdirs();
                    } catch (Exception e) {
                    }
                }
                file2 = file;
            }
        }
        return file2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a(Context context, String str) {
        return a(context, str, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a(Context context, String str, boolean z) {
        if (str == null || str.equals("")) {
            this.b.getLogger().d("FileManager", "Nothing to cache, skipping...");
            return null;
        } else if (!di.a(this.b, str)) {
            this.b.getLogger().d("FileManager", "Domain is not whitelisted, skipping precache for URL " + str);
            return null;
        } else {
            this.b.getLogger().d("FileManager", "Starting caching of resource " + str);
            String lastPathSegment = Uri.parse(str).getLastPathSegment();
            File a2 = a(lastPathSegment, context, false);
            if (a2 != null && a2.exists()) {
                return z ? Uri.fromFile(a2).toString() : lastPathSegment;
            } else if (!a(a2, str)) {
                return null;
            } else {
                return z ? Uri.fromFile(a2).toString() : lastPathSegment;
            }
        }
    }

    void a(long j, Context context) {
        long c = c();
        if (c == -1) {
            this.f1672a.d("FileManager", "Cache has no maximum size set; skipping drop...");
        } else if (a(j) <= c) {
            this.f1672a.d("FileManager", "Cache is present but under size limit; not dropping...");
        } else {
            this.f1672a.d("FileManager", "Cache has exceeded maximum size; dropping...");
            g(context);
            this.b.b().a("cache_drop_count");
        }
    }

    boolean a() {
        return ((Boolean) this.b.a(bx.an)).booleanValue();
    }

    protected boolean a(Context context) {
        if (n.a("android.permission.WRITE_EXTERNAL_STORAGE", context)) {
            return true;
        }
        if (n.c() && !((Boolean) this.b.a(bx.bk)).booleanValue()) {
            return true;
        }
        this.b.getLogger().w("FileManager", "Application lacks required WRITE_EXTERNAL_STORAGE manifest permission.");
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x004c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    boolean a(ByteArrayOutputStream byteArrayOutputStream, File file) {
        FileOutputStream fileOutputStream;
        boolean z;
        this.f1672a.d("FileManager", "Writing resource to filesystem: " + file.getName());
        synchronized (this.d) {
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    try {
                        byteArrayOutputStream.writeTo(fileOutputStream);
                        z = true;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (Exception e) {
                            }
                        }
                    } catch (IOException e2) {
                        e = e2;
                        this.f1672a.e("FileManager", "Unable to write data to file", e);
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (Exception e3) {
                                z = false;
                            }
                        }
                        z = false;
                        return z;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception e4) {
                        }
                    }
                    throw th;
                }
            } catch (IOException e5) {
                e = e5;
                fileOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
                if (fileOutputStream != null) {
                }
                throw th;
            }
        }
        return z;
    }

    boolean a(File file) {
        boolean z;
        this.f1672a.d("FileManager", "Removing file " + file.getName() + " from filesystem...");
        synchronized (this.d) {
            try {
                z = file.delete();
            } catch (Exception e) {
                this.f1672a.e("FileManager", "Failed to remove file " + file.getName() + " from filesystem!", e);
                z = false;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:147:0x01a5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x01a0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x019b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v24, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v30 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean a(File file, String str) {
        HttpURLConnection httpURLConnection;
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2;
        ?? r0;
        InputStream inputStream = null;
        this.f1672a.d("FileManager", "Starting caching of " + str + " into " + file.getAbsoluteFile());
        if (((Boolean) this.b.a(bx.aZ)).booleanValue() && !str.contains("https://")) {
            this.b.getLogger().w("FileManager", "Plaintext HTTP operation requested; upgrading to HTTPS due to universal SSL setting...");
            str = str.replace("http://", "https://");
        }
        InputStream inputStream2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str).openConnection();
                try {
                    try {
                        httpURLConnection2.setConnectTimeout(((Integer) this.b.a(bx.o)).intValue());
                        httpURLConnection2.setReadTimeout(((Integer) this.b.a(bx.q)).intValue());
                        httpURLConnection2.setDefaultUseCaches(true);
                        httpURLConnection2.setUseCaches(true);
                        httpURLConnection2.setAllowUserInteraction(false);
                        httpURLConnection2.setInstanceFollowRedirects(true);
                        int responseCode = httpURLConnection2.getResponseCode();
                        if (responseCode < 200 || responseCode >= 300) {
                            if (0 != 0) {
                                try {
                                    inputStream2.close();
                                } catch (Exception e) {
                                }
                            }
                            if (byteArrayOutputStream != null) {
                                try {
                                    byteArrayOutputStream.close();
                                } catch (Exception e2) {
                                }
                            }
                            if (httpURLConnection2 != null) {
                                try {
                                    httpURLConnection2.disconnect();
                                } catch (Exception e3) {
                                }
                            }
                            r0 = 0;
                        } else {
                            inputStream = httpURLConnection2.getInputStream();
                            byte[] bArr = new byte[1024];
                            while (true) {
                                int read = inputStream.read(bArr, 0, bArr.length);
                                if (read < 0) {
                                    break;
                                }
                                try {
                                    byteArrayOutputStream.write(bArr, 0, read);
                                } catch (Exception e4) {
                                    try {
                                        byteArrayOutputStream.close();
                                    } catch (Exception e5) {
                                    }
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (Exception e6) {
                                        }
                                    }
                                    if (byteArrayOutputStream != null) {
                                        try {
                                            byteArrayOutputStream.close();
                                        } catch (Exception e7) {
                                        }
                                    }
                                    if (httpURLConnection2 != null) {
                                        try {
                                            httpURLConnection2.disconnect();
                                        } catch (Exception e8) {
                                        }
                                    }
                                    r0 = 0;
                                }
                            }
                            if (!a(byteArrayOutputStream, file)) {
                                this.f1672a.e("FileManager", "Failed to cache \"" + str + "\" into \"" + file.getAbsolutePath() + "\"");
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (Exception e9) {
                                    }
                                }
                                if (byteArrayOutputStream != null) {
                                    try {
                                        byteArrayOutputStream.close();
                                    } catch (Exception e10) {
                                    }
                                }
                                if (httpURLConnection2 != null) {
                                    try {
                                        httpURLConnection2.disconnect();
                                    } catch (Exception e11) {
                                    }
                                }
                                r0 = 0;
                            } else {
                                this.f1672a.d("FileManager", "Caching completed for " + file);
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (Exception e12) {
                                    }
                                }
                                if (byteArrayOutputStream != null) {
                                    try {
                                        byteArrayOutputStream.close();
                                    } catch (Exception e13) {
                                    }
                                }
                                if (httpURLConnection2 != null) {
                                    try {
                                        httpURLConnection2.disconnect();
                                    } catch (Exception e14) {
                                    }
                                }
                                r0 = 1;
                            }
                        }
                        return r0;
                    } catch (IOException e15) {
                        byteArrayOutputStream2 = byteArrayOutputStream;
                        HttpURLConnection httpURLConnection3 = r0;
                        e = e15;
                        httpURLConnection = httpURLConnection3;
                        try {
                            this.f1672a.e("FileManager", "Failed to cache \"" + str + "\" into \"" + file.getAbsolutePath() + "\"", e);
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (Exception e16) {
                                }
                            }
                            if (byteArrayOutputStream2 != null) {
                                try {
                                    byteArrayOutputStream2.close();
                                } catch (Exception e17) {
                                }
                            }
                            if (httpURLConnection != null) {
                                try {
                                    httpURLConnection.disconnect();
                                } catch (Exception e18) {
                                }
                            }
                            return false;
                        } catch (Throwable th) {
                            th = th;
                            byteArrayOutputStream = byteArrayOutputStream2;
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (Exception e19) {
                                }
                            }
                            if (byteArrayOutputStream != null) {
                                try {
                                    byteArrayOutputStream.close();
                                } catch (Exception e20) {
                                }
                            }
                            if (httpURLConnection != null) {
                                try {
                                    httpURLConnection.disconnect();
                                } catch (Exception e21) {
                                }
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    httpURLConnection = httpURLConnection2;
                    th = th2;
                    if (inputStream != null) {
                    }
                    if (byteArrayOutputStream != null) {
                    }
                    if (httpURLConnection != null) {
                    }
                    throw th;
                }
            } catch (IOException e22) {
                e = e22;
                httpURLConnection = null;
                byteArrayOutputStream2 = byteArrayOutputStream;
            } catch (Throwable th3) {
                th = th3;
                httpURLConnection = null;
            }
        } catch (IOException e23) {
            e = e23;
            httpURLConnection = null;
            byteArrayOutputStream2 = null;
        } catch (Throwable th4) {
            th = th4;
            httpURLConnection = null;
            byteArrayOutputStream = null;
        }
    }

    public boolean a(String str, Context context) {
        boolean b;
        synchronized (this.d) {
            b = b(str, context, false);
        }
        return b;
    }

    long b() {
        long longValue = ((Long) this.b.a(bx.ao)).longValue();
        if (longValue < 0 || !a()) {
            return -1L;
        }
        return longValue;
    }

    File b(Context context) {
        return a(context) ? new File(context.getExternalFilesDir(null), "al") : new File(context.getCacheDir(), "al");
    }

    public boolean b(String str, Context context, boolean z) {
        boolean z2;
        synchronized (this.d) {
            File a2 = a(str, context, z);
            z2 = a2 != null && a2.exists() && !a2.isDirectory();
        }
        return z2;
    }

    int c() {
        int intValue = ((Integer) this.b.a(bx.ap)).intValue();
        if (intValue < 0 || !a()) {
            return -1;
        }
        return intValue;
    }

    public List c(Context context) {
        List asList;
        File b = b(context);
        if (b.isDirectory()) {
            synchronized (this.d) {
                asList = Arrays.asList(b.listFiles());
            }
            return asList;
        }
        return new ArrayList(0);
    }

    public boolean d(Context context) {
        if (((Boolean) this.b.a(bx.bl)).booleanValue()) {
            try {
                a(".nomedia", context, false);
                File file = new File(b(context), ".nomedia");
                if (file != null) {
                    if (file.exists()) {
                        return true;
                    }
                    this.b.getLogger().d("FileManager", "Dropping .nomedia file at " + file.getAbsolutePath());
                    return file.createNewFile();
                }
            } catch (Exception e) {
                this.b.getLogger().w("FileManager", "Failed to create nomedia file", e);
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(Context context) {
        try {
            if (a()) {
                if (this.b.isEnabled()) {
                    this.f1672a.e("FileManager", "Cannot empty file cache after SDK has completed initialization and ad loads are in progress!");
                } else {
                    this.f1672a.d("FileManager", "Compacting cache...");
                    synchronized (this.d) {
                        a(f(context), context);
                    }
                }
            }
        } catch (Exception e) {
            this.f1672a.e("FileManager", "Caught exception while compacting cache!", e);
            this.b.getSettingsManager().a(bx.an, false);
            this.b.getSettingsManager().b();
        }
    }

    long f(Context context) {
        long j = 0;
        long b = b();
        boolean z = b != -1;
        long seconds = TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis());
        synchronized (this.d) {
            for (File file : c(context)) {
                boolean z2 = false;
                if (z && seconds - TimeUnit.MILLISECONDS.toSeconds(file.lastModified()) > b) {
                    this.f1672a.d("FileManager", "File " + file.getName() + " has expired, removing...");
                    a(file);
                    z2 = true;
                }
                if (z2) {
                    this.b.b().a("cached_files_expired");
                } else {
                    j += file.length();
                }
            }
        }
        return j;
    }

    void g(Context context) {
        synchronized (this.d) {
            for (File file : c(context)) {
                a(file);
            }
        }
    }
}

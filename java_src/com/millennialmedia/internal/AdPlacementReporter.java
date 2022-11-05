package com.millennialmedia.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import android.text.TextUtils;
import com.facebook.internal.ServerProtocol;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.millennialmedia.internal.utils.HttpUtils;
import com.millennialmedia.internal.utils.IOUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class AdPlacementReporter {
    public static final int DISPLAY_TYPE_AUTO = 0;
    public static final int DISPLAY_TYPE_CLICK = 2;
    public static final int DISPLAY_TYPE_UNKNOWN = -1;
    public static final int DISPLAY_TYPE_VISIBILITY = 1;
    public static final String REPORTING_DIR = "/.reporting/";
    public static final String SITEID_FILENAME = "siteid";
    public static final String SSP_REPORTING_PATH = "/admax/sdk/report/2";
    public static final String SSP_SITE_ID_PARAMETER = "?dcn=";
    public static final int STATUS_AD_SERVED = 1;
    public static final int STATUS_NO_AD = -1;
    public static final int STATUS_NO_AD_ERROR = -3;
    public static final int STATUS_NO_AD_TIMEOUT = -2;
    private static volatile File c;
    private boolean g = false;
    private boolean h = false;
    private volatile JSONObject i;
    private volatile ElapsedTimer j;
    private volatile String k;
    private volatile String l;
    private volatile String m;
    private volatile String n;
    private volatile String o;
    private volatile String p;
    private volatile String q;
    private volatile PlayListItemReporter r;

    /* renamed from: a  reason: collision with root package name */
    private static final String f4050a = AdPlacementReporter.class.getSimpleName();
    private static final Object b = new Object();
    private static volatile ThreadUtils.ScheduledRunnable d = null;
    private static volatile UploadState e = UploadState.IDLE;
    private static volatile AtomicInteger f = new AtomicInteger(0);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public enum UploadState {
        IDLE,
        UPLOADING,
        ERROR_NETWORK_UNAVAILABLE,
        ERROR_SENDING_TO_SERVER
    }

    /* loaded from: classes3.dex */
    public static class ElapsedTimer {

        /* renamed from: a  reason: collision with root package name */
        private long f4052a;
        private long b;

        public void start() {
            this.f4052a = SystemClock.elapsedRealtime();
            this.b = 0L;
        }

        public void stop() {
            this.b = SystemClock.elapsedRealtime();
        }

        public long getElapsedTime() {
            if (this.b == 0) {
                stop();
            }
            return this.b - this.f4052a;
        }
    }

    /* loaded from: classes3.dex */
    public class PlayListItemReporter {
        private ElapsedTimer b = new ElapsedTimer();
        public String buyer;
        public String itemId;
        public String pru;
        public int status;

        PlayListItemReporter() {
            this.b.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class Uploader {
        Uploader() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static File[] e() {
            return AdPlacementReporter.c.listFiles(new FilenameFilter() { // from class: com.millennialmedia.internal.AdPlacementReporter.Uploader.1
                @Override // java.io.FilenameFilter
                public boolean accept(File file, String str) {
                    return str.endsWith(".json");
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void c(File[] fileArr) {
            int i = 0;
            for (File file : fileArr) {
                if (!file.delete()) {
                    MMLog.e(AdPlacementReporter.f4050a, "Failed to delete reporting file <" + file.getName() + ">");
                } else {
                    i--;
                }
            }
            AdPlacementReporter.f.addAndGet(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String d(File[] fileArr) {
            String str;
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            JSONArray jSONArray2 = new JSONArray();
            JSONArray jSONArray3 = new JSONArray();
            try {
                for (File file : fileArr) {
                    JSONObject a2 = a(file);
                    if (a2 != null) {
                        String name = file.getName();
                        if (name.startsWith("request_")) {
                            jSONArray.put(a2);
                        } else if (name.startsWith("display_")) {
                            jSONArray2.put(a2);
                        } else if (name.startsWith("click_")) {
                            jSONArray3.put(a2);
                        }
                    }
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put("req", jSONArray);
                }
                if (jSONArray2.length() > 0) {
                    jSONObject.put(ServerProtocol.DIALOG_PARAM_DISPLAY, jSONArray2);
                }
                if (jSONArray3.length() > 0) {
                    jSONObject.put("click", jSONArray3);
                }
                try {
                    str = jSONObject.toString(2);
                } catch (JSONException e) {
                    str = "Unable to format report with indentation";
                }
                if (MMLog.isDebugEnabled() && MMLog.isDebugEnabled()) {
                    MMLog.d(AdPlacementReporter.f4050a, "Generated report.\n" + str);
                }
                return jSONObject.toString();
            } catch (Exception e2) {
                MMLog.e(AdPlacementReporter.f4050a, "Error creating SSP reporting request", e2);
                return null;
            }
        }

        public static boolean saveToFile(File file, String str) {
            FileOutputStream fileOutputStream;
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    try {
                        IOUtils.write(fileOutputStream, str);
                        return IOUtils.closeStream(fileOutputStream);
                    } catch (Exception e) {
                        e = e;
                        MMLog.e(AdPlacementReporter.f4050a, "Error writing to file <" + file.getName() + ">", e);
                        return IOUtils.closeStream(fileOutputStream);
                    }
                } catch (Throwable th) {
                    th = th;
                    IOUtils.closeStream(fileOutputStream);
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                fileOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
                IOUtils.closeStream(fileOutputStream);
                throw th;
            }
        }

        public static String readFromFile(File file) {
            FileInputStream fileInputStream;
            Throwable th;
            String str = null;
            if (file.exists()) {
                try {
                    fileInputStream = new FileInputStream(file);
                    try {
                        try {
                            str = IOUtils.read(fileInputStream, "UTF-8");
                            IOUtils.closeStream(fileInputStream);
                        } catch (IOException e) {
                            e = e;
                            MMLog.e(AdPlacementReporter.f4050a, "Error opening file <" + file.getName() + ">", e);
                            IOUtils.closeStream(fileInputStream);
                            return str;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        IOUtils.closeStream(fileInputStream);
                        throw th;
                    }
                } catch (IOException e2) {
                    e = e2;
                    fileInputStream = null;
                } catch (Throwable th3) {
                    fileInputStream = null;
                    th = th3;
                    IOUtils.closeStream(fileInputStream);
                    throw th;
                }
            }
            return str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String f() {
            return readFromFile(new File(AdPlacementReporter.c, AdPlacementReporter.SITEID_FILENAME));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(String str) {
            saveToFile(new File(AdPlacementReporter.c, AdPlacementReporter.SITEID_FILENAME), str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static File b(String str, String str2, JSONObject jSONObject, boolean z) {
            if (str2 == null) {
                return null;
            }
            File file = new File(AdPlacementReporter.c, str + str2 + (z ? ".json" : ".tmp"));
            if (saveToFile(file, jSONObject.toString()) && z) {
                h();
                return file;
            }
            return file;
        }

        private static JSONObject a(File file) {
            if (file.exists()) {
                try {
                    return new JSONObject(readFromFile(file));
                } catch (JSONException e) {
                    MMLog.e(AdPlacementReporter.f4050a, "Error parsing reporting file <" + file.getName() + ">", e);
                }
            }
            return null;
        }

        private static void g() {
            File[] listFiles;
            int i = 0;
            for (File file : AdPlacementReporter.c.listFiles()) {
                if (file.getName().endsWith(".tmp")) {
                    if (b(file, false)) {
                        i++;
                    }
                } else if (file.getName().endsWith(".json")) {
                    i++;
                }
            }
            AdPlacementReporter.f.set(i);
        }

        private static void h() {
            synchronized (AdPlacementReporter.b) {
                int incrementAndGet = AdPlacementReporter.f.incrementAndGet();
                if (AdPlacementReporter.e == UploadState.IDLE && incrementAndGet >= Handshake.getReportingBatchSize()) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(AdPlacementReporter.f4050a, "Reporting batch size limit detected -- requesting upload");
                    }
                    a(UploadState.UPLOADING);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean b(File file, boolean z) {
            File file2 = new File(file.getPath().replace(".tmp", ".json"));
            if (file2.exists()) {
                MMLog.w(AdPlacementReporter.f4050a, "Target file already exists + <" + file2.getName() + ">");
            } else if (file.renameTo(file2)) {
                if (z) {
                    h();
                }
                return true;
            }
            MMLog.w(AdPlacementReporter.f4050a, "Unable to rename temp file <" + file.getName() + ">");
            if (!file.delete()) {
                MMLog.e(AdPlacementReporter.f4050a, "Error deleting temp file <" + file.getName() + ">");
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void i() {
            File unused = AdPlacementReporter.c = new File(EnvironmentUtils.getMillennialDir() + AdPlacementReporter.REPORTING_DIR);
            AdPlacementReporter.c.mkdirs();
            if (!AdPlacementReporter.c.isDirectory()) {
                MMLog.e(AdPlacementReporter.f4050a, "Unable to creating reporting directory");
                return;
            }
            g();
            ThreadUtils.ScheduledRunnable unused2 = AdPlacementReporter.d = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.millennialmedia.internal.AdPlacementReporter.Uploader.2
                @Override // java.lang.Runnable
                public void run() {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(AdPlacementReporter.f4050a, "Reporting startup -- requesting upload");
                    }
                    Uploader.a(UploadState.UPLOADING);
                }
            }, 5000L);
        }

        static void a(UploadState uploadState) {
            synchronized (AdPlacementReporter.b) {
                if (uploadState != AdPlacementReporter.e) {
                    UploadState unused = AdPlacementReporter.e = uploadState;
                    switch (AdPlacementReporter.e) {
                        case IDLE:
                            if (MMLog.isDebugEnabled()) {
                                MMLog.d(AdPlacementReporter.f4050a, "Reporting upload state set to IDLE");
                            }
                            ThreadUtils.ScheduledRunnable unused2 = AdPlacementReporter.d = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.millennialmedia.internal.AdPlacementReporter.Uploader.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (MMLog.isDebugEnabled()) {
                                        MMLog.d(AdPlacementReporter.f4050a, "Reporting batch frequency detected -- requesting upload");
                                    }
                                    Uploader.a(UploadState.UPLOADING);
                                }
                            }, Handshake.getReportingBatchFrequency());
                            return;
                        case UPLOADING:
                            if (MMLog.isDebugEnabled()) {
                                MMLog.d(AdPlacementReporter.f4050a, "Reporting upload state set to UPLOADING");
                            }
                            if (AdPlacementReporter.d != null) {
                                AdPlacementReporter.d.cancel();
                            }
                            a();
                            return;
                        case ERROR_NETWORK_UNAVAILABLE:
                            if (MMLog.isDebugEnabled()) {
                                MMLog.d(AdPlacementReporter.f4050a, "Reporting upload state set to ERROR_NETWORK_UNAVAILABLE");
                            }
                            EnvironmentUtils.getApplicationContext().registerReceiver(new BroadcastReceiver() { // from class: com.millennialmedia.internal.AdPlacementReporter.Uploader.4
                                @Override // android.content.BroadcastReceiver
                                public void onReceive(Context context, Intent intent) {
                                    if (EnvironmentUtils.isNetworkAvailable()) {
                                        if (MMLog.isDebugEnabled()) {
                                            MMLog.d(AdPlacementReporter.f4050a, "Reporting detected network is now available -- requesting upload");
                                        }
                                        EnvironmentUtils.getApplicationContext().unregisterReceiver(this);
                                        Uploader.a(UploadState.UPLOADING);
                                    }
                                }
                            }, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                            return;
                        case ERROR_SENDING_TO_SERVER:
                            if (MMLog.isDebugEnabled()) {
                                MMLog.d(AdPlacementReporter.f4050a, "Reporting upload state set to ERROR_SENDING_TO_SERVER");
                            }
                            ThreadUtils.ScheduledRunnable unused3 = AdPlacementReporter.d = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.millennialmedia.internal.AdPlacementReporter.Uploader.5
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (MMLog.isDebugEnabled()) {
                                        MMLog.d(AdPlacementReporter.f4050a, "Reporting batch frequency detected -- requesting upload");
                                    }
                                    Uploader.a(UploadState.UPLOADING);
                                }
                            }, Handshake.getReportingBatchFrequency());
                            return;
                        default:
                            return;
                    }
                }
            }
        }

        static void a() {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(AdPlacementReporter.f4050a, "Reporting is starting upload");
            }
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.AdPlacementReporter.Uploader.6
                @Override // java.lang.Runnable
                public void run() {
                    File[] e = Uploader.e();
                    UploadState uploadState = UploadState.IDLE;
                    String reportingBaseUrl = Handshake.getReportingBaseUrl();
                    if (reportingBaseUrl == null) {
                        MMLog.e(AdPlacementReporter.f4050a, "Unable to determine base url for request");
                        return;
                    }
                    String concat = reportingBaseUrl.concat(AdPlacementReporter.SSP_REPORTING_PATH);
                    if (e.length > 0) {
                        String f = Uploader.f();
                        if (TextUtils.isEmpty(f)) {
                            MMLog.e(AdPlacementReporter.f4050a, "Unable to upload report -- siteId has not been set");
                            uploadState = UploadState.ERROR_SENDING_TO_SERVER;
                        } else {
                            HttpUtils.Response contentFromPostRequest = HttpUtils.getContentFromPostRequest(concat + AdPlacementReporter.SSP_SITE_ID_PARAMETER + f, Uploader.d(e), "application/json");
                            if (contentFromPostRequest.code == 200) {
                                if (MMLog.isDebugEnabled()) {
                                    MMLog.d(AdPlacementReporter.f4050a, "Reporting successfully uploaded " + e.length + " events");
                                }
                                Uploader.c(e);
                                if (AdPlacementReporter.f.get() >= Handshake.getReportingBatchSize()) {
                                    Uploader.a();
                                    return;
                                }
                                uploadState = UploadState.IDLE;
                            } else if (EnvironmentUtils.isDeviceIdle()) {
                                MMLog.e(AdPlacementReporter.f4050a, "Reporting failed to upload with response code <" + contentFromPostRequest.code + "> while in Doze mode");
                                uploadState = UploadState.ERROR_SENDING_TO_SERVER;
                            } else if (!EnvironmentUtils.isNetworkAvailable()) {
                                MMLog.e(AdPlacementReporter.f4050a, "Reporting failed to upload because network is unavailable");
                                uploadState = UploadState.ERROR_NETWORK_UNAVAILABLE;
                            } else {
                                MMLog.e(AdPlacementReporter.f4050a, "Reporting failed to upload with response code <" + contentFromPostRequest.code + ">");
                                uploadState = UploadState.ERROR_SENDING_TO_SERVER;
                            }
                        }
                    } else if (MMLog.isDebugEnabled()) {
                        MMLog.d(AdPlacementReporter.f4050a, "Reporting found no events to upload");
                    }
                    Uploader.a(uploadState);
                }
            });
        }
    }

    public static void init() {
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4050a, "Initializing");
        }
        Uploader.i();
    }

    private AdPlacementReporter(PlayList playList, String str) throws Exception {
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4050a, "Creating new reporting instance for responseId: " + playList.responseId);
        }
        Uploader.b(playList.siteId);
        if (!TextUtils.isEmpty(playList.responseId)) {
            this.m = UUID.randomUUID().toString();
        }
        this.k = playList.responseId;
        this.l = playList.placementName;
        this.q = str;
        this.i = new JSONObject();
        this.i.put("ts", System.currentTimeMillis());
        this.i.put("adnet", new JSONArray());
        this.i.put("a", this.k);
        this.i.put("zone", this.l);
        this.i.put("grp", str);
        Uploader.b("request_", this.m, this.i, false);
        this.j = new ElapsedTimer();
        this.j.start();
    }

    void a() {
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4050a, "Reporting playlist stop for responseId: " + this.k);
        }
        try {
            this.i.put("resp", this.j.getElapsedTime());
            File b2 = Uploader.b("request_", this.m, this.i, false);
            if (b2 != null) {
                Uploader.b(b2, true);
            }
            this.i = null;
        } catch (Exception e2) {
            MMLog.e(f4050a, "Error stopping playlist reporting");
        }
    }

    PlayListItemReporter b() {
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4050a, "Reporting playlist item start for responseId: " + this.k);
        }
        return new PlayListItemReporter();
    }

    void a(PlayListItemReporter playListItemReporter) {
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4050a, "Reporting playlist item stop for responseId: " + this.k);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("tag", playListItemReporter.itemId);
            jSONObject.put("status", playListItemReporter.status);
            jSONObject.put("resp", playListItemReporter.b.getElapsedTime());
            if (playListItemReporter.status == 1) {
                this.n = playListItemReporter.itemId;
                this.o = playListItemReporter.buyer;
                this.p = playListItemReporter.pru;
                this.i.put("buyer", this.o);
                this.i.put("pru", this.p);
            }
            this.i.getJSONArray("adnet").put(jSONObject);
            Uploader.b("request_", this.m, this.i, false);
        } catch (Exception e2) {
            MMLog.e(f4050a, "Error adding playlist item");
        }
    }

    void a(int i) {
        if (!this.h) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(f4050a, String.format("Reporting ad displayed for responseId: %s, %s", this.k, b(i)));
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("a", this.k);
                jSONObject.put("ts", System.currentTimeMillis());
                jSONObject.put("zone", this.l);
                jSONObject.put("tag", this.n);
                jSONObject.put("buyer", this.o);
                jSONObject.put("pru", this.p);
                jSONObject.put("grp", this.q);
                Uploader.b("display_", this.m, jSONObject, true);
            } catch (Exception e2) {
                MMLog.e(f4050a, "Error recording display");
            }
            this.h = true;
        }
    }

    String b(int i) {
        if (i == 1) {
            return "visibility";
        }
        if (i == 2) {
            return "click";
        }
        if (i != 0) {
            return "unknown";
        }
        return "auto";
    }

    void c() {
        if (!this.g) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(f4050a, "Reporting ad clicked for responseId: " + this.k);
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("a", this.k);
                jSONObject.put("ts", System.currentTimeMillis());
                jSONObject.put("zone", this.l);
                jSONObject.put("tag", this.n);
                jSONObject.put("grp", this.q);
                Uploader.b("click_", this.m, jSONObject, true);
            } catch (Exception e2) {
                MMLog.e(f4050a, "Error recording click");
            }
            this.g = true;
        }
    }

    public static AdPlacementReporter getPlayListReporter(PlayList playList, String str) {
        if (playList.reportingEnabled) {
            try {
                return new AdPlacementReporter(playList, str);
            } catch (Exception e2) {
                MMLog.e(f4050a, "Error starting ad placement reporting");
            }
        }
        return null;
    }

    public static PlayListItemReporter getPlayListItemReporter(AdPlacementReporter adPlacementReporter) {
        if (adPlacementReporter == null) {
            return null;
        }
        adPlacementReporter.r = adPlacementReporter.b();
        return adPlacementReporter.r;
    }

    public static void reportPlayListItem(AdPlacementReporter adPlacementReporter, PlayListItemReporter playListItemReporter, int i) {
        if (playListItemReporter != null) {
            playListItemReporter.status = i;
            reportPlayListItem(adPlacementReporter, playListItemReporter);
        }
    }

    public static void reportPlayListItem(AdPlacementReporter adPlacementReporter, PlayListItemReporter playListItemReporter) {
        if (adPlacementReporter != null) {
            if (adPlacementReporter.r != playListItemReporter) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(f4050a, "reportPlayListItem called but item is not the active item");
                    return;
                }
                return;
            }
            adPlacementReporter.a(playListItemReporter);
            adPlacementReporter.r = null;
        }
    }

    public static void reportPlayList(AdPlacementReporter adPlacementReporter) {
        if (adPlacementReporter != null) {
            if (adPlacementReporter.r != null) {
                adPlacementReporter.r.status = -2;
                reportPlayListItem(adPlacementReporter, adPlacementReporter.r);
            }
            adPlacementReporter.a();
        }
    }

    public static void setDisplayed(AdPlacementReporter adPlacementReporter) {
        setDisplayed(adPlacementReporter, -1);
    }

    public static void setDisplayed(AdPlacementReporter adPlacementReporter, int i) {
        if (adPlacementReporter != null) {
            adPlacementReporter.a(i);
        }
    }

    public static void setClicked(AdPlacementReporter adPlacementReporter) {
        if (adPlacementReporter != null) {
            adPlacementReporter.c();
        }
    }
}

package com.intentsoftware.addapptr.a;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.intentsoftware.addapptr.b.b;
import com.intentsoftware.addapptr.c.h;
import com.intentsoftware.addapptr.c.j;
import com.intentsoftware.addapptr.c.l;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
/* compiled from: ConfigDownloader.java */
/* loaded from: classes2.dex */
public class b implements b.a, Runnable {
    private static final long CACHED_CONFIG_VALIDITY_TIME = 259200000;
    private static final int REQUESTS_TO_WAIT_BEFORE_RETRY = 4;
    private static final String REQUEST_URL = "https://rules.aatkit.com/cgi-bin/kitty.cgi";
    private static final String REQUEST_URL2 = "https://rules2.aatkit.com/cgi-bin/kitty.cgi";
    private static final String REQUEST_URL3 = "https://rules3.aatkit.com/cgi-bin/kitty.cgi";
    private static final String SHARED_PREFERENCES_RULES_PREFIX = "aatkit_cached_rules_";
    private static final String SHARED_PREFERENCES_RULES_PROTOCOLVERSION_PREFIX = "aatkit_cached_rules_protocol_";
    private static final String SHARED_PREFERENCES_RULES_TIMESTAMP_PREFIX = "aatkit_cached_rules_timestamp_";
    private final BlockingQueue<String> availableServers = new LinkedBlockingQueue();
    private a cachedResponse;
    private String chosenUrl;
    private com.intentsoftware.addapptr.b.b currentGetRequest;
    private final Executor executor;
    private String fakeAdResponse;
    private final Handler handler;
    private final HandlerThread handlerThread;
    private String initialConfig;
    private final c listener;
    private boolean realConfigDownloaded;
    private boolean ruleCachingEnabled;
    private final Map<String, Integer> servers;
    private boolean shouldReset;
    private long timeWhenPaused;
    private final l timer;
    private long updateInterval;
    private final long updateIntervalOnWrongConfig;
    private boolean usingOnWrongConfigTimer;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ConfigDownloader.java */
    /* renamed from: com.intentsoftware.addapptr.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public enum EnumC0509b {
        SERVER("Server"),
        DEFAULT("Default"),
        CACHE("Cache");
        
        private final String logName;

        EnumC0509b(String str) {
            this.logName = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ConfigDownloader.java */
    /* loaded from: classes2.dex */
    public class a {
        private final com.intentsoftware.addapptr.a.a config;
        private final String configString;
        private final EnumC0509b source;

        private a(com.intentsoftware.addapptr.a.a aVar, String str, EnumC0509b enumC0509b) {
            this.config = aVar;
            this.configString = str;
            this.source = enumC0509b;
        }
    }

    public b(c cVar) {
        ArrayList arrayList = new ArrayList();
        this.servers = new HashMap();
        this.servers.put(REQUEST_URL, 0);
        arrayList.add(REQUEST_URL);
        this.servers.put(REQUEST_URL2, 0);
        arrayList.add(REQUEST_URL2);
        this.servers.put(REQUEST_URL3, 0);
        arrayList.add(REQUEST_URL3);
        Collections.shuffle(arrayList);
        this.availableServers.addAll(arrayList);
        this.updateInterval = 900000L;
        this.updateIntervalOnWrongConfig = 60000L;
        this.timeWhenPaused = 0L;
        this.shouldReset = false;
        this.ruleCachingEnabled = true;
        this.listener = cVar;
        this.handler = new Handler(Looper.getMainLooper());
        this.executor = Executors.newSingleThreadExecutor();
        this.handlerThread = new HandlerThread("ConfigDownloaderHandlerThread", 10);
        this.handlerThread.start();
        this.timer = new l(this.updateInterval, this, false, true, this.handlerThread.getLooper());
        loadInitialConfig();
        if (this.ruleCachingEnabled && !this.realConfigDownloaded && this.initialConfig == null) {
            loadCachedRules();
        }
    }

    public synchronized void start() {
        if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
            com.intentsoftware.addapptr.c.c.d(this, "Start");
        }
        if (this.cachedResponse != null) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, "Loading last downloaded response.");
            }
            reportConfigDownloaded(this.cachedResponse.config, this.cachedResponse.configString, this.cachedResponse.source);
        }
        if (this.timeWhenPaused != 0) {
            this.timer.setTimeAlreadyPassed(this.timer.getTimeAlreadyPassed() + (System.currentTimeMillis() - this.timeWhenPaused));
            this.timeWhenPaused = 0L;
        }
        if (this.currentGetRequest == null) {
            if (this.timer.willStartImmediately()) {
                this.shouldReset = true;
            }
            this.timer.start();
        }
    }

    public synchronized void stop() {
        if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
            com.intentsoftware.addapptr.c.c.d(this, "Stop");
        }
        if (this.ruleCachingEnabled && this.realConfigDownloaded) {
            j.write(SHARED_PREFERENCES_RULES_TIMESTAMP_PREFIX, String.valueOf(System.currentTimeMillis()));
        }
        this.timer.stop();
        this.timeWhenPaused = System.currentTimeMillis();
        stopDownloading();
    }

    private synchronized void startDownloading() {
        this.shouldReset = false;
        if (this.currentGetRequest == null) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, "Start downloading.");
            }
            this.currentGetRequest = new com.intentsoftware.addapptr.b.b(chooseRequestURL(), com.intentsoftware.addapptr.b.a.toHashMap(), this);
        }
    }

    private String chooseRequestURL() {
        this.chosenUrl = this.availableServers.poll();
        if (this.chosenUrl == null) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, "No request urls in available servers list, falling back to default url.");
            }
            this.chosenUrl = REQUEST_URL;
        }
        if (com.intentsoftware.addapptr.c.c.isLoggable(2)) {
            com.intentsoftware.addapptr.c.c.v(this, "Chosen " + this.chosenUrl + " as config server.");
        }
        return this.chosenUrl;
    }

    private synchronized void stopDownloading() {
        if (this.currentGetRequest != null) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, "Stop downloading.");
            }
            this.currentGetRequest.cancel();
            this.timer.reset(true);
            this.timeWhenPaused = 0L;
            onDownloadingFinished();
        } else if (this.shouldReset) {
            this.shouldReset = false;
            this.timer.reset(true);
            this.timeWhenPaused = 0L;
        }
    }

    public void forceReload() {
        boolean z = false;
        if (this.timer.isRunning()) {
            z = true;
        }
        this.timer.reset(true);
        this.timeWhenPaused = 0L;
        if (z) {
            this.timer.start();
        }
    }

    private synchronized void onDownloadingFinished() {
        this.currentGetRequest = null;
        updateRetryCounters();
    }

    private void updateRetryCounters() {
        for (Map.Entry<String, Integer> entry : this.servers.entrySet()) {
            if (entry.getValue().intValue() > 0) {
                entry.setValue(Integer.valueOf(entry.getValue().intValue() - 1));
                if (entry.getValue().intValue() == 0) {
                    this.availableServers.add(entry.getKey());
                }
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        startDownloading();
    }

    @Override // com.intentsoftware.addapptr.b.b.a
    public void onGetRequestResponse(final String str) {
        if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
            com.intentsoftware.addapptr.c.c.i(this, "New config downloaded.");
        }
        this.availableServers.add(this.chosenUrl);
        onDownloadingFinished();
        this.executor.execute(new Runnable() { // from class: com.intentsoftware.addapptr.a.b.1
            @Override // java.lang.Runnable
            public void run() {
                b.this.processResponse(str, EnumC0509b.SERVER);
            }
        });
    }

    @Override // com.intentsoftware.addapptr.b.b.a
    public void onGetRequestError() {
        if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Failed to download new config.");
        }
        markServerUrlUnreachable(this.chosenUrl);
        onDownloadingFinished();
        handleRequestError();
    }

    private void markServerUrlUnreachable(String str) {
        this.servers.put(str, 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processResponse(String str, EnumC0509b enumC0509b) {
        com.intentsoftware.addapptr.a.a aVar;
        if (this.fakeAdResponse != null) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, String.format(Locale.US, "Using fake response:\n%s", this.fakeAdResponse));
            }
            aVar = new com.intentsoftware.addapptr.a.a(this.fakeAdResponse);
        } else {
            aVar = new com.intentsoftware.addapptr.a.a(str);
        }
        if (enumC0509b == EnumC0509b.SERVER) {
            this.realConfigDownloaded = true;
            if (this.ruleCachingEnabled) {
                j.write(SHARED_PREFERENCES_RULES_PREFIX, str);
                j.write(SHARED_PREFERENCES_RULES_PROTOCOLVERSION_PREFIX, com.intentsoftware.addapptr.b.a.PROTOCOL_VERSION);
            }
            reportConfigDownloaded(aVar, str, enumC0509b);
        } else if (enumC0509b == EnumC0509b.CACHE && this.ruleCachingEnabled && !this.realConfigDownloaded && this.initialConfig == null) {
            reportConfigDownloaded(aVar, str, enumC0509b);
        } else if (enumC0509b == EnumC0509b.DEFAULT && !this.realConfigDownloaded) {
            reportConfigDownloaded(aVar, str, enumC0509b);
        }
    }

    private void reportConfigDownloaded(final com.intentsoftware.addapptr.a.a aVar, final String str, final EnumC0509b enumC0509b) {
        this.cachedResponse = null;
        if (!com.intentsoftware.addapptr.c.isPaused()) {
            if (enumC0509b == EnumC0509b.SERVER) {
                if (aVar.getAdConfigs().isEmpty()) {
                    this.timer.setRefreshTime(60000L);
                    this.usingOnWrongConfigTimer = true;
                } else {
                    this.timer.setRefreshTime(this.updateInterval);
                    this.usingOnWrongConfigTimer = false;
                }
                this.timer.start();
            } else if (this.realConfigDownloaded) {
                if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                    com.intentsoftware.addapptr.c.c.d(this, "Ignoring config from: " + enumC0509b + " as server config already available.");
                    return;
                }
                return;
            } else if (enumC0509b == EnumC0509b.CACHE) {
                if (!this.ruleCachingEnabled) {
                    if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                        com.intentsoftware.addapptr.c.c.d(this, "Cached config ignored, as rule caching was disabled.");
                        return;
                    }
                    return;
                } else if (this.initialConfig != null) {
                    if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                        com.intentsoftware.addapptr.c.c.d(this, "Cached config ignored, as default config is available.");
                        return;
                    }
                    return;
                }
            }
            this.handler.post(new Runnable() { // from class: com.intentsoftware.addapptr.a.b.2
                @Override // java.lang.Runnable
                public void run() {
                    b.this.listener.onConfigDownloaded(aVar, enumC0509b == EnumC0509b.SERVER);
                    if (com.intentsoftware.addapptr.c.isOptionEnabled("LOGRULES")) {
                        h.log("Obtained following app rules: \n" + str);
                    }
                    if (com.intentsoftware.addapptr.c.isOptionEnabled("LOGRULESLOAD")) {
                        h.log("Loaded app rules: " + enumC0509b.logName);
                    }
                    if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                        com.intentsoftware.addapptr.c.c.i(this, "Obtained config from " + enumC0509b.logName + ":\n" + str);
                    }
                }
            });
            return;
        }
        if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
            com.intentsoftware.addapptr.c.c.d(this, "App is paused, config from:" + enumC0509b + " cached to be used when app resumes.");
        }
        this.cachedResponse = new a(aVar, str, enumC0509b);
    }

    private void handleRequestError() {
        if (!this.availableServers.isEmpty()) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, "Downloading config from " + this.chosenUrl + " failed, trying other server.");
            }
            this.timer.reset(true);
            this.timer.start();
            return;
        }
        if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Failed to download new config.");
        }
        this.timer.setRefreshTime(60000L);
        this.timer.start();
    }

    public long getUpdateInterval() {
        return this.updateInterval;
    }

    public void setUpdateInterval(long j) {
        if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
            com.intentsoftware.addapptr.c.c.d(this, "Set update interval to " + j);
        }
        if (!this.usingOnWrongConfigTimer) {
            this.timer.setRefreshTime(j, true);
        }
        this.updateInterval = j;
    }

    public void setFakeAdResponse(String str) {
        this.fakeAdResponse = str;
    }

    public void setInitialRules(String str) {
        this.initialConfig = str;
        loadInitialConfig();
    }

    public void setRuleCachingEnabled(boolean z) {
        this.ruleCachingEnabled = z;
        if (this.ruleCachingEnabled && !this.realConfigDownloaded) {
            loadCachedRules();
        }
    }

    private void loadCachedRules() {
        final String read = j.read(SHARED_PREFERENCES_RULES_PREFIX, null);
        String read2 = j.read(SHARED_PREFERENCES_RULES_TIMESTAMP_PREFIX, null);
        String read3 = j.read(SHARED_PREFERENCES_RULES_PROTOCOLVERSION_PREFIX, null);
        boolean z = false;
        if (read2 != null && read3 != null && read3.equals(com.intentsoftware.addapptr.b.a.PROTOCOL_VERSION)) {
            try {
                if (System.currentTimeMillis() - Long.parseLong(read2) < CACHED_CONFIG_VALIDITY_TIME) {
                    z = true;
                }
            } catch (NumberFormatException e) {
                if (com.intentsoftware.addapptr.c.c.isLoggable(6)) {
                    com.intentsoftware.addapptr.c.c.e(this, "Error parsing cached config timestamp: " + e.getMessage());
                }
            }
        }
        if (!z) {
            j.remove(SHARED_PREFERENCES_RULES_TIMESTAMP_PREFIX);
            j.remove(SHARED_PREFERENCES_RULES_PREFIX);
            j.remove(SHARED_PREFERENCES_RULES_PROTOCOLVERSION_PREFIX);
        }
        if (this.ruleCachingEnabled && z && read != null && !this.realConfigDownloaded && this.initialConfig == null) {
            this.executor.execute(new Runnable() { // from class: com.intentsoftware.addapptr.a.b.3
                @Override // java.lang.Runnable
                public void run() {
                    if (b.this.ruleCachingEnabled && !b.this.realConfigDownloaded && b.this.initialConfig == null) {
                        b.this.processResponse(read, EnumC0509b.CACHE);
                    }
                }
            });
        }
    }

    private void loadInitialConfig() {
        if (!this.realConfigDownloaded && this.initialConfig != null) {
            this.executor.execute(new Runnable() { // from class: com.intentsoftware.addapptr.a.b.4
                @Override // java.lang.Runnable
                public void run() {
                    if (!b.this.realConfigDownloaded && b.this.initialConfig != null) {
                        b.this.processResponse(b.this.initialConfig, EnumC0509b.DEFAULT);
                    }
                }
            });
        }
    }

    protected void finalize() throws Throwable {
        stop();
        if (this.handlerThread != null) {
            this.handlerThread.quit();
        }
        super.finalize();
    }
}

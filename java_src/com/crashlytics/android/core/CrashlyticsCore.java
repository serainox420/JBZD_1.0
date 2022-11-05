package com.crashlytics.android.core;

import android.content.Context;
import android.util.Log;
import com.crashlytics.android.core.internal.CrashEventDataProvider;
import com.crashlytics.android.core.internal.models.SessionEventData;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.fabric.sdk.android.h;
import io.fabric.sdk.android.services.c.d;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.g;
import io.fabric.sdk.android.services.common.i;
import io.fabric.sdk.android.services.common.m;
import io.fabric.sdk.android.services.concurrency.Priority;
import io.fabric.sdk.android.services.concurrency.UnmetDependencyException;
import io.fabric.sdk.android.services.concurrency.b;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.c;
import io.fabric.sdk.android.services.settings.q;
import io.fabric.sdk.android.services.settings.s;
import java.net.URL;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.net.ssl.HttpsURLConnection;
@b(a = {CrashEventDataProvider.class})
/* loaded from: classes.dex */
public class CrashlyticsCore extends h<Void> {
    static final float CLS_DEFAULT_PROCESS_DELAY = 1.0f;
    static final String CRASHLYTICS_REQUIRE_BUILD_ID = "com.crashlytics.RequireBuildId";
    static final boolean CRASHLYTICS_REQUIRE_BUILD_ID_DEFAULT = true;
    static final String CRASH_MARKER_FILE_NAME = "crash_marker";
    static final int DEFAULT_MAIN_HANDLER_TIMEOUT_SEC = 4;
    private static final String INITIALIZATION_MARKER_FILE_NAME = "initialization_marker";
    static final int MAX_ATTRIBUTES = 64;
    static final int MAX_ATTRIBUTE_SIZE = 1024;
    private static final String MISSING_BUILD_ID_MSG = "This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app's organization.";
    private static final String PREFERENCE_STORE_NAME = "com.crashlytics.android.core.CrashlyticsCore";
    public static final String TAG = "CrashlyticsCore";
    private final ConcurrentHashMap<String, String> attributes;
    private CrashlyticsBackgroundWorker backgroundWorker;
    private CrashlyticsController controller;
    private CrashlyticsFileMarker crashMarker;
    private float delay;
    private boolean disabled;
    private CrashEventDataProvider externalCrashEventDataProvider;
    private c httpRequestFactory;
    private CrashlyticsFileMarker initializationMarker;
    private CrashlyticsListener listener;
    private final PinningInfoProvider pinningInfo;
    private final long startTime;
    private String userEmail;
    private String userId;
    private String userName;

    /* loaded from: classes.dex */
    public static class Builder {
        private float delay = -1.0f;
        private boolean disabled = false;
        private CrashlyticsListener listener;
        private PinningInfoProvider pinningInfoProvider;

        public Builder delay(float f) {
            if (f <= BitmapDescriptorFactory.HUE_RED) {
                throw new IllegalArgumentException("delay must be greater than 0");
            }
            if (this.delay > BitmapDescriptorFactory.HUE_RED) {
                throw new IllegalStateException("delay already set.");
            }
            this.delay = f;
            return this;
        }

        public Builder listener(CrashlyticsListener crashlyticsListener) {
            if (crashlyticsListener == null) {
                throw new IllegalArgumentException("listener must not be null.");
            }
            if (this.listener != null) {
                throw new IllegalStateException("listener already set.");
            }
            this.listener = crashlyticsListener;
            return this;
        }

        @Deprecated
        public Builder pinningInfo(PinningInfoProvider pinningInfoProvider) {
            if (pinningInfoProvider == null) {
                throw new IllegalArgumentException("pinningInfoProvider must not be null.");
            }
            if (this.pinningInfoProvider != null) {
                throw new IllegalStateException("pinningInfoProvider already set.");
            }
            this.pinningInfoProvider = pinningInfoProvider;
            return this;
        }

        public Builder disabled(boolean z) {
            this.disabled = z;
            return this;
        }

        public CrashlyticsCore build() {
            if (this.delay < BitmapDescriptorFactory.HUE_RED) {
                this.delay = 1.0f;
            }
            return new CrashlyticsCore(this.delay, this.listener, this.pinningInfoProvider, this.disabled);
        }
    }

    public CrashlyticsCore() {
        this(1.0f, null, null, false);
    }

    CrashlyticsCore(float f, CrashlyticsListener crashlyticsListener, PinningInfoProvider pinningInfoProvider, boolean z) {
        this(f, crashlyticsListener, pinningInfoProvider, z, m.a("Crashlytics Exception Handler"));
    }

    CrashlyticsCore(float f, CrashlyticsListener crashlyticsListener, PinningInfoProvider pinningInfoProvider, boolean z, ExecutorService executorService) {
        this.userId = null;
        this.userEmail = null;
        this.userName = null;
        this.delay = f;
        this.listener = crashlyticsListener == null ? new NoOpListener() : crashlyticsListener;
        this.pinningInfo = pinningInfoProvider;
        this.disabled = z;
        this.backgroundWorker = new CrashlyticsBackgroundWorker(executorService);
        this.attributes = new ConcurrentHashMap<>();
        this.startTime = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.fabric.sdk.android.h
    public boolean onPreExecute() {
        return onPreExecute(super.getContext());
    }

    boolean onPreExecute(Context context) {
        String a2;
        if (!this.disabled && (a2 = new g().a(context)) != null) {
            String m = i.m(context);
            if (!isBuildIdValid(m, i.a(context, CRASHLYTICS_REQUIRE_BUILD_ID, true))) {
                throw new UnmetDependencyException(MISSING_BUILD_ID_MSG);
            }
            try {
                io.fabric.sdk.android.c.h().c(TAG, "Initializing Crashlytics " + getVersion());
                io.fabric.sdk.android.services.c.b bVar = new io.fabric.sdk.android.services.c.b(this);
                this.crashMarker = new CrashlyticsFileMarker(CRASH_MARKER_FILE_NAME, bVar);
                this.initializationMarker = new CrashlyticsFileMarker(INITIALIZATION_MARKER_FILE_NAME, bVar);
                PreferenceManager create = PreferenceManager.create(new d(getContext(), PREFERENCE_STORE_NAME), this);
                CrashlyticsPinningInfoProvider crashlyticsPinningInfoProvider = this.pinningInfo != null ? new CrashlyticsPinningInfoProvider(this.pinningInfo) : null;
                this.httpRequestFactory = new io.fabric.sdk.android.services.network.b(io.fabric.sdk.android.c.h());
                this.httpRequestFactory.a(crashlyticsPinningInfoProvider);
                IdManager idManager = getIdManager();
                AppData create2 = AppData.create(context, idManager, a2, m);
                ManifestUnityVersionProvider manifestUnityVersionProvider = new ManifestUnityVersionProvider(context, create2.packageName);
                io.fabric.sdk.android.c.h().a(TAG, "Installer package name is: " + create2.installerPackageName);
                this.controller = new CrashlyticsController(this, this.backgroundWorker, this.httpRequestFactory, idManager, create, bVar, create2, manifestUnityVersionProvider);
                boolean didPreviousInitializationFail = didPreviousInitializationFail();
                checkForPreviousCrash();
                this.controller.enableExceptionHandling(Thread.getDefaultUncaughtExceptionHandler());
                if (didPreviousInitializationFail && i.n(context)) {
                    io.fabric.sdk.android.c.h().a(TAG, "Crashlytics did not finish previous background initialization. Initializing synchronously.");
                    finishInitSynchronously();
                    return false;
                }
                io.fabric.sdk.android.c.h().a(TAG, "Exception handling initialization successful");
                return true;
            } catch (Exception e) {
                io.fabric.sdk.android.c.h().e(TAG, "Crashlytics was not started due to an exception during initialization", e);
                this.controller = null;
                return false;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.fabric.sdk.android.h
    /* renamed from: doInBackground  reason: collision with other method in class */
    public Void mo38doInBackground() {
        markInitializationStarted();
        SessionEventData externalCrashEventData = getExternalCrashEventData();
        if (externalCrashEventData != null) {
            this.controller.writeExternalCrashEvent(externalCrashEventData);
        }
        this.controller.cleanInvalidTempFiles();
        try {
            s b = q.a().b();
            if (b == null) {
                io.fabric.sdk.android.c.h().d(TAG, "Received null settings, skipping report submission!");
            } else if (!b.d.c) {
                io.fabric.sdk.android.c.h().a(TAG, "Collection of crash reports disabled in Crashlytics settings.");
            } else {
                if (!this.controller.finalizeSessions(b.b)) {
                    io.fabric.sdk.android.c.h().a(TAG, "Could not finalize previous sessions.");
                }
                this.controller.submitAllReports(this.delay, b);
            }
        } catch (Exception e) {
            io.fabric.sdk.android.c.h().e(TAG, "Crashlytics encountered a problem during asynchronous initialization.", e);
        } finally {
            markInitializationComplete();
        }
        return null;
    }

    @Override // io.fabric.sdk.android.h
    public String getIdentifier() {
        return "com.crashlytics.sdk.android.crashlytics-core";
    }

    @Override // io.fabric.sdk.android.h
    public String getVersion() {
        return "2.3.16.dev";
    }

    public static CrashlyticsCore getInstance() {
        return (CrashlyticsCore) io.fabric.sdk.android.c.a(CrashlyticsCore.class);
    }

    public PinningInfoProvider getPinningInfoProvider() {
        if (!this.disabled) {
            return this.pinningInfo;
        }
        return null;
    }

    public void logException(Throwable th) {
        if (!this.disabled && ensureFabricWithCalled("prior to logging exceptions.")) {
            if (th == null) {
                io.fabric.sdk.android.c.h().a(5, TAG, "Crashlytics is ignoring a request to log a null exception.");
            } else {
                this.controller.writeNonFatalException(Thread.currentThread(), th);
            }
        }
    }

    public void log(String str) {
        doLog(3, TAG, str);
    }

    private void doLog(int i, String str, String str2) {
        if (!this.disabled && ensureFabricWithCalled("prior to logging messages.")) {
            this.controller.writeToLog(System.currentTimeMillis() - this.startTime, formatLogMessage(i, str, str2));
        }
    }

    public void log(int i, String str, String str2) {
        doLog(i, str, str2);
        io.fabric.sdk.android.c.h().a(i, "" + str, "" + str2, true);
    }

    public void setUserIdentifier(String str) {
        if (!this.disabled && ensureFabricWithCalled("prior to setting user data.")) {
            this.userId = sanitizeAttribute(str);
            this.controller.cacheUserData(this.userId, this.userName, this.userEmail);
        }
    }

    public void setUserName(String str) {
        if (!this.disabled && ensureFabricWithCalled("prior to setting user data.")) {
            this.userName = sanitizeAttribute(str);
            this.controller.cacheUserData(this.userId, this.userName, this.userEmail);
        }
    }

    public void setUserEmail(String str) {
        if (!this.disabled && ensureFabricWithCalled("prior to setting user data.")) {
            this.userEmail = sanitizeAttribute(str);
            this.controller.cacheUserData(this.userId, this.userName, this.userEmail);
        }
    }

    public void setString(String str, String str2) {
        if (!this.disabled && ensureFabricWithCalled("prior to setting keys.")) {
            if (str == null) {
                Context context = getContext();
                if (context != null && i.i(context)) {
                    throw new IllegalArgumentException("Custom attribute key must not be null.");
                }
                io.fabric.sdk.android.c.h().e(TAG, "Attempting to set custom attribute with null key, ignoring.", null);
                return;
            }
            String sanitizeAttribute = sanitizeAttribute(str);
            if (this.attributes.size() >= 64 && !this.attributes.containsKey(sanitizeAttribute)) {
                io.fabric.sdk.android.c.h().a(TAG, "Exceeded maximum number of custom attributes (64)");
                return;
            }
            this.attributes.put(sanitizeAttribute, str2 == null ? "" : sanitizeAttribute(str2));
            this.controller.cacheKeyData(this.attributes);
        }
    }

    public void setBool(String str, boolean z) {
        setString(str, Boolean.toString(z));
    }

    public void setDouble(String str, double d) {
        setString(str, Double.toString(d));
    }

    public void setFloat(String str, float f) {
        setString(str, Float.toString(f));
    }

    public void setInt(String str, int i) {
        setString(str, Integer.toString(i));
    }

    public void setLong(String str, long j) {
        setString(str, Long.toString(j));
    }

    public void crash() {
        new CrashTest().indexOutOfBounds();
    }

    public boolean verifyPinning(URL url) {
        try {
            return internalVerifyPinning(url);
        } catch (Exception e) {
            io.fabric.sdk.android.c.h().e(TAG, "Could not verify SSL pinning", e);
            return false;
        }
    }

    @Deprecated
    public synchronized void setListener(CrashlyticsListener crashlyticsListener) {
        io.fabric.sdk.android.c.h().d(TAG, "Use of setListener is deprecated.");
        if (crashlyticsListener == null) {
            throw new IllegalArgumentException("listener must not be null.");
        }
        this.listener = crashlyticsListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, String> getAttributes() {
        return Collections.unmodifiableMap(this.attributes);
    }

    CrashlyticsController getController() {
        return this.controller;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getUserIdentifier() {
        if (getIdManager().a()) {
            return this.userId;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getUserEmail() {
        if (getIdManager().a()) {
            return this.userEmail;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getUserName() {
        if (getIdManager().a()) {
            return this.userName;
        }
        return null;
    }

    private void finishInitSynchronously() {
        io.fabric.sdk.android.services.concurrency.d<Void> dVar = new io.fabric.sdk.android.services.concurrency.d<Void>() { // from class: com.crashlytics.android.core.CrashlyticsCore.1
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                return CrashlyticsCore.this.mo38doInBackground();
            }

            @Override // io.fabric.sdk.android.services.concurrency.g, io.fabric.sdk.android.services.concurrency.f
            public Priority getPriority() {
                return Priority.IMMEDIATE;
            }
        };
        for (io.fabric.sdk.android.services.concurrency.i iVar : getDependencies()) {
            dVar.addDependency(iVar);
        }
        Future submit = getFabric().f().submit(dVar);
        io.fabric.sdk.android.c.h().a(TAG, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
        try {
            submit.get(4L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            io.fabric.sdk.android.c.h().e(TAG, "Crashlytics was interrupted during initialization.", e);
        } catch (ExecutionException e2) {
            io.fabric.sdk.android.c.h().e(TAG, "Problem encountered during Crashlytics initialization.", e2);
        } catch (TimeoutException e3) {
            io.fabric.sdk.android.c.h().e(TAG, "Crashlytics timed out during initialization.", e3);
        }
    }

    void markInitializationStarted() {
        this.backgroundWorker.submitAndWait(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsCore.2
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                CrashlyticsCore.this.initializationMarker.create();
                io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Initialization marker file created.");
                return null;
            }
        });
    }

    void markInitializationComplete() {
        this.backgroundWorker.submit(new Callable<Boolean>() { // from class: com.crashlytics.android.core.CrashlyticsCore.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            /* renamed from: call */
            public Boolean mo40call() throws Exception {
                try {
                    boolean remove = CrashlyticsCore.this.initializationMarker.remove();
                    io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Initialization marker file removed: " + remove);
                    return Boolean.valueOf(remove);
                } catch (Exception e) {
                    io.fabric.sdk.android.c.h().e(CrashlyticsCore.TAG, "Problem encountered deleting Crashlytics initialization marker.", e);
                    return false;
                }
            }
        });
    }

    boolean didPreviousInitializationFail() {
        return ((Boolean) this.backgroundWorker.submitAndWait(new Callable<Boolean>() { // from class: com.crashlytics.android.core.CrashlyticsCore.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            /* renamed from: call */
            public Boolean mo41call() throws Exception {
                return Boolean.valueOf(CrashlyticsCore.this.initializationMarker.isPresent());
            }
        })).booleanValue();
    }

    void setExternalCrashEventDataProvider(CrashEventDataProvider crashEventDataProvider) {
        this.externalCrashEventDataProvider = crashEventDataProvider;
    }

    SessionEventData getExternalCrashEventData() {
        if (this.externalCrashEventDataProvider == null) {
            return null;
        }
        return this.externalCrashEventDataProvider.getCrashEventData();
    }

    boolean internalVerifyPinning(URL url) {
        if (getPinningInfoProvider() != null) {
            HttpRequest a2 = this.httpRequestFactory.a(HttpMethod.GET, url.toString());
            ((HttpsURLConnection) a2.a()).setInstanceFollowRedirects(false);
            a2.b();
            return true;
        }
        return false;
    }

    private void checkForPreviousCrash() {
        if (Boolean.TRUE.equals((Boolean) this.backgroundWorker.submitAndWait(new CrashMarkerCheck(this.crashMarker)))) {
            try {
                this.listener.crashlyticsDidDetectCrashDuringPreviousExecution();
            } catch (Exception e) {
                io.fabric.sdk.android.c.h().e(TAG, "Exception thrown by CrashlyticsListener while notifying of previous crash.", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void createCrashMarker() {
        this.crashMarker.create();
    }

    private static String formatLogMessage(int i, String str, String str2) {
        return i.b(i) + "/" + str + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + str2;
    }

    private static boolean ensureFabricWithCalled(String str) {
        CrashlyticsCore crashlyticsCore = getInstance();
        if (crashlyticsCore == null || crashlyticsCore.controller == null) {
            io.fabric.sdk.android.c.h().e(TAG, "Crashlytics must be initialized by calling Fabric.with(Context) " + str, null);
            return false;
        }
        return true;
    }

    private static String sanitizeAttribute(String str) {
        if (str != null) {
            String trim = str.trim();
            if (trim.length() > 1024) {
                return trim.substring(0, 1024);
            }
            return trim;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class CrashMarkerCheck implements Callable<Boolean> {
        private final CrashlyticsFileMarker crashMarker;

        public CrashMarkerCheck(CrashlyticsFileMarker crashlyticsFileMarker) {
            this.crashMarker = crashlyticsFileMarker;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        /* renamed from: call */
        public Boolean mo42call() throws Exception {
            if (!this.crashMarker.isPresent()) {
                return Boolean.FALSE;
            }
            io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Found previous crash marker.");
            this.crashMarker.remove();
            return Boolean.TRUE;
        }
    }

    /* loaded from: classes.dex */
    private static final class NoOpListener implements CrashlyticsListener {
        private NoOpListener() {
        }

        @Override // com.crashlytics.android.core.CrashlyticsListener
        public void crashlyticsDidDetectCrashDuringPreviousExecution() {
        }
    }

    static boolean isBuildIdValid(String str, boolean z) {
        if (!z) {
            io.fabric.sdk.android.c.h().a(TAG, "Configured not to require a build ID.");
            return true;
        } else if (!i.c(str)) {
            return true;
        } else {
            Log.e(TAG, ".");
            Log.e(TAG, ".     |  | ");
            Log.e(TAG, ".     |  |");
            Log.e(TAG, ".     |  |");
            Log.e(TAG, ".   \\ |  | /");
            Log.e(TAG, ".    \\    /");
            Log.e(TAG, ".     \\  /");
            Log.e(TAG, ".      \\/");
            Log.e(TAG, ".");
            Log.e(TAG, MISSING_BUILD_ID_MSG);
            Log.e(TAG, ".");
            Log.e(TAG, ".      /\\");
            Log.e(TAG, ".     /  \\");
            Log.e(TAG, ".    /    \\");
            Log.e(TAG, ".   / |  | \\");
            Log.e(TAG, ".     |  |");
            Log.e(TAG, ".     |  |");
            Log.e(TAG, ".     |  |");
            Log.e(TAG, ".");
            return false;
        }
    }
}

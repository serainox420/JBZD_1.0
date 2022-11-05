package com.crashlytics.android.core;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import com.crashlytics.android.answers.Answers;
import com.crashlytics.android.core.CrashPromptDialog;
import com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler;
import com.crashlytics.android.core.LogFileManager;
import com.crashlytics.android.core.ReportUploader;
import com.crashlytics.android.core.internal.models.SessionEventData;
import io.fabric.sdk.android.h;
import io.fabric.sdk.android.services.c.a;
import io.fabric.sdk.android.services.common.DeliveryMechanism;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.i;
import io.fabric.sdk.android.services.common.j;
import io.fabric.sdk.android.services.network.c;
import io.fabric.sdk.android.services.settings.o;
import io.fabric.sdk.android.services.settings.p;
import io.fabric.sdk.android.services.settings.q;
import io.fabric.sdk.android.services.settings.s;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilenameFilter;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.lang.Thread;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class CrashlyticsController {
    private static final int ANALYZER_VERSION = 1;
    private static final String COLLECT_CUSTOM_KEYS = "com.crashlytics.CollectCustomKeys";
    private static final String CRASHLYTICS_API_ENDPOINT = "com.crashlytics.ApiEndpoint";
    private static final String EVENT_TYPE_CRASH = "crash";
    private static final String EVENT_TYPE_LOGGED = "error";
    static final String FATAL_SESSION_DIR = "fatal-sessions";
    private static final String GENERATOR_FORMAT = "Crashlytics Android SDK/%s";
    static final String INVALID_CLS_CACHE_DIR = "invalidClsFiles";
    static final int MAX_INVALID_SESSIONS = 4;
    private static final int MAX_LOCAL_LOGGED_EXCEPTIONS = 64;
    static final int MAX_OPEN_SESSIONS = 8;
    static final int MAX_STACK_SIZE = 1024;
    static final String NONFATAL_SESSION_DIR = "nonfatal-sessions";
    static final int NUM_STACK_REPETITIONS_ALLOWED = 10;
    static final String SESSION_BEGIN_TAG = "BeginSession";
    static final String SESSION_EVENT_MISSING_BINARY_IMGS_TAG = "SessionMissingBinaryImages";
    static final String SESSION_FATAL_TAG = "SessionCrash";
    private static final int SESSION_ID_LENGTH = 35;
    static final String SESSION_NON_FATAL_TAG = "SessionEvent";
    private static final boolean SHOULD_PROMPT_BEFORE_SENDING_REPORTS_DEFAULT = false;
    private final AppData appData;
    private final CrashlyticsBackgroundWorker backgroundWorker;
    private CrashlyticsUncaughtExceptionHandler crashHandler;
    private final CrashlyticsCore crashlyticsCore;
    private final DevicePowerStateListener devicePowerStateListener;
    private final AtomicInteger eventCounter = new AtomicInteger(0);
    private final a fileStore;
    private final ReportUploader.HandlingExceptionCheck handlingExceptionCheck;
    private final c httpRequestFactory;
    private final IdManager idManager;
    private final LogFileDirectoryProvider logFileDirectoryProvider;
    private final LogFileManager logFileManager;
    private final PreferenceManager preferenceManager;
    private final ReportUploader.ReportFilesProvider reportFilesProvider;
    private final StackTraceTrimmingStrategy stackTraceTrimmingStrategy;
    private final String unityVersion;
    static final FilenameFilter SESSION_FILE_FILTER = new FilenameFilter() { // from class: com.crashlytics.android.core.CrashlyticsController.1
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.length() == ClsFileOutputStream.SESSION_FILE_EXTENSION.length() + 35 && str.endsWith(ClsFileOutputStream.SESSION_FILE_EXTENSION);
        }
    };
    static final Comparator<File> LARGEST_FILE_NAME_FIRST = new Comparator<File>() { // from class: com.crashlytics.android.core.CrashlyticsController.2
        @Override // java.util.Comparator
        public int compare(File file, File file2) {
            return file2.getName().compareTo(file.getName());
        }
    };
    static final Comparator<File> SMALLEST_FILE_NAME_FIRST = new Comparator<File>() { // from class: com.crashlytics.android.core.CrashlyticsController.3
        @Override // java.util.Comparator
        public int compare(File file, File file2) {
            return file.getName().compareTo(file2.getName());
        }
    };
    static final FilenameFilter ANY_SESSION_FILENAME_FILTER = new FilenameFilter() { // from class: com.crashlytics.android.core.CrashlyticsController.4
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return CrashlyticsController.SESSION_FILE_PATTERN.matcher(str).matches();
        }
    };
    private static final Pattern SESSION_FILE_PATTERN = Pattern.compile("([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+");
    private static final Map<String, String> SEND_AT_CRASHTIME_HEADER = Collections.singletonMap("X-CRASHLYTICS-SEND-FLAGS", "1");
    static final String SESSION_USER_TAG = "SessionUser";
    static final String SESSION_APP_TAG = "SessionApp";
    static final String SESSION_OS_TAG = "SessionOS";
    static final String SESSION_DEVICE_TAG = "SessionDevice";
    private static final String[] INITIAL_SESSION_PART_TAGS = {SESSION_USER_TAG, SESSION_APP_TAG, SESSION_OS_TAG, SESSION_DEVICE_TAG};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class FileNameContainsFilter implements FilenameFilter {
        private final String string;

        public FileNameContainsFilter(String str) {
            this.string = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.contains(this.string) && !str.endsWith(ClsFileOutputStream.IN_PROGRESS_SESSION_FILE_EXTENSION);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SessionPartFileFilter implements FilenameFilter {
        private final String sessionId;

        public SessionPartFileFilter(String str) {
            this.sessionId = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return !str.equals(new StringBuilder().append(this.sessionId).append(ClsFileOutputStream.SESSION_FILE_EXTENSION).toString()) && str.contains(this.sessionId) && !str.endsWith(ClsFileOutputStream.IN_PROGRESS_SESSION_FILE_EXTENSION);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class AnySessionPartFileFilter implements FilenameFilter {
        private AnySessionPartFileFilter() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return !CrashlyticsController.SESSION_FILE_FILTER.accept(file, str) && CrashlyticsController.SESSION_FILE_PATTERN.matcher(str).matches();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class InvalidPartFileFilter implements FilenameFilter {
        InvalidPartFileFilter() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return ClsFileOutputStream.TEMP_FILENAME_FILTER.accept(file, str) || str.contains(CrashlyticsController.SESSION_EVENT_MISSING_BINARY_IMGS_TAG);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CrashlyticsController(CrashlyticsCore crashlyticsCore, CrashlyticsBackgroundWorker crashlyticsBackgroundWorker, c cVar, IdManager idManager, PreferenceManager preferenceManager, a aVar, AppData appData, UnityVersionProvider unityVersionProvider) {
        this.crashlyticsCore = crashlyticsCore;
        this.backgroundWorker = crashlyticsBackgroundWorker;
        this.httpRequestFactory = cVar;
        this.idManager = idManager;
        this.preferenceManager = preferenceManager;
        this.fileStore = aVar;
        this.appData = appData;
        this.unityVersion = unityVersionProvider.getUnityVersion();
        Context context = crashlyticsCore.getContext();
        this.logFileDirectoryProvider = new LogFileDirectoryProvider(aVar);
        this.logFileManager = new LogFileManager(context, this.logFileDirectoryProvider);
        this.reportFilesProvider = new ReportUploaderFilesProvider();
        this.handlingExceptionCheck = new ReportUploaderHandlingExceptionCheck();
        this.devicePowerStateListener = new DevicePowerStateListener(context);
        this.stackTraceTrimmingStrategy = new MiddleOutFallbackStrategy(1024, new RemoveRepeatsStrategy(10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void enableExceptionHandling(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        openSession();
        this.crashHandler = new CrashlyticsUncaughtExceptionHandler(new CrashlyticsUncaughtExceptionHandler.CrashListener() { // from class: com.crashlytics.android.core.CrashlyticsController.5
            @Override // com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.CrashListener
            public void onUncaughtException(Thread thread, Throwable th) {
                CrashlyticsController.this.handleUncaughtException(thread, th);
            }
        }, uncaughtExceptionHandler);
        Thread.setDefaultUncaughtExceptionHandler(this.crashHandler);
    }

    synchronized void handleUncaughtException(final Thread thread, final Throwable th) {
        io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Crashlytics is handling uncaught exception \"" + th + "\" from thread " + thread.getName());
        this.devicePowerStateListener.dispose();
        final Date date = new Date();
        this.backgroundWorker.submitAndWait(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsController.6
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                CrashlyticsController.this.crashlyticsCore.createCrashMarker();
                CrashlyticsController.this.writeFatal(date, thread, th);
                s b = q.a().b();
                p pVar = b != null ? b.b : null;
                CrashlyticsController.this.doCloseSessions(pVar);
                CrashlyticsController.this.doOpenSession();
                if (pVar != null) {
                    CrashlyticsController.this.trimSessionFiles(pVar.g);
                }
                if (!CrashlyticsController.this.shouldPromptUserBeforeSendingCrashReports(b)) {
                    CrashlyticsController.this.sendSessionReports(b);
                }
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void submitAllReports(float f, s sVar) {
        if (sVar == null) {
            io.fabric.sdk.android.c.h().d(CrashlyticsCore.TAG, "Could not send reports. Settings are not available.");
            return;
        }
        new ReportUploader(this.appData.apiKey, getCreateReportSpiCall(sVar.f5725a.d), this.reportFilesProvider, this.handlingExceptionCheck).uploadReports(f, shouldPromptUserBeforeSendingCrashReports(sVar) ? new PrivacyDialogCheck(this.crashlyticsCore, this.preferenceManager, sVar.c) : new ReportUploader.AlwaysSendCheck());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeToLog(final long j, final String str) {
        this.backgroundWorker.submit(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsController.7
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                if (!CrashlyticsController.this.isHandlingException()) {
                    CrashlyticsController.this.logFileManager.writeToLog(j, str);
                    return null;
                }
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeNonFatalException(final Thread thread, final Throwable th) {
        final Date date = new Date();
        this.backgroundWorker.submit(new Runnable() { // from class: com.crashlytics.android.core.CrashlyticsController.8
            @Override // java.lang.Runnable
            public void run() {
                if (!CrashlyticsController.this.isHandlingException()) {
                    CrashlyticsController.this.doWriteNonFatal(date, thread, th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cacheUserData(final String str, final String str2, final String str3) {
        this.backgroundWorker.submit(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsController.9
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                new MetaDataStore(CrashlyticsController.this.getFilesDir()).writeUserData(CrashlyticsController.this.getCurrentSessionId(), new UserMetaData(str, str2, str3));
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cacheKeyData(final Map<String, String> map) {
        this.backgroundWorker.submit(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsController.10
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                new MetaDataStore(CrashlyticsController.this.getFilesDir()).writeKeyData(CrashlyticsController.this.getCurrentSessionId(), map);
                return null;
            }
        });
    }

    void openSession() {
        this.backgroundWorker.submit(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsController.11
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                CrashlyticsController.this.doOpenSession();
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getCurrentSessionId() {
        File[] listSortedSessionBeginFiles = listSortedSessionBeginFiles();
        if (listSortedSessionBeginFiles.length > 0) {
            return getSessionIdFromSessionFile(listSortedSessionBeginFiles[0]);
        }
        return null;
    }

    private String getPreviousSessionId() {
        File[] listSortedSessionBeginFiles = listSortedSessionBeginFiles();
        if (listSortedSessionBeginFiles.length > 1) {
            return getSessionIdFromSessionFile(listSortedSessionBeginFiles[1]);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getSessionIdFromSessionFile(File file) {
        return file.getName().substring(0, 35);
    }

    boolean hasOpenSession() {
        return listSessionBeginFiles().length > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean finalizeSessions(final p pVar) {
        return ((Boolean) this.backgroundWorker.submitAndWait(new Callable<Boolean>() { // from class: com.crashlytics.android.core.CrashlyticsController.12
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            /* renamed from: call */
            public Boolean mo37call() throws Exception {
                if (CrashlyticsController.this.isHandlingException()) {
                    io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Skipping session finalization because a crash has already occurred.");
                    return Boolean.FALSE;
                }
                io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Finalizing previously open sessions.");
                CrashlyticsController.this.doCloseSessions(pVar, true);
                io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Closed all previously open sessions");
                return Boolean.TRUE;
            }
        })).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doOpenSession() throws Exception {
        Date date = new Date();
        String clsuuid = new CLSUUID(this.idManager).toString();
        io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Opening a new session with ID " + clsuuid);
        writeBeginSession(clsuuid, date);
        writeSessionApp(clsuuid);
        writeSessionOS(clsuuid);
        writeSessionDevice(clsuuid);
        this.logFileManager.setCurrentSession(clsuuid);
    }

    void doCloseSessions(p pVar) throws Exception {
        doCloseSessions(pVar, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doCloseSessions(p pVar, boolean z) throws Exception {
        int i = z ? 1 : 0;
        trimOpenSessions(i + 8);
        File[] listSortedSessionBeginFiles = listSortedSessionBeginFiles();
        if (listSortedSessionBeginFiles.length <= i) {
            io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "No open sessions to be closed.");
            return;
        }
        writeSessionUser(getSessionIdFromSessionFile(listSortedSessionBeginFiles[i]));
        if (pVar == null) {
            io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Unable to close session. Settings are not loaded.");
        } else {
            closeOpenSessions(listSortedSessionBeginFiles, i, pVar.c);
        }
    }

    private void closeOpenSessions(File[] fileArr, int i, int i2) {
        io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Closing open sessions.");
        while (i < fileArr.length) {
            File file = fileArr[i];
            String sessionIdFromSessionFile = getSessionIdFromSessionFile(file);
            io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Closing session: " + sessionIdFromSessionFile);
            writeSessionPartsToSessionFile(file, sessionIdFromSessionFile, i2);
            i++;
        }
    }

    private void closeWithoutRenamingOrLog(ClsFileOutputStream clsFileOutputStream) {
        if (clsFileOutputStream != null) {
            try {
                clsFileOutputStream.closeInProgressStream();
            } catch (IOException e) {
                io.fabric.sdk.android.c.h().e(CrashlyticsCore.TAG, "Error closing session file stream in the presence of an exception", e);
            }
        }
    }

    private void deleteSessionPartFilesFor(String str) {
        for (File file : listSessionPartFilesFor(str)) {
            file.delete();
        }
    }

    private File[] listSessionPartFilesFor(String str) {
        return listFilesMatching(new SessionPartFileFilter(str));
    }

    File[] listCompleteSessionFiles() {
        LinkedList linkedList = new LinkedList();
        Collections.addAll(linkedList, listFilesMatching(getFatalSessionFilesDir(), SESSION_FILE_FILTER));
        Collections.addAll(linkedList, listFilesMatching(getNonFatalSessionFilesDir(), SESSION_FILE_FILTER));
        Collections.addAll(linkedList, listFilesMatching(getFilesDir(), SESSION_FILE_FILTER));
        return (File[]) linkedList.toArray(new File[linkedList.size()]);
    }

    File[] listSessionBeginFiles() {
        return listFilesMatching(new FileNameContainsFilter(SESSION_BEGIN_TAG));
    }

    private File[] listSortedSessionBeginFiles() {
        File[] listSessionBeginFiles = listSessionBeginFiles();
        Arrays.sort(listSessionBeginFiles, LARGEST_FILE_NAME_FIRST);
        return listSessionBeginFiles;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File[] listFilesMatching(FilenameFilter filenameFilter) {
        return listFilesMatching(getFilesDir(), filenameFilter);
    }

    private File[] listFilesMatching(File file, FilenameFilter filenameFilter) {
        return ensureFileArrayNotNull(file.listFiles(filenameFilter));
    }

    private File[] listFiles(File file) {
        return ensureFileArrayNotNull(file.listFiles());
    }

    private File[] ensureFileArrayNotNull(File[] fileArr) {
        return fileArr == null ? new File[0] : fileArr;
    }

    private void trimSessionEventFiles(String str, int i) {
        Utils.capFileCount(getFilesDir(), new FileNameContainsFilter(str + SESSION_NON_FATAL_TAG), i, SMALLEST_FILE_NAME_FIRST);
    }

    void trimSessionFiles(int i) {
        int capFileCount = i - Utils.capFileCount(getFatalSessionFilesDir(), i, SMALLEST_FILE_NAME_FIRST);
        Utils.capFileCount(getFilesDir(), SESSION_FILE_FILTER, capFileCount - Utils.capFileCount(getNonFatalSessionFilesDir(), capFileCount, SMALLEST_FILE_NAME_FIRST), SMALLEST_FILE_NAME_FIRST);
    }

    private void trimOpenSessions(int i) {
        HashSet hashSet = new HashSet();
        File[] listSortedSessionBeginFiles = listSortedSessionBeginFiles();
        int min = Math.min(i, listSortedSessionBeginFiles.length);
        for (int i2 = 0; i2 < min; i2++) {
            hashSet.add(getSessionIdFromSessionFile(listSortedSessionBeginFiles[i2]));
        }
        this.logFileManager.discardOldLogFiles(hashSet);
        retainSessions(listFilesMatching(new AnySessionPartFileFilter()), hashSet);
    }

    private void retainSessions(File[] fileArr, Set<String> set) {
        for (File file : fileArr) {
            String name = file.getName();
            Matcher matcher = SESSION_FILE_PATTERN.matcher(name);
            if (!matcher.matches()) {
                io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Deleting unknown file: " + name);
                file.delete();
                return;
            }
            if (!set.contains(matcher.group(1))) {
                io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Trimming session file: " + name);
                file.delete();
            }
        }
    }

    private File[] getTrimmedNonFatalFiles(String str, File[] fileArr, int i) {
        if (fileArr.length > i) {
            io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, String.format(Locale.US, "Trimming down to %d logged exceptions.", Integer.valueOf(i)));
            trimSessionEventFiles(str, i);
            return listFilesMatching(new FileNameContainsFilter(str + SESSION_NON_FATAL_TAG));
        }
        return fileArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cleanInvalidTempFiles() {
        this.backgroundWorker.submit(new Runnable() { // from class: com.crashlytics.android.core.CrashlyticsController.13
            @Override // java.lang.Runnable
            public void run() {
                CrashlyticsController.this.doCleanInvalidTempFiles(CrashlyticsController.this.listFilesMatching(new InvalidPartFileFilter()));
            }
        });
    }

    void doCleanInvalidTempFiles(File[] fileArr) {
        File[] listFilesMatching;
        final HashSet hashSet = new HashSet();
        for (File file : fileArr) {
            io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Found invalid session part file: " + file);
            hashSet.add(getSessionIdFromSessionFile(file));
        }
        if (!hashSet.isEmpty()) {
            File invalidFilesDir = getInvalidFilesDir();
            if (!invalidFilesDir.exists()) {
                invalidFilesDir.mkdir();
            }
            for (File file2 : listFilesMatching(new FilenameFilter() { // from class: com.crashlytics.android.core.CrashlyticsController.14
                @Override // java.io.FilenameFilter
                public boolean accept(File file3, String str) {
                    if (str.length() < 35) {
                        return false;
                    }
                    return hashSet.contains(str.substring(0, 35));
                }
            })) {
                io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Moving session file: " + file2);
                if (!file2.renameTo(new File(invalidFilesDir, file2.getName()))) {
                    io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Could not move session file. Deleting " + file2);
                    file2.delete();
                }
            }
            trimInvalidSessionFiles();
        }
    }

    private void trimInvalidSessionFiles() {
        File invalidFilesDir = getInvalidFilesDir();
        if (invalidFilesDir.exists()) {
            File[] listFilesMatching = listFilesMatching(invalidFilesDir, new InvalidPartFileFilter());
            Arrays.sort(listFilesMatching, Collections.reverseOrder());
            HashSet hashSet = new HashSet();
            for (int i = 0; i < listFilesMatching.length && hashSet.size() < 4; i++) {
                hashSet.add(getSessionIdFromSessionFile(listFilesMatching[i]));
            }
            retainSessions(listFiles(invalidFilesDir), hashSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.Closeable] */
    public void writeFatal(Date date, Thread thread, Throwable th) {
        ClsFileOutputStream clsFileOutputStream;
        CodedOutputStream codedOutputStream = null;
        try {
            String currentSessionId = getCurrentSessionId();
            if (currentSessionId == null) {
                io.fabric.sdk.android.c.h().e(CrashlyticsCore.TAG, "Tried to write a fatal exception while no session was open.", null);
                i.a((Flushable) null, "Failed to flush to session begin file.");
                i.a((Closeable) null, "Failed to close fatal exception file output stream.");
            } else {
                recordFatalExceptionAnswersEvent(currentSessionId, th.getClass().getName());
                ClsFileOutputStream clsFileOutputStream2 = new ClsFileOutputStream(getFilesDir(), currentSessionId + SESSION_FATAL_TAG);
                try {
                    codedOutputStream = CodedOutputStream.newInstance(clsFileOutputStream2);
                    writeSessionEvent(codedOutputStream, date, thread, th, EVENT_TYPE_CRASH, true);
                    i.a(codedOutputStream, "Failed to flush to session begin file.");
                    i.a((Closeable) clsFileOutputStream2, "Failed to close fatal exception file output stream.");
                } catch (Exception e) {
                    e = e;
                    clsFileOutputStream = clsFileOutputStream2;
                    try {
                        io.fabric.sdk.android.c.h().e(CrashlyticsCore.TAG, "An error occurred in the fatal exception logger", e);
                        i.a(codedOutputStream, "Failed to flush to session begin file.");
                        i.a((Closeable) clsFileOutputStream, "Failed to close fatal exception file output stream.");
                    } catch (Throwable th2) {
                        th = th2;
                        i.a(codedOutputStream, "Failed to flush to session begin file.");
                        i.a((Closeable) clsFileOutputStream, "Failed to close fatal exception file output stream.");
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    clsFileOutputStream = clsFileOutputStream2;
                    i.a(codedOutputStream, "Failed to flush to session begin file.");
                    i.a((Closeable) clsFileOutputStream, "Failed to close fatal exception file output stream.");
                    throw th;
                }
            }
        } catch (Exception e2) {
            e = e2;
            clsFileOutputStream = codedOutputStream;
        } catch (Throwable th4) {
            th = th4;
            clsFileOutputStream = codedOutputStream;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternalCrashEvent(final SessionEventData sessionEventData) {
        this.backgroundWorker.submit(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsController.15
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                if (!CrashlyticsController.this.isHandlingException()) {
                    CrashlyticsController.this.doWriteExternalCrashEvent(sessionEventData);
                    return null;
                }
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doWriteExternalCrashEvent(SessionEventData sessionEventData) throws IOException {
        ClsFileOutputStream clsFileOutputStream;
        boolean z = true;
        CodedOutputStream codedOutputStream = null;
        try {
            String previousSessionId = getPreviousSessionId();
            if (previousSessionId == null) {
                io.fabric.sdk.android.c.h().e(CrashlyticsCore.TAG, "Tried to write a native crash while no session was open.", null);
                i.a((Flushable) null, "Failed to flush to session begin file.");
                i.a((Closeable) null, "Failed to close fatal exception file output stream.");
                return;
            }
            recordFatalExceptionAnswersEvent(previousSessionId, String.format(Locale.US, "<native-crash [%s (%s)]>", sessionEventData.signal.code, sessionEventData.signal.name));
            if (sessionEventData.binaryImages == null || sessionEventData.binaryImages.length <= 0) {
                z = false;
            }
            clsFileOutputStream = new ClsFileOutputStream(getFilesDir(), previousSessionId + (z ? SESSION_FATAL_TAG : SESSION_EVENT_MISSING_BINARY_IMGS_TAG));
            try {
                try {
                    codedOutputStream = CodedOutputStream.newInstance(clsFileOutputStream);
                    NativeCrashWriter.writeNativeCrash(sessionEventData, new LogFileManager(this.crashlyticsCore.getContext(), this.logFileDirectoryProvider, previousSessionId), new MetaDataStore(getFilesDir()).readKeyData(previousSessionId), codedOutputStream);
                    i.a(codedOutputStream, "Failed to flush to session begin file.");
                    i.a((Closeable) clsFileOutputStream, "Failed to close fatal exception file output stream.");
                } catch (Exception e) {
                    e = e;
                    io.fabric.sdk.android.c.h().e(CrashlyticsCore.TAG, "An error occurred in the native crash logger", e);
                    i.a(codedOutputStream, "Failed to flush to session begin file.");
                    i.a((Closeable) clsFileOutputStream, "Failed to close fatal exception file output stream.");
                }
            } catch (Throwable th) {
                th = th;
                i.a(codedOutputStream, "Failed to flush to session begin file.");
                i.a((Closeable) clsFileOutputStream, "Failed to close fatal exception file output stream.");
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            clsFileOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            clsFileOutputStream = null;
            i.a(codedOutputStream, "Failed to flush to session begin file.");
            i.a((Closeable) clsFileOutputStream, "Failed to close fatal exception file output stream.");
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doWriteNonFatal(Date date, Thread thread, Throwable th) {
        ClsFileOutputStream clsFileOutputStream;
        ClsFileOutputStream clsFileOutputStream2;
        CodedOutputStream codedOutputStream = null;
        String currentSessionId = getCurrentSessionId();
        if (currentSessionId == null) {
            io.fabric.sdk.android.c.h().e(CrashlyticsCore.TAG, "Tried to write a non-fatal exception while no session was open.", null);
            return;
        }
        recordLoggedExceptionAnswersEvent(currentSessionId, th.getClass().getName());
        try {
            io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Crashlytics is logging non-fatal exception \"" + th + "\" from thread " + thread.getName());
            clsFileOutputStream2 = new ClsFileOutputStream(getFilesDir(), currentSessionId + SESSION_NON_FATAL_TAG + i.a(this.eventCounter.getAndIncrement()));
        } catch (Exception e) {
            e = e;
            clsFileOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            clsFileOutputStream = null;
        }
        try {
            try {
                codedOutputStream = CodedOutputStream.newInstance(clsFileOutputStream2);
                writeSessionEvent(codedOutputStream, date, thread, th, "error", false);
                i.a(codedOutputStream, "Failed to flush to non-fatal file.");
                i.a((Closeable) clsFileOutputStream2, "Failed to close non-fatal file output stream.");
            } catch (Exception e2) {
                e = e2;
                clsFileOutputStream = clsFileOutputStream2;
                try {
                    io.fabric.sdk.android.c.h().e(CrashlyticsCore.TAG, "An error occurred in the non-fatal exception logger", e);
                    i.a(codedOutputStream, "Failed to flush to non-fatal file.");
                    i.a((Closeable) clsFileOutputStream, "Failed to close non-fatal file output stream.");
                    trimSessionEventFiles(currentSessionId, 64);
                } catch (Throwable th3) {
                    th = th3;
                    i.a(codedOutputStream, "Failed to flush to non-fatal file.");
                    i.a((Closeable) clsFileOutputStream, "Failed to close non-fatal file output stream.");
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                clsFileOutputStream = clsFileOutputStream2;
                i.a(codedOutputStream, "Failed to flush to non-fatal file.");
                i.a((Closeable) clsFileOutputStream, "Failed to close non-fatal file output stream.");
                throw th;
            }
            trimSessionEventFiles(currentSessionId, 64);
        } catch (Exception e3) {
            io.fabric.sdk.android.c.h().e(CrashlyticsCore.TAG, "An error occurred when trimming non-fatal files.", e3);
        }
    }

    private void writeBeginSession(String str, Date date) throws Exception {
        ClsFileOutputStream clsFileOutputStream;
        CodedOutputStream codedOutputStream = null;
        try {
            clsFileOutputStream = new ClsFileOutputStream(getFilesDir(), str + SESSION_BEGIN_TAG);
            try {
                codedOutputStream = CodedOutputStream.newInstance(clsFileOutputStream);
                SessionProtobufHelper.writeBeginSession(codedOutputStream, str, String.format(Locale.US, GENERATOR_FORMAT, this.crashlyticsCore.getVersion()), date.getTime() / 1000);
                i.a(codedOutputStream, "Failed to flush to session begin file.");
                i.a((Closeable) clsFileOutputStream, "Failed to close begin session file.");
            } catch (Throwable th) {
                th = th;
                i.a(codedOutputStream, "Failed to flush to session begin file.");
                i.a((Closeable) clsFileOutputStream, "Failed to close begin session file.");
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            clsFileOutputStream = null;
        }
    }

    private void writeSessionApp(String str) throws Exception {
        ClsFileOutputStream clsFileOutputStream;
        CodedOutputStream newInstance;
        CodedOutputStream codedOutputStream = null;
        try {
            ClsFileOutputStream clsFileOutputStream2 = new ClsFileOutputStream(getFilesDir(), str + SESSION_APP_TAG);
            try {
                newInstance = CodedOutputStream.newInstance(clsFileOutputStream2);
            } catch (Throwable th) {
                th = th;
                clsFileOutputStream = clsFileOutputStream2;
            }
            try {
                SessionProtobufHelper.writeSessionApp(newInstance, this.idManager.c(), this.appData.apiKey, this.appData.versionCode, this.appData.versionName, this.idManager.b(), DeliveryMechanism.determineFrom(this.appData.installerPackageName).getId(), this.unityVersion);
                i.a(newInstance, "Failed to flush to session app file.");
                i.a((Closeable) clsFileOutputStream2, "Failed to close session app file.");
            } catch (Throwable th2) {
                clsFileOutputStream = clsFileOutputStream2;
                th = th2;
                codedOutputStream = newInstance;
                i.a(codedOutputStream, "Failed to flush to session app file.");
                i.a((Closeable) clsFileOutputStream, "Failed to close session app file.");
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            clsFileOutputStream = null;
        }
    }

    private void writeSessionOS(String str) throws Exception {
        ClsFileOutputStream clsFileOutputStream;
        CodedOutputStream codedOutputStream = null;
        try {
            clsFileOutputStream = new ClsFileOutputStream(getFilesDir(), str + SESSION_OS_TAG);
            try {
                codedOutputStream = CodedOutputStream.newInstance(clsFileOutputStream);
                SessionProtobufHelper.writeSessionOS(codedOutputStream, i.g(this.crashlyticsCore.getContext()));
                i.a(codedOutputStream, "Failed to flush to session OS file.");
                i.a((Closeable) clsFileOutputStream, "Failed to close session OS file.");
            } catch (Throwable th) {
                th = th;
                i.a(codedOutputStream, "Failed to flush to session OS file.");
                i.a((Closeable) clsFileOutputStream, "Failed to close session OS file.");
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            clsFileOutputStream = null;
        }
    }

    private void writeSessionDevice(String str) throws Exception {
        ClsFileOutputStream clsFileOutputStream = null;
        CodedOutputStream codedOutputStream = null;
        try {
            ClsFileOutputStream clsFileOutputStream2 = new ClsFileOutputStream(getFilesDir(), str + SESSION_DEVICE_TAG);
            try {
                codedOutputStream = CodedOutputStream.newInstance(clsFileOutputStream2);
                Context context = this.crashlyticsCore.getContext();
                StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
                SessionProtobufHelper.writeSessionDevice(codedOutputStream, this.idManager.h(), i.a(), Build.MODEL, Runtime.getRuntime().availableProcessors(), i.b(), statFs.getBlockCount() * statFs.getBlockSize(), i.f(context), this.idManager.i(), i.h(context), Build.MANUFACTURER, Build.PRODUCT);
                i.a(codedOutputStream, "Failed to flush session device info.");
                i.a((Closeable) clsFileOutputStream2, "Failed to close session device file.");
            } catch (Throwable th) {
                th = th;
                clsFileOutputStream = clsFileOutputStream2;
                i.a(codedOutputStream, "Failed to flush session device info.");
                i.a((Closeable) clsFileOutputStream, "Failed to close session device file.");
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void writeSessionUser(String str) throws Exception {
        ClsFileOutputStream clsFileOutputStream;
        CodedOutputStream codedOutputStream = null;
        try {
            clsFileOutputStream = new ClsFileOutputStream(getFilesDir(), str + SESSION_USER_TAG);
            try {
                codedOutputStream = CodedOutputStream.newInstance(clsFileOutputStream);
                UserMetaData userMetaData = getUserMetaData(str);
                if (userMetaData.isEmpty()) {
                    i.a(codedOutputStream, "Failed to flush session user file.");
                    i.a((Closeable) clsFileOutputStream, "Failed to close session user file.");
                    return;
                }
                SessionProtobufHelper.writeSessionUser(codedOutputStream, userMetaData.id, userMetaData.name, userMetaData.email);
                i.a(codedOutputStream, "Failed to flush session user file.");
                i.a((Closeable) clsFileOutputStream, "Failed to close session user file.");
            } catch (Throwable th) {
                th = th;
                i.a(codedOutputStream, "Failed to flush session user file.");
                i.a((Closeable) clsFileOutputStream, "Failed to close session user file.");
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            clsFileOutputStream = null;
        }
    }

    private void writeSessionEvent(CodedOutputStream codedOutputStream, Date date, Thread thread, Throwable th, String str, boolean z) throws Exception {
        Thread[] threadArr;
        Map<String, String> treeMap;
        TrimmedThrowableData trimmedThrowableData = new TrimmedThrowableData(th, this.stackTraceTrimmingStrategy);
        Context context = this.crashlyticsCore.getContext();
        long time = date.getTime() / 1000;
        Float c = i.c(context);
        int a2 = i.a(context, this.devicePowerStateListener.isPowerConnected());
        boolean d = i.d(context);
        int i = context.getResources().getConfiguration().orientation;
        long b = i.b() - i.b(context);
        long b2 = i.b(Environment.getDataDirectory().getPath());
        ActivityManager.RunningAppProcessInfo a3 = i.a(context.getPackageName(), context);
        LinkedList linkedList = new LinkedList();
        StackTraceElement[] stackTraceElementArr = trimmedThrowableData.stacktrace;
        String str2 = this.appData.buildId;
        String c2 = this.idManager.c();
        if (z) {
            Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
            threadArr = new Thread[allStackTraces.size()];
            int i2 = 0;
            Iterator<Map.Entry<Thread, StackTraceElement[]>> it = allStackTraces.entrySet().iterator();
            while (true) {
                int i3 = i2;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Thread, StackTraceElement[]> next = it.next();
                threadArr[i3] = next.getKey();
                linkedList.add(this.stackTraceTrimmingStrategy.getTrimmedStackTrace(next.getValue()));
                i2 = i3 + 1;
            }
        } else {
            threadArr = new Thread[0];
        }
        if (!i.a(context, COLLECT_CUSTOM_KEYS, true)) {
            treeMap = new TreeMap<>();
        } else {
            Map<String, String> attributes = this.crashlyticsCore.getAttributes();
            treeMap = (attributes == null || attributes.size() <= 1) ? attributes : new TreeMap<>(attributes);
        }
        SessionProtobufHelper.writeSessionEvent(codedOutputStream, time, str, trimmedThrowableData, thread, stackTraceElementArr, threadArr, linkedList, treeMap, this.logFileManager, a3, i, c2, str2, c, a2, d, b, b2);
    }

    private void writeSessionPartsToSessionFile(File file, String str, int i) {
        io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Collecting session parts for ID " + str);
        File[] listFilesMatching = listFilesMatching(new FileNameContainsFilter(str + SESSION_FATAL_TAG));
        boolean z = listFilesMatching != null && listFilesMatching.length > 0;
        io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, String.format(Locale.US, "Session %s has fatal exception: %s", str, Boolean.valueOf(z)));
        File[] listFilesMatching2 = listFilesMatching(new FileNameContainsFilter(str + SESSION_NON_FATAL_TAG));
        boolean z2 = listFilesMatching2 != null && listFilesMatching2.length > 0;
        io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, String.format(Locale.US, "Session %s has non-fatal exceptions: %s", str, Boolean.valueOf(z2)));
        if (z || z2) {
            synthesizeSessionFile(file, str, getTrimmedNonFatalFiles(str, listFilesMatching2, i), z ? listFilesMatching[0] : null);
        } else {
            io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "No events present for session ID " + str);
        }
        io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Removing session part files for ID " + str);
        deleteSessionPartFilesFor(str);
    }

    private void synthesizeSessionFile(File file, String str, File[] fileArr, File file2) {
        ClsFileOutputStream clsFileOutputStream;
        CodedOutputStream codedOutputStream = null;
        boolean z = file2 != null;
        File fatalSessionFilesDir = z ? getFatalSessionFilesDir() : getNonFatalSessionFilesDir();
        if (!fatalSessionFilesDir.exists()) {
            fatalSessionFilesDir.mkdirs();
        }
        try {
            clsFileOutputStream = new ClsFileOutputStream(fatalSessionFilesDir, str);
            try {
                try {
                    codedOutputStream = CodedOutputStream.newInstance(clsFileOutputStream);
                    io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Collecting SessionStart data for session ID " + str);
                    writeToCosFromFile(codedOutputStream, file);
                    codedOutputStream.writeUInt64(4, new Date().getTime() / 1000);
                    codedOutputStream.writeBool(5, z);
                    codedOutputStream.writeUInt32(11, 1);
                    codedOutputStream.writeEnum(12, 3);
                    writeInitialPartsTo(codedOutputStream, str);
                    writeNonFatalEventsTo(codedOutputStream, fileArr, str);
                    if (z) {
                        writeToCosFromFile(codedOutputStream, file2);
                    }
                    i.a(codedOutputStream, "Error flushing session file stream");
                    i.a((Closeable) clsFileOutputStream, "Failed to close CLS file");
                } catch (Exception e) {
                    e = e;
                    io.fabric.sdk.android.c.h().e(CrashlyticsCore.TAG, "Failed to write session file for session ID: " + str, e);
                    i.a(codedOutputStream, "Error flushing session file stream");
                    closeWithoutRenamingOrLog(clsFileOutputStream);
                }
            } catch (Throwable th) {
                th = th;
                i.a(codedOutputStream, "Error flushing session file stream");
                i.a((Closeable) clsFileOutputStream, "Failed to close CLS file");
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            clsFileOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            clsFileOutputStream = null;
            i.a(codedOutputStream, "Error flushing session file stream");
            i.a((Closeable) clsFileOutputStream, "Failed to close CLS file");
            throw th;
        }
    }

    private static void writeNonFatalEventsTo(CodedOutputStream codedOutputStream, File[] fileArr, String str) {
        Arrays.sort(fileArr, i.f5669a);
        for (File file : fileArr) {
            try {
                io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, String.format(Locale.US, "Found Non Fatal for session ID %s in %s ", str, file.getName()));
                writeToCosFromFile(codedOutputStream, file);
            } catch (Exception e) {
                io.fabric.sdk.android.c.h().e(CrashlyticsCore.TAG, "Error writting non-fatal to session.", e);
            }
        }
    }

    private void writeInitialPartsTo(CodedOutputStream codedOutputStream, String str) throws IOException {
        String[] strArr;
        for (String str2 : INITIAL_SESSION_PART_TAGS) {
            File[] listFilesMatching = listFilesMatching(new FileNameContainsFilter(str + str2));
            if (listFilesMatching.length == 0) {
                io.fabric.sdk.android.c.h().e(CrashlyticsCore.TAG, "Can't find " + str2 + " data for session ID " + str, null);
            } else {
                io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Collecting " + str2 + " data for session ID " + str);
                writeToCosFromFile(codedOutputStream, listFilesMatching[0]);
            }
        }
    }

    private static void writeToCosFromFile(CodedOutputStream codedOutputStream, File file) throws IOException {
        FileInputStream fileInputStream;
        if (!file.exists()) {
            io.fabric.sdk.android.c.h().e(CrashlyticsCore.TAG, "Tried to include a file that doesn't exist: " + file.getName(), null);
            return;
        }
        try {
            fileInputStream = new FileInputStream(file);
            try {
                copyToCodedOutputStream(fileInputStream, codedOutputStream, (int) file.length());
                i.a((Closeable) fileInputStream, "Failed to close file input stream.");
            } catch (Throwable th) {
                th = th;
                i.a((Closeable) fileInputStream, "Failed to close file input stream.");
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
    }

    private static void copyToCodedOutputStream(InputStream inputStream, CodedOutputStream codedOutputStream, int i) throws IOException {
        int read;
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < bArr.length && (read = inputStream.read(bArr, i2, bArr.length - i2)) >= 0) {
            i2 += read;
        }
        codedOutputStream.writeRawBytes(bArr);
    }

    private UserMetaData getUserMetaData(String str) {
        return isHandlingException() ? new UserMetaData(this.crashlyticsCore.getUserIdentifier(), this.crashlyticsCore.getUserName(), this.crashlyticsCore.getUserEmail()) : new MetaDataStore(getFilesDir()).readUserData(str);
    }

    boolean isHandlingException() {
        return this.crashHandler != null && this.crashHandler.isHandlingException();
    }

    File getFilesDir() {
        return this.fileStore.a();
    }

    File getFatalSessionFilesDir() {
        return new File(getFilesDir(), FATAL_SESSION_DIR);
    }

    File getNonFatalSessionFilesDir() {
        return new File(getFilesDir(), NONFATAL_SESSION_DIR);
    }

    File getInvalidFilesDir() {
        return new File(getFilesDir(), INVALID_CLS_CACHE_DIR);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldPromptUserBeforeSendingCrashReports(s sVar) {
        return sVar != null && sVar.d.f5719a && !this.preferenceManager.shouldAlwaysSendReports();
    }

    private CreateReportSpiCall getCreateReportSpiCall(String str) {
        return new DefaultCreateReportSpiCall(this.crashlyticsCore, i.b(this.crashlyticsCore.getContext(), CRASHLYTICS_API_ENDPOINT), str, this.httpRequestFactory);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendSessionReports(s sVar) {
        if (sVar == null) {
            io.fabric.sdk.android.c.h().d(CrashlyticsCore.TAG, "Cannot send reports. Settings are unavailable.");
            return;
        }
        Context context = this.crashlyticsCore.getContext();
        ReportUploader reportUploader = new ReportUploader(this.appData.apiKey, getCreateReportSpiCall(sVar.f5725a.d), this.reportFilesProvider, this.handlingExceptionCheck);
        for (File file : listCompleteSessionFiles()) {
            this.backgroundWorker.submit(new SendReportRunnable(context, new SessionReport(file, SEND_AT_CRASHTIME_HEADER), reportUploader));
        }
    }

    private static void recordLoggedExceptionAnswersEvent(String str, String str2) {
        Answers answers = (Answers) io.fabric.sdk.android.c.a(Answers.class);
        if (answers == null) {
            io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Answers is not available");
        } else {
            answers.onException(new j.b(str, str2));
        }
    }

    private static void recordFatalExceptionAnswersEvent(String str, String str2) {
        Answers answers = (Answers) io.fabric.sdk.android.c.a(Answers.class);
        if (answers == null) {
            io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Answers is not available");
        } else {
            answers.onException(new j.a(str, str2));
        }
    }

    /* loaded from: classes.dex */
    private final class ReportUploaderHandlingExceptionCheck implements ReportUploader.HandlingExceptionCheck {
        private ReportUploaderHandlingExceptionCheck() {
        }

        @Override // com.crashlytics.android.core.ReportUploader.HandlingExceptionCheck
        public boolean isHandlingException() {
            return CrashlyticsController.this.isHandlingException();
        }
    }

    /* loaded from: classes.dex */
    private final class ReportUploaderFilesProvider implements ReportUploader.ReportFilesProvider {
        private ReportUploaderFilesProvider() {
        }

        @Override // com.crashlytics.android.core.ReportUploader.ReportFilesProvider
        public File[] getCompleteSessionFiles() {
            return CrashlyticsController.this.listCompleteSessionFiles();
        }

        @Override // com.crashlytics.android.core.ReportUploader.ReportFilesProvider
        public File[] getInvalidSessionFiles() {
            return CrashlyticsController.this.getInvalidFilesDir().listFiles();
        }
    }

    /* loaded from: classes.dex */
    private static final class PrivacyDialogCheck implements ReportUploader.SendCheck {
        private final h kit;
        private final PreferenceManager preferenceManager;
        private final o promptData;

        public PrivacyDialogCheck(h hVar, PreferenceManager preferenceManager, o oVar) {
            this.kit = hVar;
            this.preferenceManager = preferenceManager;
            this.promptData = oVar;
        }

        @Override // com.crashlytics.android.core.ReportUploader.SendCheck
        public boolean canSendReports() {
            Activity b = this.kit.getFabric().b();
            if (b == null || b.isFinishing()) {
                return true;
            }
            final CrashPromptDialog create = CrashPromptDialog.create(b, this.promptData, new CrashPromptDialog.AlwaysSendCallback() { // from class: com.crashlytics.android.core.CrashlyticsController.PrivacyDialogCheck.1
                @Override // com.crashlytics.android.core.CrashPromptDialog.AlwaysSendCallback
                public void sendUserReportsWithoutPrompting(boolean z) {
                    PrivacyDialogCheck.this.preferenceManager.setShouldAlwaysSendReports(z);
                }
            });
            b.runOnUiThread(new Runnable() { // from class: com.crashlytics.android.core.CrashlyticsController.PrivacyDialogCheck.2
                @Override // java.lang.Runnable
                public void run() {
                    create.show();
                }
            });
            io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Waiting for user opt-in.");
            create.await();
            return create.getOptIn();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class SendReportRunnable implements Runnable {
        private final Context context;
        private final Report report;
        private final ReportUploader reportUploader;

        public SendReportRunnable(Context context, Report report, ReportUploader reportUploader) {
            this.context = context;
            this.report = report;
            this.reportUploader = reportUploader;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (i.n(this.context)) {
                io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Attempting to send crash report at time of crash...");
                this.reportUploader.forceUpload(this.report);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class LogFileDirectoryProvider implements LogFileManager.DirectoryProvider {
        private static final String LOG_FILES_DIR = "log-files";
        private final a rootFileStore;

        public LogFileDirectoryProvider(a aVar) {
            this.rootFileStore = aVar;
        }

        @Override // com.crashlytics.android.core.LogFileManager.DirectoryProvider
        public File getLogFileDir() {
            File file = new File(this.rootFileStore.a(), LOG_FILES_DIR);
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        }
    }
}

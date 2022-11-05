package com.amazon.device.ads;

import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class MobileAdsLogger implements Logger {
    private static final String DEFAULT_LOGTAG_PREFIX = "AmazonMobileAds";
    private static final int DEFAULT_MAX_LENGTH = 1000;
    static final String LOGGING_ENABLED = "loggingEnabled";
    private final DebugProperties debugProperties;
    private final Logger logger;
    private int maxLength;
    private final Settings settings;

    /* loaded from: classes.dex */
    public enum Level {
        DEBUG,
        ERROR,
        INFO,
        VERBOSE,
        WARN
    }

    public MobileAdsLogger(Logger logger) {
        this(logger, DebugProperties.getInstance(), Settings.getInstance());
    }

    MobileAdsLogger(Logger logger, DebugProperties debugProperties, Settings settings) {
        this.maxLength = 1000;
        this.logger = logger.mo33withLogTag(DEFAULT_LOGTAG_PREFIX);
        this.debugProperties = debugProperties;
        this.settings = settings;
    }

    public MobileAdsLogger withMaxLength(int i) {
        this.maxLength = i;
        return this;
    }

    @Override // com.amazon.device.ads.Logger
    /* renamed from: withLogTag  reason: collision with other method in class */
    public MobileAdsLogger mo33withLogTag(String str) {
        this.logger.mo33withLogTag("AmazonMobileAds " + str);
        return this;
    }

    public void enableLogging(boolean z) {
        this.settings.putTransientBoolean(LOGGING_ENABLED, z);
    }

    public boolean canLog() {
        if (this.logger == null || this.debugProperties == null) {
            return false;
        }
        return this.debugProperties.getDebugPropertyAsBoolean(DebugProperties.DEBUG_LOGGING, Boolean.valueOf(this.settings.getBoolean(LOGGING_ENABLED, false))).booleanValue();
    }

    public final void enableLoggingWithSetterNotification(boolean z) {
        if (!z) {
            logSetterNotification("Debug logging", Boolean.valueOf(z));
        }
        enableLogging(z);
        if (z) {
            logSetterNotification("Debug logging", Boolean.valueOf(z));
            d("Amazon Mobile Ads API Version: %s", Version.getRawSDKVersion());
        }
    }

    public void logSetterNotification(String str, Object obj) {
        if (canLog()) {
            if (obj instanceof Boolean) {
                Object[] objArr = new Object[2];
                objArr[0] = str;
                objArr[1] = ((Boolean) obj).booleanValue() ? "enabled" : "disabled";
                d("%s has been %s.", objArr);
                return;
            }
            d("%s has been set: %s", str, String.valueOf(obj));
        }
    }

    public void i(String str, Object... objArr) {
        log(Level.INFO, str, objArr);
    }

    public void v(String str, Object... objArr) {
        log(Level.VERBOSE, str, objArr);
    }

    public void d(String str, Object... objArr) {
        log(Level.DEBUG, str, objArr);
    }

    public void w(String str, Object... objArr) {
        log(Level.WARN, str, objArr);
    }

    public void e(String str, Object... objArr) {
        log(Level.ERROR, str, objArr);
    }

    @Override // com.amazon.device.ads.Logger
    public void i(String str) {
        i(str, null);
    }

    @Override // com.amazon.device.ads.Logger
    public void v(String str) {
        v(str, null);
    }

    @Override // com.amazon.device.ads.Logger
    public void d(String str) {
        d(str, null);
    }

    @Override // com.amazon.device.ads.Logger
    public void w(String str) {
        w(str, null);
    }

    @Override // com.amazon.device.ads.Logger
    public void e(String str) {
        e(str, null);
    }

    public void log(Level level, String str, Object... objArr) {
        doLog(false, level, str, objArr);
    }

    public void forceLog(Level level, String str, Object... objArr) {
        doLog(true, level, str, objArr);
    }

    private void doLog(boolean z, Level level, String str, Object... objArr) {
        if (canLog() || z) {
            for (String str2 : formatAndSplit(str, objArr)) {
                switch (level) {
                    case DEBUG:
                        this.logger.d(str2);
                        break;
                    case ERROR:
                        this.logger.e(str2);
                        break;
                    case INFO:
                        this.logger.i(str2);
                        break;
                    case VERBOSE:
                        this.logger.v(str2);
                        break;
                    case WARN:
                        this.logger.w(str2);
                        break;
                }
            }
        }
    }

    private Iterable<String> formatAndSplit(String str, Object... objArr) {
        if (objArr != null && objArr.length > 0) {
            str = String.format(str, objArr);
        }
        return split(str, this.maxLength);
    }

    private Iterable<String> split(String str, int i) {
        ArrayList arrayList = new ArrayList();
        if (str == null || str.length() == 0) {
            return arrayList;
        }
        int i2 = 0;
        while (i2 < str.length()) {
            arrayList.add(str.substring(i2, Math.min(str.length(), i2 + i)));
            i2 += i;
        }
        return arrayList;
    }
}

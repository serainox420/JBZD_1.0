package com.unity3d.ads.log;

import android.util.Log;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import java.io.File;
import java.lang.reflect.Method;
import java.util.HashMap;
/* loaded from: classes3.dex */
public class DeviceLog {
    private static boolean FORCE_DEBUG_LOG = false;
    public static final int LOGLEVEL_DEBUG = 8;
    private static final int LOGLEVEL_ERROR = 1;
    public static final int LOGLEVEL_INFO = 4;
    private static final int LOGLEVEL_WARNING = 2;
    private static boolean LOG_ERROR = true;
    private static boolean LOG_WARNING = true;
    private static boolean LOG_INFO = true;
    private static boolean LOG_DEBUG = true;
    private static final HashMap<UnityAdsLogLevel, DeviceLogLevel> _deviceLogLevel = new HashMap<>();

    /* loaded from: classes3.dex */
    public enum UnityAdsLogLevel {
        INFO,
        DEBUG,
        WARNING,
        ERROR
    }

    static {
        FORCE_DEBUG_LOG = false;
        if (_deviceLogLevel.size() == 0) {
            _deviceLogLevel.put(UnityAdsLogLevel.INFO, new DeviceLogLevel("i"));
            _deviceLogLevel.put(UnityAdsLogLevel.DEBUG, new DeviceLogLevel(PhoenixConstants.DEBUG_PARAM));
            _deviceLogLevel.put(UnityAdsLogLevel.WARNING, new DeviceLogLevel("w"));
            _deviceLogLevel.put(UnityAdsLogLevel.ERROR, new DeviceLogLevel("e"));
        }
        if (new File("/data/local/tmp/UnityAdsForceDebugMode").exists()) {
            FORCE_DEBUG_LOG = true;
        }
    }

    public static void setLogLevel(int i) {
        if (i >= 8) {
            LOG_ERROR = true;
            LOG_WARNING = true;
            LOG_INFO = true;
            LOG_DEBUG = true;
        } else if (i >= 4) {
            LOG_ERROR = true;
            LOG_WARNING = true;
            LOG_INFO = true;
            LOG_DEBUG = false;
        } else if (i >= 2) {
            LOG_ERROR = true;
            LOG_WARNING = true;
            LOG_INFO = false;
            LOG_DEBUG = false;
        } else if (i >= 1) {
            LOG_ERROR = true;
            LOG_WARNING = false;
            LOG_INFO = false;
            LOG_DEBUG = false;
        } else {
            LOG_ERROR = false;
            LOG_WARNING = false;
            LOG_INFO = false;
            LOG_DEBUG = false;
        }
    }

    public static void entered() {
        debug("ENTERED METHOD");
    }

    public static void info(String str) {
        write(UnityAdsLogLevel.INFO, checkMessage(str));
    }

    public static void info(String str, Object... objArr) {
        info(String.format(str, objArr));
    }

    public static void debug(String str) {
        if (str.length() > 3072) {
            debug(str.substring(0, 3072));
            if (str.length() < 30720) {
                debug(str.substring(3072));
                return;
            }
            return;
        }
        write(UnityAdsLogLevel.DEBUG, checkMessage(str));
    }

    public static void debug(String str, Object... objArr) {
        debug(String.format(str, objArr));
    }

    public static void warning(String str) {
        write(UnityAdsLogLevel.WARNING, checkMessage(str));
    }

    public static void warning(String str, Object... objArr) {
        warning(String.format(str, objArr));
    }

    public static void error(String str) {
        write(UnityAdsLogLevel.ERROR, checkMessage(str));
    }

    public static void exception(String str, Exception exc) {
        String str2 = "";
        if (str != null) {
            str2 = str2 + str;
        }
        if (exc != null) {
            str2 = str2 + ": " + exc.getMessage();
        }
        if (exc != null && exc.getCause() != null) {
            str2 = str2 + ": " + exc.getCause().getMessage();
        }
        write(UnityAdsLogLevel.ERROR, str2);
    }

    public static void error(String str, Object... objArr) {
        error(String.format(str, objArr));
    }

    private static void write(UnityAdsLogLevel unityAdsLogLevel, String str) {
        boolean z;
        boolean z2 = true;
        switch (unityAdsLogLevel) {
            case INFO:
                z = LOG_INFO;
                break;
            case DEBUG:
                z = LOG_DEBUG;
                break;
            case WARNING:
                z = LOG_WARNING;
                break;
            case ERROR:
                z = LOG_ERROR;
                break;
            default:
                z = true;
                break;
        }
        if (!FORCE_DEBUG_LOG) {
            z2 = z;
        }
        if (z2) {
            writeToLog(createLogEntry(unityAdsLogLevel, str));
        }
    }

    private static String checkMessage(String str) {
        if (str == null || str.length() == 0) {
            return "DO NOT USE EMPTY MESSAGES, use DeviceLog.entered() instead";
        }
        return str;
    }

    private static DeviceLogLevel getLogLevel(UnityAdsLogLevel unityAdsLogLevel) {
        return _deviceLogLevel.get(unityAdsLogLevel);
    }

    private static DeviceLogEntry createLogEntry(UnityAdsLogLevel unityAdsLogLevel, String str) {
        boolean z = false;
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        DeviceLogLevel logLevel = getLogLevel(unityAdsLogLevel);
        if (logLevel != null) {
            int i = 0;
            while (i < stackTrace.length) {
                StackTraceElement stackTraceElement = stackTrace[i];
                if (stackTraceElement.getClassName().equals(DeviceLog.class.getName())) {
                    z = true;
                }
                if (!stackTraceElement.getClassName().equals(DeviceLog.class.getName()) && z) {
                    break;
                }
                i++;
            }
            StackTraceElement stackTraceElement2 = i < stackTrace.length ? stackTrace[i] : null;
            if (stackTraceElement2 != null) {
                return new DeviceLogEntry(logLevel, str, stackTraceElement2);
            }
        }
        return null;
    }

    private static void writeToLog(DeviceLogEntry deviceLogEntry) {
        Method method;
        if (deviceLogEntry != null && deviceLogEntry.getLogLevel() != null) {
            try {
                method = Log.class.getMethod(deviceLogEntry.getLogLevel().getReceivingMethodName(), String.class, String.class);
            } catch (Exception e) {
                Log.e("UnityAds", "Writing to log failed!", e);
                method = null;
            }
            if (method != null) {
                try {
                    method.invoke(null, deviceLogEntry.getLogLevel().getLogTag(), deviceLogEntry.getParsedMessage());
                } catch (Exception e2) {
                    Log.e("UnityAds", "Writing to log failed!", e2);
                }
            }
        }
    }
}

package com.openx.common.utils.logger;
/* loaded from: classes3.dex */
public class OXLog {
    public static final int ASSERT = 7;
    public static final int DEBUG = 3;
    public static final int ERROR = 6;
    public static final int INFO = 4;
    public static final int NONE = -1;
    public static final int VERBOSE = 2;
    public static final int WARN = 5;
    private static int logLevel;
    private static OXLogNodeInterface mLogNode;

    public static OXLogNodeInterface getLogNode() {
        return mLogNode;
    }

    public static void setLogNode(OXLogNodeInterface oXLogNodeInterface) {
        mLogNode = oXLogNodeInterface;
    }

    public static void setLogLevel(int i) {
        logLevel = i;
    }

    public static int getLogLevel() {
        return logLevel;
    }

    private static void println(int i, String str, String str2, Throwable th) {
        if (mLogNode != null) {
            mLogNode.print(i, str, str2, th);
        }
    }

    public static void println(int i, String str, String str2) {
        println(i, str, str2, null);
    }

    private static void v(String str, String str2, Throwable th) {
        println(2, str, str2, th);
    }

    public static void verbose(String str, String str2) {
        v(str, str2, null);
    }

    private static void d(String str, String str2, Throwable th) {
        println(3, str, str2, th);
    }

    public static void debug(String str, String str2) {
        d(str, str2, null);
    }

    public static void i(String str, String str2, Throwable th) {
        println(4, str, str2, th);
    }

    public static void info(String str, String str2) {
        i(str, str2, null);
    }

    private static void w(String str, String str2, Throwable th) {
        println(5, str, str2, th);
    }

    public static void warn(String str, String str2) {
        w(str, str2, null);
    }

    private static void w(String str, Throwable th) {
        w(str, null, th);
    }

    private static void e(String str, String str2, Throwable th) {
        println(6, str, str2, th);
    }

    public static void error(String str, String str2) {
        e(str, str2, null);
    }

    private static void wtf(String str, String str2, Throwable th) {
        println(7, str, str2, th);
    }

    public static void assertLog(String str, String str2) {
        wtf(str, str2, null);
    }

    private static void wtf(String str, Throwable th) {
        wtf(str, null, th);
    }
}

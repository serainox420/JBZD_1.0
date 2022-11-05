package net.gotev.uploadservice;
/* loaded from: classes3.dex */
public class Logger {

    /* renamed from: a  reason: collision with root package name */
    private LogLevel f5827a;
    private a b;

    /* loaded from: classes3.dex */
    public enum LogLevel {
        DEBUG,
        INFO,
        ERROR,
        OFF
    }

    /* loaded from: classes3.dex */
    public interface a {
        void a(String str, String str2);

        void a(String str, String str2, Throwable th);

        void b(String str, String str2);

        void c(String str, String str2);
    }

    private Logger() {
        this.f5827a = LogLevel.OFF;
        this.b = new net.gotev.uploadservice.b();
    }

    /* loaded from: classes3.dex */
    private static class b {

        /* renamed from: a  reason: collision with root package name */
        private static final Logger f5829a = new Logger();
    }

    public static void a(String str, String str2) {
        if (b.f5829a.f5827a.compareTo(LogLevel.ERROR) <= 0) {
            b.f5829a.b.a(str, str2);
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (b.f5829a.f5827a.compareTo(LogLevel.ERROR) <= 0) {
            b.f5829a.b.a(str, str2, th);
        }
    }

    public static void b(String str, String str2) {
        if (b.f5829a.f5827a.compareTo(LogLevel.INFO) <= 0) {
            b.f5829a.b.c(str, str2);
        }
    }

    public static void c(String str, String str2) {
        if (b.f5829a.f5827a.compareTo(LogLevel.DEBUG) <= 0) {
            b.f5829a.b.b(str, str2);
        }
    }
}

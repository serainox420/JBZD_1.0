package io.realm.internal.async;

import edu.umd.cs.findbugs.annotations.SuppressWarnings;
import java.io.File;
import java.io.FileFilter;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;
/* compiled from: RealmThreadPoolExecutor.java */
/* loaded from: classes3.dex */
public class c extends ThreadPoolExecutor {

    /* renamed from: a  reason: collision with root package name */
    private static final int f5790a = b();
    private boolean b;
    private ReentrantLock c;
    private Condition d;

    public static c a() {
        return new c(f5790a, f5790a);
    }

    @SuppressWarnings({"DMI_HARDCODED_ABSOLUTE_FILENAME"})
    private static int b() {
        int a2 = a("/sys/devices/system/cpu/", "cpu[0-9]+");
        if (a2 <= 0) {
            a2 = Runtime.getRuntime().availableProcessors();
        }
        if (a2 <= 0) {
            return 1;
        }
        return (a2 * 2) + 1;
    }

    private static int a(String str, String str2) {
        final Pattern compile = Pattern.compile(str2);
        try {
            File[] listFiles = new File(str).listFiles(new FileFilter() { // from class: io.realm.internal.async.c.1
                @Override // java.io.FileFilter
                public boolean accept(File file) {
                    return compile.matcher(file.getName()).matches();
                }
            });
            if (listFiles != null) {
                return listFiles.length;
            }
            return 0;
        } catch (SecurityException e) {
            return 0;
        }
    }

    private c(int i, int i2) {
        super(i, i2, 0L, TimeUnit.MILLISECONDS, new ArrayBlockingQueue(100));
        this.c = new ReentrantLock();
        this.d = this.c.newCondition();
    }

    public Future<?> a(Runnable runnable) {
        return super.submit(new a(runnable));
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void beforeExecute(Thread thread, Runnable runnable) {
        super.beforeExecute(thread, runnable);
        this.c.lock();
        while (this.b) {
            try {
                this.d.await();
            } catch (InterruptedException e) {
                thread.interrupt();
                return;
            } finally {
                this.c.unlock();
            }
        }
    }
}

package com.intentsoftware.addapptr.c;

import android.content.Context;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
/* compiled from: ServerLogger.java */
/* loaded from: classes2.dex */
public class h {
    private static final String LOG_SERVER_URL = "https://loghost.aatkit.com/cgi-bin/logger.cgi";
    private static final int LOG_SIZE = 200;
    private static final Queue<String> log = new a(200);
    private static String packageName;

    /* compiled from: ServerLogger.java */
    /* loaded from: classes2.dex */
    private static class a<E> extends LinkedList<E> {
        private static final long serialVersionUID = 4316451401243918780L;
        private final int limit;

        a(int i) {
            this.limit = i;
        }

        @Override // java.util.LinkedList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List, java.util.Deque, java.util.Queue
        public boolean add(E e) {
            super.add(e);
            while (size() > this.limit) {
                super.remove();
            }
            return true;
        }
    }

    public static void init(Context context) {
        packageName = context.getApplicationContext().getPackageName();
    }

    public static void log(String str) {
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        if (c.isLoggable(2)) {
            c.v(h.class, "adding log line: " + str);
        }
        log.add(currentTimeMillis + ": " + str + "\n");
    }

    public static void writeLog(String str) {
        String str2;
        Iterator<String> it;
        String str3;
        String str4 = "https://loghost.aatkit.com/cgi-bin/logger.cgi?" + (packageName + "_Trigger." + str + ".txt");
        String str5 = "";
        while (true) {
            str3 = str5;
            if (!log.iterator().hasNext()) {
                break;
            }
            str5 = str3 + it.next();
        }
        String str6 = (str3 + str2) + "\n------------------------------------------------------\n";
        if (c.isLoggable(2)) {
            c.v(h.class, "sending log file, trigger: " + str);
            c.v(h.class, "contents:\n" + str6);
        }
        try {
            new com.intentsoftware.addapptr.b.d(str4, str6);
        } catch (Exception e) {
            if (c.isLoggable(6)) {
                c.e(h.class, "Error sending logs to server: " + e.getMessage());
            }
            e.printStackTrace();
        }
    }
}

package com.google.android.gms.analytics;

import android.content.Context;
import com.google.android.gms.analytics.HitBuilders;
import com.google.android.gms.internal.zztc;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.lang.Thread;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class ExceptionReporter implements Thread.UncaughtExceptionHandler {
    private final Context mContext;
    private final Thread.UncaughtExceptionHandler zzabC;
    private final Tracker zzabD;
    private ExceptionParser zzabE;
    private GoogleAnalytics zzabF;

    public ExceptionReporter(Tracker tracker, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Context context) {
        if (tracker == null) {
            throw new NullPointerException("tracker cannot be null");
        }
        if (context == null) {
            throw new NullPointerException(AdTrackerConstants.MSG_APP_CONTEXT_NULL);
        }
        this.zzabC = uncaughtExceptionHandler;
        this.zzabD = tracker;
        this.zzabE = new StandardExceptionParser(context, new ArrayList());
        this.mContext = context.getApplicationContext();
        String valueOf = String.valueOf(uncaughtExceptionHandler == null ? "null" : uncaughtExceptionHandler.getClass().getName());
        zztc.v(valueOf.length() != 0 ? "ExceptionReporter created, original handler is ".concat(valueOf) : new String("ExceptionReporter created, original handler is "));
    }

    public ExceptionParser getExceptionParser() {
        return this.zzabE;
    }

    public void setExceptionParser(ExceptionParser exceptionParser) {
        this.zzabE = exceptionParser;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        String str = "UncaughtException";
        if (this.zzabE != null) {
            str = this.zzabE.getDescription(thread != null ? thread.getName() : null, th);
        }
        String valueOf = String.valueOf(str);
        zztc.v(valueOf.length() != 0 ? "Reporting uncaught exception: ".concat(valueOf) : new String("Reporting uncaught exception: "));
        this.zzabD.send(new HitBuilders.ExceptionBuilder().setDescription(str).setFatal(true).build());
        GoogleAnalytics zzmu = zzmu();
        zzmu.dispatchLocalHits();
        zzmu.zzmz();
        if (this.zzabC != null) {
            zztc.v("Passing exception to the original handler");
            this.zzabC.uncaughtException(thread, th);
        }
    }

    GoogleAnalytics zzmu() {
        if (this.zzabF == null) {
            this.zzabF = GoogleAnalytics.getInstance(this.mContext);
        }
        return this.zzabF;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Thread.UncaughtExceptionHandler zzmv() {
        return this.zzabC;
    }
}

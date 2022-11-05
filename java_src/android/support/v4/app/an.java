package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.RestrictTo;
import android.support.v4.app.aw;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* compiled from: NotificationCompatBase.java */
@TargetApi(9)
@RestrictTo
/* loaded from: classes.dex */
public class an {

    /* renamed from: a  reason: collision with root package name */
    private static Method f239a;

    /* compiled from: NotificationCompatBase.java */
    /* loaded from: classes.dex */
    public static abstract class a {

        /* compiled from: NotificationCompatBase.java */
        /* renamed from: android.support.v4.app.an$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public interface InterfaceC0011a {
        }

        public abstract int a();

        public abstract CharSequence b();

        public abstract PendingIntent c();

        public abstract Bundle d();

        public abstract boolean e();

        public abstract aw.a[] g();
    }

    public static Notification a(Notification notification, Context context, CharSequence charSequence, CharSequence charSequence2, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
        if (f239a == null) {
            try {
                f239a = Notification.class.getMethod("setLatestEventInfo", Context.class, CharSequence.class, CharSequence.class, PendingIntent.class);
            } catch (NoSuchMethodException e) {
                throw new RuntimeException(e);
            }
        }
        try {
            f239a.invoke(notification, context, charSequence, charSequence2, pendingIntent);
            notification.fullScreenIntent = pendingIntent2;
            return notification;
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }
}

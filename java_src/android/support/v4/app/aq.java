package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.an;
import android.util.Log;
import android.util.SparseArray;
import android.widget.RemoteViews;
import com.facebook.applinks.AppLinkData;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: NotificationCompatJellybean.java */
@TargetApi(16)
/* loaded from: classes.dex */
class aq {
    private static Field b;
    private static boolean c;

    /* renamed from: a  reason: collision with root package name */
    private static final Object f241a = new Object();
    private static final Object d = new Object();

    /* compiled from: NotificationCompatJellybean.java */
    /* loaded from: classes.dex */
    public static class a implements ah, ai {

        /* renamed from: a  reason: collision with root package name */
        private Notification.Builder f242a;
        private final Bundle b;
        private List<Bundle> c = new ArrayList();
        private RemoteViews d;
        private RemoteViews e;

        public a(Context context, Notification notification, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, RemoteViews remoteViews, int i, PendingIntent pendingIntent, PendingIntent pendingIntent2, Bitmap bitmap, int i2, int i3, boolean z, boolean z2, int i4, CharSequence charSequence4, boolean z3, Bundle bundle, String str, boolean z4, String str2, RemoteViews remoteViews2, RemoteViews remoteViews3) {
            this.f242a = new Notification.Builder(context).setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteViews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(charSequence).setContentText(charSequence2).setSubText(charSequence4).setContentInfo(charSequence3).setContentIntent(pendingIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(pendingIntent2, (notification.flags & 128) != 0).setLargeIcon(bitmap).setNumber(i).setUsesChronometer(z2).setPriority(i4).setProgress(i2, i3, z);
            this.b = new Bundle();
            if (bundle != null) {
                this.b.putAll(bundle);
            }
            if (z3) {
                this.b.putBoolean("android.support.localOnly", true);
            }
            if (str != null) {
                this.b.putString("android.support.groupKey", str);
                if (z4) {
                    this.b.putBoolean("android.support.isGroupSummary", true);
                } else {
                    this.b.putBoolean("android.support.useSideChannel", true);
                }
            }
            if (str2 != null) {
                this.b.putString("android.support.sortKey", str2);
            }
            this.d = remoteViews2;
            this.e = remoteViews3;
        }

        @Override // android.support.v4.app.ah
        public void a(an.a aVar) {
            this.c.add(aq.a(this.f242a, aVar));
        }

        @Override // android.support.v4.app.ai
        public Notification.Builder a() {
            return this.f242a;
        }

        @Override // android.support.v4.app.ai
        public Notification b() {
            Notification build = this.f242a.build();
            Bundle a2 = aq.a(build);
            Bundle bundle = new Bundle(this.b);
            for (String str : this.b.keySet()) {
                if (a2.containsKey(str)) {
                    bundle.remove(str);
                }
            }
            a2.putAll(bundle);
            SparseArray<Bundle> a3 = aq.a(this.c);
            if (a3 != null) {
                aq.a(build).putSparseParcelableArray("android.support.actionExtras", a3);
            }
            if (this.d != null) {
                build.contentView = this.d;
            }
            if (this.e != null) {
                build.bigContentView = this.e;
            }
            return build;
        }
    }

    public static void a(ai aiVar, CharSequence charSequence, boolean z, CharSequence charSequence2, CharSequence charSequence3) {
        Notification.BigTextStyle bigText = new Notification.BigTextStyle(aiVar.a()).setBigContentTitle(charSequence).bigText(charSequence3);
        if (z) {
            bigText.setSummaryText(charSequence2);
        }
    }

    public static void a(ai aiVar, CharSequence charSequence, boolean z, CharSequence charSequence2, Bitmap bitmap, Bitmap bitmap2, boolean z2) {
        Notification.BigPictureStyle bigPicture = new Notification.BigPictureStyle(aiVar.a()).setBigContentTitle(charSequence).bigPicture(bitmap);
        if (z2) {
            bigPicture.bigLargeIcon(bitmap2);
        }
        if (z) {
            bigPicture.setSummaryText(charSequence2);
        }
    }

    public static void a(ai aiVar, CharSequence charSequence, boolean z, CharSequence charSequence2, ArrayList<CharSequence> arrayList) {
        Notification.InboxStyle bigContentTitle = new Notification.InboxStyle(aiVar.a()).setBigContentTitle(charSequence);
        if (z) {
            bigContentTitle.setSummaryText(charSequence2);
        }
        Iterator<CharSequence> it = arrayList.iterator();
        while (it.hasNext()) {
            bigContentTitle.addLine(it.next());
        }
    }

    public static SparseArray<Bundle> a(List<Bundle> list) {
        SparseArray<Bundle> sparseArray = null;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Bundle bundle = list.get(i);
            if (bundle != null) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                sparseArray.put(i, bundle);
            }
        }
        return sparseArray;
    }

    public static Bundle a(Notification notification) {
        synchronized (f241a) {
            if (c) {
                return null;
            }
            try {
                if (b == null) {
                    Field declaredField = Notification.class.getDeclaredField(AppLinkData.ARGUMENTS_EXTRAS_KEY);
                    if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                        Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
                        c = true;
                        return null;
                    }
                    declaredField.setAccessible(true);
                    b = declaredField;
                }
                Bundle bundle = (Bundle) b.get(notification);
                if (bundle == null) {
                    bundle = new Bundle();
                    b.set(notification, bundle);
                }
                return bundle;
            } catch (IllegalAccessException e) {
                Log.e("NotificationCompat", "Unable to access notification extras", e);
                c = true;
                return null;
            } catch (NoSuchFieldException e2) {
                Log.e("NotificationCompat", "Unable to access notification extras", e2);
                c = true;
                return null;
            }
        }
    }

    public static Bundle a(Notification.Builder builder, an.a aVar) {
        builder.addAction(aVar.a(), aVar.b(), aVar.c());
        Bundle bundle = new Bundle(aVar.d());
        if (aVar.g() != null) {
            bundle.putParcelableArray("android.support.remoteInputs", ax.a(aVar.g()));
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", aVar.e());
        return bundle;
    }
}

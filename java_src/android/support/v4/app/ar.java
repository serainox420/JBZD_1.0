package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.an;
import android.util.SparseArray;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NotificationCompatKitKat.java */
@TargetApi(19)
/* loaded from: classes.dex */
public class ar {

    /* compiled from: NotificationCompatKitKat.java */
    /* loaded from: classes.dex */
    public static class a implements ah, ai {

        /* renamed from: a  reason: collision with root package name */
        private Notification.Builder f243a;
        private Bundle b;
        private List<Bundle> c = new ArrayList();
        private RemoteViews d;
        private RemoteViews e;

        public a(Context context, Notification notification, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, RemoteViews remoteViews, int i, PendingIntent pendingIntent, PendingIntent pendingIntent2, Bitmap bitmap, int i2, int i3, boolean z, boolean z2, boolean z3, int i4, CharSequence charSequence4, boolean z4, ArrayList<String> arrayList, Bundle bundle, String str, boolean z5, String str2, RemoteViews remoteViews2, RemoteViews remoteViews3) {
            this.f243a = new Notification.Builder(context).setWhen(notification.when).setShowWhen(z2).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteViews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(charSequence).setContentText(charSequence2).setSubText(charSequence4).setContentInfo(charSequence3).setContentIntent(pendingIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(pendingIntent2, (notification.flags & 128) != 0).setLargeIcon(bitmap).setNumber(i).setUsesChronometer(z3).setPriority(i4).setProgress(i2, i3, z);
            this.b = new Bundle();
            if (bundle != null) {
                this.b.putAll(bundle);
            }
            if (arrayList != null && !arrayList.isEmpty()) {
                this.b.putStringArray("android.people", (String[]) arrayList.toArray(new String[arrayList.size()]));
            }
            if (z4) {
                this.b.putBoolean("android.support.localOnly", true);
            }
            if (str != null) {
                this.b.putString("android.support.groupKey", str);
                if (z5) {
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
            this.c.add(aq.a(this.f243a, aVar));
        }

        @Override // android.support.v4.app.ai
        public Notification.Builder a() {
            return this.f243a;
        }

        @Override // android.support.v4.app.ai
        public Notification b() {
            SparseArray<Bundle> a2 = aq.a(this.c);
            if (a2 != null) {
                this.b.putSparseParcelableArray("android.support.actionExtras", a2);
            }
            this.f243a.setExtras(this.b);
            Notification build = this.f243a.build();
            if (this.d != null) {
                build.contentView = this.d;
            }
            if (this.e != null) {
                build.bigContentView = this.e;
            }
            return build;
        }
    }

    public static Bundle a(Notification notification) {
        return notification.extras;
    }
}

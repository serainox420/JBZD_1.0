package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.an;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Iterator;
/* compiled from: NotificationCompatApi21.java */
@TargetApi(21)
/* loaded from: classes.dex */
class al {

    /* compiled from: NotificationCompatApi21.java */
    /* loaded from: classes.dex */
    public static class a implements ah, ai {

        /* renamed from: a  reason: collision with root package name */
        private Notification.Builder f237a;
        private Bundle b;
        private RemoteViews c;
        private RemoteViews d;
        private RemoteViews e;

        public a(Context context, Notification notification, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, RemoteViews remoteViews, int i, PendingIntent pendingIntent, PendingIntent pendingIntent2, Bitmap bitmap, int i2, int i3, boolean z, boolean z2, boolean z3, int i4, CharSequence charSequence4, boolean z4, String str, ArrayList<String> arrayList, Bundle bundle, int i5, int i6, Notification notification2, String str2, boolean z5, String str3, RemoteViews remoteViews2, RemoteViews remoteViews3, RemoteViews remoteViews4) {
            this.f237a = new Notification.Builder(context).setWhen(notification.when).setShowWhen(z2).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteViews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(charSequence).setContentText(charSequence2).setSubText(charSequence4).setContentInfo(charSequence3).setContentIntent(pendingIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(pendingIntent2, (notification.flags & 128) != 0).setLargeIcon(bitmap).setNumber(i).setUsesChronometer(z3).setPriority(i4).setProgress(i2, i3, z).setLocalOnly(z4).setGroup(str2).setGroupSummary(z5).setSortKey(str3).setCategory(str).setColor(i5).setVisibility(i6).setPublicVersion(notification2);
            this.b = new Bundle();
            if (bundle != null) {
                this.b.putAll(bundle);
            }
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                this.f237a.addPerson(it.next());
            }
            this.c = remoteViews2;
            this.d = remoteViews3;
            this.e = remoteViews4;
        }

        @Override // android.support.v4.app.ah
        public void a(an.a aVar) {
            ak.a(this.f237a, aVar);
        }

        @Override // android.support.v4.app.ai
        public Notification.Builder a() {
            return this.f237a;
        }

        @Override // android.support.v4.app.ai
        public Notification b() {
            this.f237a.setExtras(this.b);
            Notification build = this.f237a.build();
            if (this.c != null) {
                build.contentView = this.c;
            }
            if (this.d != null) {
                build.bigContentView = this.d;
            }
            if (this.e != null) {
                build.headsUpContentView = this.e;
            }
            return build;
        }
    }
}

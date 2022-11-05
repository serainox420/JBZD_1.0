package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.an;
import android.widget.RemoteViews;
import java.util.ArrayList;
/* compiled from: NotificationCompatApi20.java */
@TargetApi(20)
/* loaded from: classes.dex */
class ak {

    /* compiled from: NotificationCompatApi20.java */
    /* loaded from: classes.dex */
    public static class a implements ah, ai {

        /* renamed from: a  reason: collision with root package name */
        private Notification.Builder f236a;
        private Bundle b;
        private RemoteViews c;
        private RemoteViews d;

        public a(Context context, Notification notification, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, RemoteViews remoteViews, int i, PendingIntent pendingIntent, PendingIntent pendingIntent2, Bitmap bitmap, int i2, int i3, boolean z, boolean z2, boolean z3, int i4, CharSequence charSequence4, boolean z4, ArrayList<String> arrayList, Bundle bundle, String str, boolean z5, String str2, RemoteViews remoteViews2, RemoteViews remoteViews3) {
            this.f236a = new Notification.Builder(context).setWhen(notification.when).setShowWhen(z2).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteViews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(charSequence).setContentText(charSequence2).setSubText(charSequence4).setContentInfo(charSequence3).setContentIntent(pendingIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(pendingIntent2, (notification.flags & 128) != 0).setLargeIcon(bitmap).setNumber(i).setUsesChronometer(z3).setPriority(i4).setProgress(i2, i3, z).setLocalOnly(z4).setGroup(str).setGroupSummary(z5).setSortKey(str2);
            this.b = new Bundle();
            if (bundle != null) {
                this.b.putAll(bundle);
            }
            if (arrayList != null && !arrayList.isEmpty()) {
                this.b.putStringArray("android.people", (String[]) arrayList.toArray(new String[arrayList.size()]));
            }
            this.c = remoteViews2;
            this.d = remoteViews3;
        }

        @Override // android.support.v4.app.ah
        public void a(an.a aVar) {
            ak.a(this.f236a, aVar);
        }

        @Override // android.support.v4.app.ai
        public Notification.Builder a() {
            return this.f236a;
        }

        @Override // android.support.v4.app.ai
        public Notification b() {
            this.f236a.setExtras(this.b);
            Notification build = this.f236a.build();
            if (this.c != null) {
                build.contentView = this.c;
            }
            if (this.d != null) {
                build.bigContentView = this.d;
            }
            return build;
        }
    }

    public static void a(Notification.Builder builder, an.a aVar) {
        Bundle bundle;
        Notification.Action.Builder builder2 = new Notification.Action.Builder(aVar.a(), aVar.b(), aVar.c());
        if (aVar.g() != null) {
            for (RemoteInput remoteInput : av.a(aVar.g())) {
                builder2.addRemoteInput(remoteInput);
            }
        }
        if (aVar.d() != null) {
            bundle = new Bundle(aVar.d());
        } else {
            bundle = new Bundle();
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", aVar.e());
        builder2.addExtras(bundle);
        builder.addAction(builder2.build());
    }
}

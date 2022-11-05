package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.an;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: NotificationCompatApi24.java */
@TargetApi(24)
/* loaded from: classes.dex */
class am {

    /* compiled from: NotificationCompatApi24.java */
    /* loaded from: classes.dex */
    public static class a implements ah, ai {

        /* renamed from: a  reason: collision with root package name */
        private Notification.Builder f238a;

        public a(Context context, Notification notification, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, RemoteViews remoteViews, int i, PendingIntent pendingIntent, PendingIntent pendingIntent2, Bitmap bitmap, int i2, int i3, boolean z, boolean z2, boolean z3, int i4, CharSequence charSequence4, boolean z4, String str, ArrayList<String> arrayList, Bundle bundle, int i5, int i6, Notification notification2, String str2, boolean z5, String str3, CharSequence[] charSequenceArr, RemoteViews remoteViews2, RemoteViews remoteViews3, RemoteViews remoteViews4) {
            this.f238a = new Notification.Builder(context).setWhen(notification.when).setShowWhen(z2).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteViews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(charSequence).setContentText(charSequence2).setSubText(charSequence4).setContentInfo(charSequence3).setContentIntent(pendingIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(pendingIntent2, (notification.flags & 128) != 0).setLargeIcon(bitmap).setNumber(i).setUsesChronometer(z3).setPriority(i4).setProgress(i2, i3, z).setLocalOnly(z4).setExtras(bundle).setGroup(str2).setGroupSummary(z5).setSortKey(str3).setCategory(str).setColor(i5).setVisibility(i6).setPublicVersion(notification2).setRemoteInputHistory(charSequenceArr);
            if (remoteViews2 != null) {
                this.f238a.setCustomContentView(remoteViews2);
            }
            if (remoteViews3 != null) {
                this.f238a.setCustomBigContentView(remoteViews3);
            }
            if (remoteViews4 != null) {
                this.f238a.setCustomHeadsUpContentView(remoteViews4);
            }
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                this.f238a.addPerson(it.next());
            }
        }

        @Override // android.support.v4.app.ah
        public void a(an.a aVar) {
            Bundle bundle;
            Notification.Action.Builder builder = new Notification.Action.Builder(aVar.a(), aVar.b(), aVar.c());
            if (aVar.g() != null) {
                for (RemoteInput remoteInput : av.a(aVar.g())) {
                    builder.addRemoteInput(remoteInput);
                }
            }
            if (aVar.d() != null) {
                bundle = new Bundle(aVar.d());
            } else {
                bundle = new Bundle();
            }
            bundle.putBoolean("android.support.allowGeneratedReplies", aVar.e());
            builder.addExtras(bundle);
            builder.setAllowGeneratedReplies(aVar.e());
            this.f238a.addAction(builder.build());
        }

        @Override // android.support.v4.app.ai
        public Notification.Builder a() {
            return this.f238a;
        }

        @Override // android.support.v4.app.ai
        public Notification b() {
            return this.f238a.build();
        }
    }

    public static void a(ai aiVar, CharSequence charSequence, CharSequence charSequence2, List<CharSequence> list, List<Long> list2, List<CharSequence> list3, List<String> list4, List<Uri> list5) {
        Notification.MessagingStyle conversationTitle = new Notification.MessagingStyle(charSequence).setConversationTitle(charSequence2);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < list.size()) {
                Notification.MessagingStyle.Message message = new Notification.MessagingStyle.Message(list.get(i2), list2.get(i2).longValue(), list3.get(i2));
                if (list4.get(i2) != null) {
                    message.setData(list4.get(i2), list5.get(i2));
                }
                conversationTitle.addMessage(message);
                i = i2 + 1;
            } else {
                conversationTitle.setBuilder(aiVar.a());
                return;
            }
        }
    }
}

package com.adcolony.sdk;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.aj;
import com.adcolony.sdk.bn;
import com.adcolony.sdk.cg;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.drive.DriveFile;
import com.millennialmedia.NativeAd;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ch {

    /* renamed from: a  reason: collision with root package name */
    static final String f1280a = "adColonyPubServices";
    static final String b = "receivedInForeground";
    static final String c = "gcm_defaultSenderId";
    private static final String d = "savedPushMsgs.ymf";
    private static final String e = "YvolverPushNotMgr";
    private static final int f = 9000;
    private static final int g = 10;
    private static final String n = "adcOpenUrl";
    private static final String o = "adcOpenCatalog";
    private String h;
    private String l;
    private int i = -1;
    private LinkedBlockingQueue<AdColonyPubServicesPushNotification> j = new LinkedBlockingQueue<>(10);
    private LinkedBlockingQueue<Bundle> k = new LinkedBlockingQueue<>();
    private bu m = new bu();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) throws Exception {
        int i;
        String packageName;
        Exception e2 = null;
        if (bz.aK().l() == null || (packageName = bz.aK().l().getPackageName()) == null) {
            i = -1;
        } else {
            if (str == null) {
                try {
                    i = bz.aK().j().getResources().getIdentifier(c, "string", packageName);
                } catch (Exception e3) {
                    e2 = e3;
                    i = -1;
                }
            } else {
                i = -1;
            }
            try {
                this.i = bz.aK().l().getPackageManager().getApplicationInfo(packageName, 128).icon;
            } catch (Exception e4) {
                e2 = e4;
            }
        }
        if (this.i <= 0) {
            e2 = new RuntimeException("An error occurred when retrieving app-icon for the default icon in push notifications. Have you called AdColony.configure()?");
        } else if (str != null || i != -1) {
            if (str != null) {
                this.h = str;
            } else {
                this.h = bz.aK().j().getString(i);
            }
            if (!j()) {
                e2 = new RuntimeException("Google Play services is not available. It is required for AdColony Push Notifications.");
            }
        } else {
            e2 = new bx();
        }
        if (e2 == null) {
            bz.aK().j().startService(new Intent(bz.aK().k(), AdColonyPubServicesPushRegIdIntentService.class));
        } else {
            bz.aK().aB().a(e2);
            throw e2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        cb.b(e, "unregisterForPushNotifications", true);
        this.h = null;
        this.i = -1;
        this.j.clear();
        this.l = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(Intent intent) {
        boolean z = false;
        if (intent != null) {
            try {
                if (intent.getExtras() == null) {
                    return false;
                }
                Bundle extras = intent.getExtras();
                AdColonyPubServicesPushNotification adColonyPubServicesPushNotification = new AdColonyPubServicesPushNotification();
                adColonyPubServicesPushNotification.a(System.currentTimeMillis());
                Object obj = extras.get(f1280a);
                if (obj != null) {
                    try {
                        adColonyPubServicesPushNotification.b(true);
                        adColonyPubServicesPushNotification.a(obj.toString());
                        boolean z2 = extras.getBoolean(b, false);
                        adColonyPubServicesPushNotification.a(z2);
                        if (!z2) {
                            b(adColonyPubServicesPushNotification);
                        }
                        cb.b(e, "add pending notification", true);
                        this.j.add(adColonyPubServicesPushNotification);
                        if (bz.aK().w() && bz.aK().j() != null) {
                            do {
                            } while (b());
                        } else {
                            w.a(1, "Pubservices is unavailable. Adding push message to pending queue.", false);
                        }
                        z = true;
                    } catch (Exception e2) {
                        return true;
                    }
                } else {
                    adColonyPubServicesPushNotification.b(false);
                    HashMap hashMap = new HashMap();
                    hashMap.put("notification", extras.toString());
                    bz.aK().a("Unable to create push notification", bn.b.YVOLVER_SEVERITY_ERROR, false, (Map<String, Object>) hashMap);
                }
                bz.aK().aB().a(adColonyPubServicesPushNotification);
                return z;
            } catch (Exception e3) {
                return z;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00ce A[Catch: Exception -> 0x0140, TryCatch #0 {Exception -> 0x0140, blocks: (B:2:0x0000, B:4:0x0036, B:6:0x004a, B:9:0x006f, B:10:0x0074, B:13:0x007d, B:15:0x0089, B:19:0x0099, B:21:0x00ce, B:23:0x00d3, B:26:0x00e7, B:29:0x010e, B:30:0x0111, B:32:0x012b, B:35:0x013a), top: B:42:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00d3 A[Catch: Exception -> 0x0140, TryCatch #0 {Exception -> 0x0140, blocks: (B:2:0x0000, B:4:0x0036, B:6:0x004a, B:9:0x006f, B:10:0x0074, B:13:0x007d, B:15:0x0089, B:19:0x0099, B:21:0x00ce, B:23:0x00d3, B:26:0x00e7, B:29:0x010e, B:30:0x0111, B:32:0x012b, B:35:0x013a), top: B:42:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x010e A[Catch: Exception -> 0x0140, TryCatch #0 {Exception -> 0x0140, blocks: (B:2:0x0000, B:4:0x0036, B:6:0x004a, B:9:0x006f, B:10:0x0074, B:13:0x007d, B:15:0x0089, B:19:0x0099, B:21:0x00ce, B:23:0x00d3, B:26:0x00e7, B:29:0x010e, B:30:0x0111, B:32:0x012b, B:35:0x013a), top: B:42:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x012b A[Catch: Exception -> 0x0140, TryCatch #0 {Exception -> 0x0140, blocks: (B:2:0x0000, B:4:0x0036, B:6:0x004a, B:9:0x006f, B:10:0x0074, B:13:0x007d, B:15:0x0089, B:19:0x0099, B:21:0x00ce, B:23:0x00d3, B:26:0x00e7, B:29:0x010e, B:30:0x0111, B:32:0x012b, B:35:0x013a), top: B:42:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0138  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(Bundle bundle) {
        String str;
        String str2;
        String str3;
        String str4;
        int i;
        int i2;
        int i3;
        int i4;
        try {
            cb.b(e, "gcm notification bundle=" + bundle.toString(), true);
            String str5 = null;
            bundle.putBoolean(b, true);
            b(bundle);
            if (bz.aK().j() != null) {
                Activity j = bz.aK().j();
                android.support.v4.app.as a2 = android.support.v4.app.as.a(j);
                Bundle bundle2 = bundle.getBundle("notification");
                if (bundle2 == null) {
                    str = null;
                    str2 = null;
                    str3 = null;
                    str4 = null;
                } else {
                    String string = bundle2.getString("title");
                    String string2 = bundle2.getString(NativeAd.COMPONENT_ID_BODY);
                    str5 = bundle2.getString("color");
                    String string3 = bundle2.getString("sound");
                    String string4 = bundle2.getString(com.intentsoftware.addapptr.ad.NativeAd.ICON_IMAGE_ASSET);
                    str = string;
                    str2 = string2;
                    str3 = string3;
                    str4 = string4;
                }
                if (str5 == null) {
                    i = -1;
                } else {
                    i = Color.parseColor(str5);
                }
                int i5 = 0;
                String packageName = j.getPackageName();
                if (packageName != null) {
                    if (str3 != null) {
                        i5 = j.getResources().getIdentifier(str3, "raw", packageName);
                    }
                    if (str4 != null) {
                        int identifier = j.getResources().getIdentifier(str4, "drawable", packageName);
                        i2 = i5;
                        i3 = identifier;
                        int al = i3 == -1 ? i3 : bz.aK().al();
                        Intent intent = new Intent(j, MessagingLaunchActivity.class);
                        intent.addFlags(67108864);
                        intent.addFlags(DriveFile.MODE_WRITE_ONLY);
                        intent.addFlags(134217728);
                        intent.putExtras(bundle);
                        PendingIntent activity = PendingIntent.getActivity(j, 0, intent, 134217728);
                        i4 = 1;
                        aj.d a3 = new aj.d(j).c(true).a(al).a(activity);
                        if (str != null) {
                            a3.a((CharSequence) str);
                        }
                        if (str2 != null) {
                            a3.a(new aj.c().a(str2)).b(str2);
                        }
                        if (i2 == 0 && packageName != null) {
                            a3.a(Uri.parse("android.resource://" + packageName + "/" + i2));
                        } else {
                            i4 = 1;
                        }
                        if (i == -1) {
                            a3.c(i);
                        } else {
                            i4 = 1;
                        }
                        a3.b(i4);
                        a2.a(bz.aK().aG(), a3.a());
                        bz.aK().aH();
                        return;
                    }
                }
                i2 = i5;
                i3 = -1;
                if (i3 == -1) {
                }
                Intent intent2 = new Intent(j, MessagingLaunchActivity.class);
                intent2.addFlags(67108864);
                intent2.addFlags(DriveFile.MODE_WRITE_ONLY);
                intent2.addFlags(134217728);
                intent2.putExtras(bundle);
                PendingIntent activity2 = PendingIntent.getActivity(j, 0, intent2, 134217728);
                i4 = 1;
                aj.d a32 = new aj.d(j).c(true).a(al).a(activity2);
                if (str != null) {
                }
                if (str2 != null) {
                }
                if (i2 == 0) {
                }
                i4 = 1;
                if (i == -1) {
                }
                a32.b(i4);
                a2.a(bz.aK().aG(), a32.a());
                bz.aK().aH();
                return;
            }
            this.k.add(bundle);
        } catch (Exception e2) {
            cb.a(e, "Received Push Message but could not render it in the status bar: error Message =" + e2.getMessage(), e2, false);
        }
    }

    private void c(final AdColonyPubServicesPushNotification adColonyPubServicesPushNotification) {
        this.m.a(new bv() { // from class: com.adcolony.sdk.ch.1
            @Override // com.adcolony.sdk.bv
            public void a() {
                cg.b bVar;
                HashMap<String, Serializable> hashMap;
                ch.this.a(adColonyPubServicesPushNotification);
                cg a2 = adColonyPubServicesPushNotification.a();
                if (a2 != null && (bVar = a2.e) != null && (hashMap = bVar.e) != null) {
                    if (bVar.d.equalsIgnoreCase(ch.n)) {
                        HashMap hashMap2 = new HashMap();
                        for (String str : hashMap.keySet()) {
                            hashMap2.put(str, hashMap.get(str));
                        }
                        bz.aK().i(hashMap2);
                    } else if (bVar.d.equalsIgnoreCase(ch.o)) {
                        bz.aK().j(hashMap);
                    }
                }
            }
        });
    }

    void a(final AdColonyPubServicesPushNotification adColonyPubServicesPushNotification) {
        this.m.a(new bv() { // from class: com.adcolony.sdk.ch.2
            @Override // com.adcolony.sdk.bv
            public void a() {
                if (adColonyPubServicesPushNotification.a().e != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("state", "action_completed");
                    hashMap.put("id", adColonyPubServicesPushNotification.getId());
                    hashMap.put("category", "");
                    hashMap.put(NativeProtocol.WEB_DIALOG_ACTION, "");
                    hashMap.put("payload", adColonyPubServicesPushNotification.getPayload());
                    hashMap.put("app_in_foreground", Boolean.valueOf(adColonyPubServicesPushNotification.b()));
                    hashMap.put("meta", adColonyPubServicesPushNotification.a().b());
                    bz.aK().a("push_notification", hashMap);
                }
            }
        });
    }

    void b(final AdColonyPubServicesPushNotification adColonyPubServicesPushNotification) {
        this.m.a(new bv() { // from class: com.adcolony.sdk.ch.3
            @Override // com.adcolony.sdk.bv
            public void a() {
                HashMap hashMap = new HashMap();
                hashMap.put("state", "received");
                hashMap.put("id", adColonyPubServicesPushNotification.getId());
                hashMap.put("category", "");
                hashMap.put(NativeProtocol.WEB_DIALOG_ACTION, "");
                hashMap.put("payload", adColonyPubServicesPushNotification.getPayload());
                hashMap.put("app_in_foreground", Boolean.valueOf(adColonyPubServicesPushNotification.b()));
                hashMap.put("meta", adColonyPubServicesPushNotification.a().b());
                bz.aK().a("push_notification", hashMap);
            }
        });
    }

    private void b(Bundle bundle) {
        if (bundle != null) {
            AdColonyPubServicesPushNotification adColonyPubServicesPushNotification = new AdColonyPubServicesPushNotification();
            adColonyPubServicesPushNotification.a(System.currentTimeMillis());
            Object obj = bundle.get(f1280a);
            if (obj != null) {
                adColonyPubServicesPushNotification.b(true);
                adColonyPubServicesPushNotification.a(obj.toString());
                adColonyPubServicesPushNotification.a(true);
                bz.aK().aI().b(adColonyPubServicesPushNotification);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        if (this.j == null || this.j.size() == 0) {
            return false;
        }
        try {
            c(this.j.take());
        } catch (InterruptedException e2) {
            cb.a(e, "Error occurred when executing pending notification. ->" + e2.getMessage(), e2);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.ch.4
            @Override // com.adcolony.sdk.bv
            public void a() {
                while (!ch.this.k.isEmpty()) {
                    try {
                        ch.this.a((Bundle) ch.this.k.take());
                    } catch (InterruptedException e2) {
                        cb.b("Push Manager", "caught exception while processing pending GCM queue=" + e2.toString(), true);
                        return;
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String d() {
        return this.h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e() {
        return this.i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(String str) {
        f();
        if (this.l == null || !str.equals(this.l)) {
            cb.b(e, "updating token: " + this.l, true);
            this.l = str;
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String f() {
        if (this.l == null) {
            this.l = bz.aK().ai();
        }
        return this.l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        cb.b(e, "onDestroy()", true);
    }

    private boolean j() {
        GoogleApiAvailability googleApiAvailability;
        int isGooglePlayServicesAvailable;
        if (bz.aK().j() != null && (isGooglePlayServicesAvailable = (googleApiAvailability = GoogleApiAvailability.getInstance()).isGooglePlayServicesAvailable(bz.aK().j())) != 0) {
            if (googleApiAvailability.isUserResolvableError(isGooglePlayServicesAvailable)) {
                googleApiAvailability.getErrorDialog(bz.aK().j(), isGooglePlayServicesAvailable, 9000).show();
                return false;
            }
            cb.a("PushManager", "This device is not supported with Google Play Services.", false);
            return false;
        }
        return true;
    }

    void h() {
        cb.b(e, "loadPushesFromDisk", true);
        List<Map<String, Object>> m = co.m(d);
        if (m != null) {
            cb.b(e, "pushes saved: " + m.toString(), true);
            for (Map<String, Object> map : m) {
                cb.b(e, "load pending notification into list", true);
                this.j.add(new AdColonyPubServicesPushNotification((String) map.get("payload"), (cg) map.get("meta"), (String) map.get("id")));
            }
        }
    }

    void i() {
        while (this.j.size() > 0) {
            try {
                ArrayList arrayList = new ArrayList();
                while (this.j.size() > 0) {
                    AdColonyPubServicesPushNotification take = this.j.take();
                    cb.b(e, "saving push to disk ->" + take, true);
                    HashMap hashMap = new HashMap();
                    hashMap.put("payload", take.getPayload());
                    hashMap.put("meta", take.a());
                    hashMap.put("id", take.getId());
                    arrayList.add(hashMap);
                }
                co.a(arrayList, d);
            } catch (Exception e2) {
                cb.a(e, "Interrupted exception occurred while saving notifications from disk", e2);
            }
        }
    }
}

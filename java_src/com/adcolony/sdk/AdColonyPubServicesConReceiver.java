package com.adcolony.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.adcolony.sdk.AdColonyPubServices;
/* loaded from: classes.dex */
public class AdColonyPubServicesConReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private bv f987a = new bv() { // from class: com.adcolony.sdk.AdColonyPubServicesConReceiver.1
        @Override // com.adcolony.sdk.bv
        public void a() {
            AdColonyPubServicesConReceiver.this.a();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public String b() {
        return "AdColonyPubServices";
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(final Context context, final Intent intent) {
        new bu().a(new bv() { // from class: com.adcolony.sdk.AdColonyPubServicesConReceiver.2
            @Override // com.adcolony.sdk.bv
            public void a() {
                cb.b(AdColonyPubServicesConReceiver.this.b(), "Action: " + intent.getAction(), true);
                if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                    if (intent.getBooleanExtra("noConnectivity", false)) {
                        cb.b(AdColonyPubServicesConReceiver.this.b(), "Network connection lost.", true);
                        if (!bz.aK().I()) {
                            bz.aK().u();
                        }
                    }
                    ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                    if (connectivityManager == null) {
                        cb.b(AdColonyPubServicesConReceiver.this.b(), "No network detected", true);
                        return;
                    }
                    NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                    if (activeNetworkInfo == null) {
                        cb.b(AdColonyPubServicesConReceiver.this.b(), "No network detected", true);
                    } else if (activeNetworkInfo.isConnected()) {
                        cb.b(AdColonyPubServicesConReceiver.this.b(), "Network Connected", true);
                        if (bz.aK().t() != AdColonyPubServices.ServiceAvailability.SERVICE_CONNECTING && bz.aK().t() != AdColonyPubServices.ServiceAvailability.SERVICE_AVAILABLE) {
                            bz.aK().ao().b(AdColonyPubServicesConReceiver.this.f987a);
                            bz.aK().ao().b(AdColonyPubServicesConReceiver.this.f987a, 1000L);
                        }
                    }
                }
            }
        });
    }

    synchronized void a() {
        cb.b(b(), "New connection was called", true);
        new bp(bz.aK().u) { // from class: com.adcolony.sdk.AdColonyPubServicesConReceiver.3
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                if (bz.aK().t() != AdColonyPubServices.ServiceAvailability.SERVICE_CONNECTING && bz.aK().t() != AdColonyPubServices.ServiceAvailability.SERVICE_AVAILABLE) {
                    cb.b(AdColonyPubServicesConReceiver.this.b(), "New Connection was executed", true);
                    bz.aK().f("InternetAvailable");
                }
            }
        };
    }
}

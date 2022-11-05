package com.adcolony.sdk;

import com.adcolony.sdk.AdColonyPubServices;
import com.adcolony.sdk.YvolverDeepLinkManager;
import java.util.ArrayList;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class bf {

    /* renamed from: a  reason: collision with root package name */
    ArrayList<AdColonyPubServicesCallbacks> f1115a = new ArrayList<>();

    abstract String a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AdColonyPubServicesCallbacks adColonyPubServicesCallbacks) {
        this.f1115a.add(adColonyPubServicesCallbacks);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final AdColonyPubServices.ServiceAvailability serviceAvailability) {
        cb.b(a(), "yvolverNotificationServiceAvailabilityChanged() called", true);
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.bf.1
            @Override // com.adcolony.sdk.bv
            public void a() {
                if (!bf.this.f1115a.isEmpty()) {
                    Iterator<AdColonyPubServicesCallbacks> it = bf.this.f1115a.iterator();
                    while (it.hasNext()) {
                        it.next().onServiceAvailabilityChanged(serviceAvailability);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        cb.b(a(), "yvolverNotificationOverlayShownChanged() called", true);
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.bf.4
            @Override // com.adcolony.sdk.bv
            public void a() {
                if (!bf.this.f1115a.isEmpty()) {
                    Iterator<AdColonyPubServicesCallbacks> it = bf.this.f1115a.iterator();
                    while (it.hasNext()) {
                        it.next().onOverlayVisibilityChanged();
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final AdColonyPubServicesDigitalItem adColonyPubServicesDigitalItem) {
        cb.b(a(), "yvolverGrantDigitalProductItem() called", true);
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.bf.5
            @Override // com.adcolony.sdk.bv
            public void a() {
                if (!bf.this.f1115a.isEmpty()) {
                    Iterator<AdColonyPubServicesCallbacks> it = bf.this.f1115a.iterator();
                    while (it.hasNext()) {
                        it.next().onGrantDigitalProductItem(adColonyPubServicesDigitalItem);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final String str, final int i, final String str2) {
        cb.b(a(), "yvolverInAppPurchaseRewardSuccess()", true);
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.bf.6
            @Override // com.adcolony.sdk.bv
            public void a() {
                if (!bf.this.f1115a.isEmpty()) {
                    Iterator<AdColonyPubServicesCallbacks> it = bf.this.f1115a.iterator();
                    while (it.hasNext()) {
                        it.next().onInAppPurchaseRewardSuccess(str, i);
                        bz.aK().a(i, str, str2, true);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final String str, final String str2) {
        cb.b(a(), "yvolverInAppPurchaseRewardDidFail() called", true);
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.bf.7
            @Override // com.adcolony.sdk.bv
            public void a() {
                if (!bf.this.f1115a.isEmpty()) {
                    Iterator<AdColonyPubServicesCallbacks> it = bf.this.f1115a.iterator();
                    while (it.hasNext()) {
                        it.next().onInAppPurchaseRewardDidFail(str, str2);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        cb.b(a(), "yvolverStatsRefreshed() called", true);
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.bf.8
            @Override // com.adcolony.sdk.bv
            public void a() {
                if (!bf.this.f1115a.isEmpty()) {
                    Iterator<AdColonyPubServicesCallbacks> it = bf.this.f1115a.iterator();
                    while (it.hasNext()) {
                        it.next().onStatsRefreshed();
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final String str) {
        cb.b(a(), "onPushRegistrationSuccess() called", true);
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.bf.9
            @Override // com.adcolony.sdk.bv
            public void a() {
                if (!bf.this.f1115a.isEmpty()) {
                    Iterator<AdColonyPubServicesCallbacks> it = bf.this.f1115a.iterator();
                    while (it.hasNext()) {
                        it.next().onPushRegistrationSuccess(str);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final Exception exc) {
        cb.b(a(), "onPushRegistrationFailure() called", true);
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.bf.10
            @Override // com.adcolony.sdk.bv
            public void a() {
                if (!bf.this.f1115a.isEmpty()) {
                    Iterator<AdColonyPubServicesCallbacks> it = bf.this.f1115a.iterator();
                    while (it.hasNext()) {
                        it.next().onPushRegistrationFailure(exc);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final AdColonyPubServicesPushNotification adColonyPubServicesPushNotification) {
        cb.b(a(), "onPushNotificationReceived() called", true);
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.bf.11
            @Override // com.adcolony.sdk.bv
            public void a() {
                if (!bf.this.f1115a.isEmpty()) {
                    Iterator<AdColonyPubServicesCallbacks> it = bf.this.f1115a.iterator();
                    while (it.hasNext()) {
                        it.next().onPushNotificationReceived(adColonyPubServicesPushNotification);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final YvolverDeepLinkManager.DeepLink deepLink, final YvolverDeepLinkManager.DeepLinkBridge deepLinkBridge) {
        cb.b(a(), "yvolverOnOpenUrl() called", true);
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.bf.2
            @Override // com.adcolony.sdk.bv
            public void a() {
                if (!bf.this.f1115a.isEmpty()) {
                    Iterator<AdColonyPubServicesCallbacks> it = bf.this.f1115a.iterator();
                    while (it.hasNext()) {
                        deepLinkBridge.executeDeepLink(deepLink, it.next());
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        cb.b(a(), "yvolverOnVIPInformationUpdated() called", true);
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.bf.3
            @Override // com.adcolony.sdk.bv
            public void a() {
                if (!bf.this.f1115a.isEmpty()) {
                    Iterator<AdColonyPubServicesCallbacks> it = bf.this.f1115a.iterator();
                    while (it.hasNext()) {
                        it.next().onVIPInformationUpdated();
                    }
                }
            }
        });
    }
}

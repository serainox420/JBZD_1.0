package com.adcolony.sdk;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.webkit.WebView;
import com.adcolony.sdk.bn;
import com.adcolony.sdk.cm;
import com.google.android.gms.drive.DriveFile;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cn {

    /* renamed from: a  reason: collision with root package name */
    AtomicBoolean f1344a = new AtomicBoolean(true);
    AtomicBoolean b = new AtomicBoolean(true);
    private by c = new by(Looper.getMainLooper());
    private boolean d = false;
    private ArrayList<cm> e = new ArrayList<>();
    private cm f = null;
    private final Object g = new Object();
    private bu h = new bu();

    private String o() {
        return "AdColonyPubServices";
    }

    Object a() {
        return this.g;
    }

    void a(cm cmVar) {
        synchronized (this.g) {
            if (cmVar != null) {
                bz.aK().a("dismiss_toast", cmVar.s());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final Map<String, Object> map) {
        synchronized (this.g) {
            this.h.a(new bv() { // from class: com.adcolony.sdk.cn.1
                @Override // com.adcolony.sdk.bv
                public void a() {
                    cm cmVar = new cm(map);
                    cmVar.b = cm.c.QUEUED;
                    cn.this.b(cmVar);
                    if (cn.this.e == null) {
                        cn.this.e = new ArrayList();
                    }
                    cn.this.e.add(cmVar);
                    cb.b("IN-APP-MSG-QUEUE", "toasted queue. queue size=" + cn.this.e.size(), true);
                    if (cmVar.r() == 0 && cn.this.b.get()) {
                        cb.b("IN-APP-MSG-QUEUE", "toast.displayType == NDT_MODAL && allowModalToasts. call showToasts()", true);
                        cn.this.b();
                    } else if (cmVar.r() == 1 && cn.this.f1344a.get()) {
                        cb.b("IN-APP-MSG-QUEUE", "toast.displayType == NDT_TOAST && allowNonModals. call showToasts()", true);
                        cn.this.b();
                    }
                }
            });
        }
    }

    private int p() {
        if (this.e == null) {
            return 0;
        }
        return this.e.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        synchronized (this.g) {
            if (!this.d && p() > 0) {
                if (!bz.aK().au() || !bz.aK().w()) {
                    cb.b("IN-APP-MSG-QUEUE", "processNextToast() aborting !appvisible || !ServiceAvailable", true);
                    d();
                } else {
                    c();
                }
            }
        }
    }

    void c() {
        synchronized (this.g) {
            if (k()) {
                q();
            } else if (!j()) {
                cb.b("IN-APP-MSG-QUEUE", "processNextToast() !toastShowing", true);
                if (p() > 0) {
                    cb.b("IN-APP-MSG-QUEUE", "processNextToast() _toastQueue.get()", true);
                    if (this.e == null) {
                        d();
                    }
                    this.f = this.e.get(0);
                    q();
                } else {
                    cb.b("IN-APP-MSG-QUEUE", "processNextToast() _toastQueue.size() <= 0 && _processingIndex >= _toastQueue.size(). Calling finishShowingToasts()", true);
                    d();
                }
            } else {
                cb.b("IN-APP-MSG-QUEUE", "processNextToast() toastIsShowing. do nothing.", true);
            }
        }
    }

    void d() {
        this.d = false;
        if (this.f != null) {
            this.f.b = cm.c.PAUSED;
        }
        if (bz.aK().j() != null && (bz.aK().j() instanceof AdColonyPubServicesInAppMsgActivity)) {
            ((AdColonyPubServicesInAppMsgActivity) bz.aK().j()).d();
        }
    }

    private void q() {
        if (cp.b().e()) {
            cb.b("IN-APP-MSG-QUEUE", "displayCurrentToast, overlayIsOpen finish", true);
            d();
        } else if (!bz.aK().p()) {
            if (this.f == null) {
                c();
            } else if (2 == this.f.r()) {
                cb.b("IN-APP-MSG-QUEUE", "displayCurrentToast() dismissToast bc NDT_NOT_SHOWN", true);
                a(cm.a.NONE);
            } else if (this.f.r() == 0 && this.b.get()) {
                cb.b("IN-APP-MSG-QUEUE", "displayCurrentToast() showToastModal bc NDT_MODAL", true);
                a(true);
            } else if (1 == this.f.r() && this.f1344a.get()) {
                cb.b("IN-APP-MSG-QUEUE", "displayCurrentToast() showToastNonModal bc NDT_TOAST", true);
                a(false);
            } else {
                cb.b("IN-APP-MSG-QUEUE", "displayCurrentToast() else. Trying to go to next toast. This one was: " + this.f, true);
                if (this.f != null) {
                    a(cm.a.NONE);
                } else {
                    c();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        synchronized (this.g) {
            cb.b(o(), "pauseToast()", true);
            cb.b(o(), "pauseToast() currentTime: " + System.currentTimeMillis(), true);
            if (this.f != null) {
                if (this.f.e > 0 && this.f.b != cm.c.PAUSED) {
                    this.f.b = cm.c.PAUSED;
                    this.f.v();
                }
                cb.b(o(), "pauseToast() toastVisibleTime=" + this.f.d, true);
                if (this.f.r() == 1) {
                    cb.b(o(), "pauseToast() duration: " + this.f.b(), true);
                    a(this.f.q());
                    if (bz.aK().j() != null && (bz.aK().j() instanceof AdColonyPubServicesInAppMsgActivity)) {
                        ((AdColonyPubServicesInAppMsgActivity) bz.aK().j()).b();
                    }
                }
                if (bz.aK().j() != null && (bz.aK().j() instanceof AdColonyPubServicesInAppMsgActivity)) {
                    ((AdColonyPubServicesInAppMsgActivity) bz.aK().j()).c();
                }
            }
        }
    }

    void a(boolean z) {
        if (bz.aK().j() != null && (bz.aK().j() instanceof AdColonyPubServicesInAppMsgActivity)) {
            ((AdColonyPubServicesInAppMsgActivity) bz.aK().j()).a(z);
        } else if (bz.aK().l() != null) {
            Intent intent = new Intent(bz.aK().l(), AdColonyPubServicesInAppMsgActivity.class);
            intent.addFlags(67108864);
            intent.addFlags(DriveFile.MODE_WRITE_ONLY);
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            Bundle bundle = new Bundle();
            bundle.putBoolean("isModalRequest", z);
            intent.putExtras(bundle);
            bz.aK().l().startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        synchronized (this.g) {
            cb.b(o(), "enterBackground()", true);
            if (j() && !l()) {
                a(cm.a.ACTIVITY_HIDDEN);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Activity activity) {
        synchronized (this.g) {
            cb.b(o(), "pauseFromBackground()", true);
            if (j() || l()) {
                e();
            }
            if (activity != null && (activity instanceof AdColonyPubServicesInAppMsgActivity)) {
                ((AdColonyPubServicesInAppMsgActivity) activity).d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        synchronized (this.g) {
            cb.b(o(), "resumeFromBackground()", true);
            if (k()) {
                cb.b("IN-APP-MSG-QUEUE", "resumeFromBackground, isPaused", true);
                q();
            } else {
                cb.b("IN-APP-MSG-QUEUE", "resumeFromBackground, !isPaused showToasts()", true);
                b();
            }
        }
    }

    void a(String str) {
        int i;
        synchronized (this.g) {
            if (str != null) {
                cb.b(o(), "Removing toast with sourceId: " + str, true);
                int i2 = 0;
                while (true) {
                    try {
                        i = i2;
                        if (i >= this.e.size() || this.e.get(i).q().equals(str)) {
                            break;
                        }
                        i2 = i + 1;
                    } catch (Exception e) {
                        cb.b(o(), "caught exception when calling removeToastWithSourceId " + e.toString(), true);
                    }
                }
                if (i < this.e.size()) {
                    this.e.remove(i);
                } else {
                    cb.b(o(), "Couldn't find toast (sourceId: " + str + ") in queue during removal", true);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        synchronized (this.g) {
            if (this.f != null) {
                this.f.w();
            }
            a(cm.a.FROM_JS);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i() {
        synchronized (this.g) {
            if (this.f != null) {
                this.f.w();
            }
            cp.b().a("", false, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, String str2, cm cmVar) {
        synchronized (this.g) {
            if (cmVar != null) {
                cmVar.w();
            }
            if (str != null && str2 != null) {
                cp.b().a(str + str2, false, true, cmVar.r(), cmVar.q());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(cm.a aVar) {
        synchronized (this.g) {
            if (j() && this.f != null) {
                this.f.v();
                cb.b(o(), "Dismissing toast after " + this.f.d + "ms. Reason = " + this.f.f1339a.toString(), true);
                this.f.b = cm.c.DISMISSING;
                this.f.f1339a = aVar;
                this.f.j.a(new bk() { // from class: com.adcolony.sdk.cn.2
                    /* JADX INFO: Access modifiers changed from: package-private */
                    @Override // com.adcolony.sdk.bk
                    public void a(bn.a aVar2) {
                        synchronized (cn.this.g) {
                            if (cn.this.f != null) {
                                cn.this.a(cn.this.f.q());
                                cn.this.a(cn.this.f);
                                cn.this.f = null;
                            }
                            cn.this.c.a(new bv() { // from class: com.adcolony.sdk.cn.2.1
                                @Override // com.adcolony.sdk.bv
                                public void a() {
                                    cn.this.c();
                                }
                            }, bz.aK().at().d());
                        }
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean j() {
        boolean z;
        synchronized (this.g) {
            z = this.f != null;
        }
        return z;
    }

    boolean k() {
        boolean z;
        synchronized (this.g) {
            z = this.f != null && this.f.b == cm.c.PAUSED;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean l() {
        boolean z;
        synchronized (this.g) {
            z = this.f != null && this.f.r() == 0;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public cm m() {
        cm cmVar;
        synchronized (this.g) {
            cmVar = this.f;
        }
        return cmVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n() {
        synchronized (this.g) {
            if (this.f != null) {
                this.f.j.c();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, String str) {
        WebView a2;
        synchronized (this.g) {
            if (this.f != null && (a2 = this.f.j.a()) != null) {
                cq.a(a2, i, str);
            }
        }
    }

    void b(cm cmVar) {
        if (cmVar != null) {
            HashMap hashMap = new HashMap();
            if (cmVar.b == cm.c.QUEUED) {
                hashMap.put("state", "queued");
            } else {
                hashMap.put("state", "showing");
            }
            hashMap.put("queueSize", Integer.valueOf(this.e.size()));
            hashMap.put("messageId", cmVar.y());
            hashMap.put("displayType", Integer.valueOf(cmVar.r()));
            bz.aK().a("in_app_msg", hashMap);
        }
    }
}

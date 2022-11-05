package com.apprupt.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class Events extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    volatile HeadphonesState f1907a = HeadphonesState.Unknown;
    volatile String b = "";
    volatile String c = "";
    volatile String d = "";
    volatile JSONObject e = null;

    /* loaded from: classes.dex */
    class PhoneStateEvents extends PhoneStateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Events f1909a;

        @Override // android.telephony.PhoneStateListener
        public void onSignalStrengthsChanged(SignalStrength signalStrength) {
            String str;
            int cdmaDbm;
            super.onSignalStrengthsChanged(signalStrength);
            if (signalStrength.isGsm()) {
                str = "gsm";
                if (signalStrength.getGsmSignalStrength() != 99) {
                    cdmaDbm = (signalStrength.getGsmSignalStrength() * 2) - 113;
                } else {
                    cdmaDbm = signalStrength.getGsmSignalStrength();
                }
            } else {
                str = "cdma";
                cdmaDbm = signalStrength.getCdmaDbm();
            }
            if (cdmaDbm > 0) {
                SimpleJSON simpleJSON = new SimpleJSON();
                simpleJSON.a("strength", (Object) Integer.valueOf(cdmaDbm));
                simpleJSON.a("type", (Object) str);
                this.f1909a.e = simpleJSON.f1969a;
                return;
            }
            this.f1909a.e = null;
        }
    }

    /* loaded from: classes.dex */
    enum HeadphonesState {
        Plugged,
        Unplugged,
        Unknown;

        boolean a() {
            return this != Unknown;
        }

        boolean b() {
            return this == Plugged;
        }

        static HeadphonesState a(int i) {
            switch (i) {
                case 0:
                    return Unplugged;
                case 1:
                    return Plugged;
                default:
                    return Unknown;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context) {
        a(context, "android.intent.action.HEADSET_PLUG");
        a(context, "android.intent.action.BATTERY_CHANGED");
    }

    private void a(Context context, String str) {
        context.registerReceiver(this, new IntentFilter(str));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.HEADSET_PLUG")) {
            this.f1907a = HeadphonesState.a(intent.getIntExtra("state", -1));
        } else if (intent.getAction().equals("android.intent.action.BATTERY_CHANGED")) {
            switch (intent.getIntExtra("status", -1)) {
                case 2:
                    this.b = "charging";
                    break;
                case 3:
                    this.b = "discharging";
                    break;
                case 4:
                    this.b = "unplugged";
                    break;
                case 5:
                    this.b = "full";
                    break;
                default:
                    this.b = "unknown";
                    break;
            }
            int intExtra = intent.getIntExtra("plugged", -1);
            if (intExtra == 2) {
                this.c = "usb";
            } else if (intExtra == 1) {
                this.c = "ac";
            } else {
                this.c = "";
            }
            int intExtra2 = intent.getIntExtra("level", -1);
            int intExtra3 = intent.getIntExtra("scale", -1);
            if (intExtra2 >= 0 && intExtra3 >= 0) {
                this.d = "" + (intExtra2 / intExtra3);
            }
        }
    }

    public void a(CvUnderscore cvUnderscore) {
        if (this.f1907a.a()) {
            cvUnderscore.a("headsetPlugged", Boolean.valueOf(this.f1907a.b()));
        }
        JSONObject jSONObject = this.e;
        if (jSONObject != null) {
            cvUnderscore.a("signalStrength", jSONObject);
        }
        cvUnderscore.a("batteryStatus", this.b).a("batteryLevel", this.d).a("powerSource", this.c);
    }
}

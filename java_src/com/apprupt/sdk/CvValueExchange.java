package com.apprupt.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.format.DateFormat;
import com.apprupt.sdk.CvContentManager;
import com.apprupt.sdk.CvMediator;
import com.apprupt.sdk.CvSDK;
import com.apprupt.sdk.Logger;
import com.apprupt.sdk.mediation.AdWrapper;
import com.apprupt.sdk.mediation.Adapter;
import com.apprupt.sdk.mediation.InterstitialAdWrapper;
import com.apprupt.sdk.mediation.ValueExchangeCompletion;
import com.google.android.gms.wallet.WalletConstants;
import com.unity3d.ads.adunit.AdUnitActivity;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class CvValueExchange {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger.log f1890a = Logger.a("Lifecycle.VE");
    private volatile Listener b = null;
    private volatile HashMap<String, RewardConfig> c = new HashMap<>();
    private volatile HashMap<String, Cappings> d = new HashMap<>();
    private volatile Context e;

    /* loaded from: classes.dex */
    public interface Listener {
        void onReward(Reward reward);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum Status {
        DISABLED,
        READY,
        EXCEEDED
    }

    /* loaded from: classes.dex */
    public class Reward {

        /* renamed from: a  reason: collision with root package name */
        public final int f1903a;
        public final String b;
        public final int c;

        private Reward(int i, String str, int i2) {
            this.f1903a = i;
            this.b = str;
            this.c = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class RewardConfig {

        /* renamed from: a  reason: collision with root package name */
        final String f1904a;
        final int b;
        final int c;

        private RewardConfig(String str, int i, int i2) {
            this.f1904a = str;
            this.b = i;
            this.c = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class Cappings {
        private RewardConfig b;
        private int c;
        private String d;

        private Cappings(RewardConfig rewardConfig, SimpleJSON simpleJSON) {
            this.c = 0;
            this.d = "-----";
            if (simpleJSON != null) {
                this.c = simpleJSON.d(AdUnitActivity.EXTRA_VIEWS, 0);
                this.d = simpleJSON.a("ts", "-----");
            }
            a(rewardConfig);
        }

        private void a(RewardConfig rewardConfig) {
            this.b = rewardConfig;
            a(false);
        }

        private void a(boolean z) {
            String charSequence = DateFormat.format("yy/MM/dd", Calendar.getInstance().getTime()).toString();
            if (!this.d.equals(charSequence)) {
                this.d = charSequence;
                this.c = 0;
                if (z) {
                    CvValueExchange.this.b();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            a(false);
            this.c++;
            CvValueExchange.this.b();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int b() {
            a(true);
            return Math.max(0, this.b.c - this.c);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean c() {
            return b() > 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public JSONObject d() {
            SimpleJSON simpleJSON = new SimpleJSON();
            simpleJSON.a("ts", (Object) this.d);
            simpleJSON.a(AdUnitActivity.EXTRA_VIEWS, (Object) Integer.valueOf(this.c));
            return simpleJSON.f1969a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context) {
        this.e = context.getApplicationContext();
    }

    SharedPreferences a() {
        return this.e.getSharedPreferences("cvValueExchange", 0);
    }

    private RewardConfig a(SimpleJSON simpleJSON, RewardConfig rewardConfig) {
        return new RewardConfig(simpleJSON.a("currency", rewardConfig.f1904a), simpleJSON.d("rewardAmount", Integer.valueOf(rewardConfig.b)), simpleJSON.d("dailyLimit", Integer.valueOf(rewardConfig.c)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(SimpleJSON simpleJSON) {
        SimpleJSON simpleJSON2;
        String str;
        Logger.log logVar = f1890a;
        Object[] objArr = new Object[2];
        objArr[0] = "VEEEEEE";
        objArr[1] = simpleJSON != null ? simpleJSON.toString() : "";
        logVar.d(objArr);
        SharedPreferences a2 = a();
        if (simpleJSON == null) {
            String string = a2.getString("config", null);
            if (string != null && string.length() != 0) {
                simpleJSON = new SimpleJSON(string);
            } else {
                return;
            }
        }
        f1890a.b("Got ve config", simpleJSON.toString());
        SharedPreferences.Editor edit = a2.edit();
        edit.putString("config", simpleJSON.toString());
        edit.commit();
        String string2 = a2.getString("cappings", null);
        if (string2 != null && string2.length() > 0) {
            simpleJSON2 = new SimpleJSON(string2);
        } else {
            simpleJSON2 = new SimpleJSON();
        }
        RewardConfig a3 = a(simpleJSON, new RewardConfig("Credits", 1, 20));
        SimpleJSON e = simpleJSON.e("spaces");
        JSONArray a4 = e.a();
        this.c.clear();
        this.d.clear();
        for (int i = 0; i < a4.length(); i++) {
            try {
                str = a4.getString(i);
            } catch (JSONException e2) {
                str = null;
            }
            if (str != null) {
                RewardConfig a5 = a(e.a(str, new SimpleJSON()), a3);
                this.c.put(str, a5);
                Cappings cappings = new Cappings(a5, simpleJSON2.e(str));
                this.d.put(str, cappings);
                f1890a.b("ve config for", str, Integer.valueOf(cappings.b()));
            }
        }
        b();
    }

    void b() {
        SimpleJSON simpleJSON = new SimpleJSON();
        for (Map.Entry<String, Cappings> entry : this.d.entrySet()) {
            simpleJSON.a(entry.getKey(), entry.getValue().d());
        }
        SharedPreferences.Editor edit = a().edit();
        edit.putString("cappings", simpleJSON.toString());
        edit.commit();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final String str, Adapter adapter, AdWrapper adWrapper) {
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.CvValueExchange.1
            @Override // java.lang.Runnable
            public void run() {
                Cappings cappings = (Cappings) CvValueExchange.this.d.get(str);
                if (cappings != null) {
                    CvValueExchange.f1890a.b("Grant rewardAmount ", cappings.b.f1904a, Integer.valueOf(cappings.b.b), Integer.valueOf(cappings.b()));
                    RewardConfig rewardConfig = cappings.b;
                    if (rewardConfig != null && CvValueExchange.this.b != null) {
                        CvValueExchange.this.b.onReward(new Reward(Integer.valueOf(str).intValue(), rewardConfig.f1904a, rewardConfig.b));
                        cappings.a();
                        return;
                    }
                    return;
                }
                CvValueExchange.f1890a.d("Grant rewardAmount - unknown space", str);
            }
        });
    }

    public void a(Listener listener) {
        this.b = listener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.apprupt.sdk.CvValueExchange$2  reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f1892a;
        final /* synthetic */ CvContentManager.PreloaderListener b;
        final /* synthetic */ String c;
        final /* synthetic */ String d;
        final /* synthetic */ Context e;

        AnonymousClass2(int i, CvContentManager.PreloaderListener preloaderListener, String str, String str2, Context context) {
            this.f1892a = i;
            this.b = preloaderListener;
            this.c = str;
            this.d = str2;
            this.e = context;
        }

        /* renamed from: com.apprupt.sdk.CvValueExchange$2$1  reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass1 implements Runnable {
            AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Cappings cappings = (Cappings) CvValueExchange.this.d.get(Integer.toString(AnonymousClass2.this.f1892a));
                CvValueExchange.f1890a.b("cappings", cappings);
                if (cappings != null) {
                    if (!cappings.c()) {
                        if (AnonymousClass2.this.b != null) {
                            AnonymousClass2.this.b.onPreloaderFinish(new CvPreloaderResponse("ValueExchange daily limit exceeded for ad space " + AnonymousClass2.this.f1892a, 403));
                            return;
                        }
                        return;
                    }
                    CvSDK.c.a(AnonymousClass2.this.e, new CvContentOptions(Integer.toString(AnonymousClass2.this.f1892a), AnonymousClass2.this.c, AnonymousClass2.this.d, true, CvAdColony.b().a(AnonymousClass2.this.f1892a, true), true, new ValueExchangeCompletion() { // from class: com.apprupt.sdk.CvValueExchange.2.1.1
                        @Override // com.apprupt.sdk.mediation.ValueExchangeCompletion
                        public void a(final String str, final Adapter adapter, final AdWrapper adWrapper) {
                            CvValueExchange.f1890a.b("VE onComplete called with adSpaceId", str, adapter, adWrapper);
                            CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.CvValueExchange.2.1.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    CvValueExchange.this.a(str, adapter, adWrapper);
                                }
                            });
                        }
                    }), AnonymousClass2.this.b, true);
                } else if (AnonymousClass2.this.b != null) {
                    AnonymousClass2.this.b.onPreloaderFinish(new CvPreloaderResponse("ValueExchange is not configured for ad space " + AnonymousClass2.this.f1892a, WalletConstants.ERROR_CODE_INVALID_PARAMETERS));
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            CvValueExchange.f1890a.b("Preparing for ve...");
            CvViewHelper.a(new AnonymousClass1(), true);
        }
    }

    public void a(Context context, int i, CvContentManager.PreloaderListener preloaderListener, String str, String str2) {
        CvSDK.c.a(new AnonymousClass2(i, preloaderListener, str, str2, context));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.apprupt.sdk.CvValueExchange$3  reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f1896a;
        final /* synthetic */ CvSDK.CvInterstitialListener b;
        final /* synthetic */ String c;
        final /* synthetic */ String d;
        final /* synthetic */ Context e;

        AnonymousClass3(int i, CvSDK.CvInterstitialListener cvInterstitialListener, String str, String str2, Context context) {
            this.f1896a = i;
            this.b = cvInterstitialListener;
            this.c = str;
            this.d = str2;
            this.e = context;
        }

        /* renamed from: com.apprupt.sdk.CvValueExchange$3$1  reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass1 implements Runnable {
            AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Cappings cappings = (Cappings) CvValueExchange.this.d.get(Integer.toString(AnonymousClass3.this.f1896a));
                CvValueExchange.f1890a.b("cappings", cappings);
                if (cappings != null) {
                    if (!cappings.c()) {
                        CvInterstitialActivity.a(AnonymousClass3.this.b).cvInterstitialDidFail(AnonymousClass3.this.f1896a, "ValueExchange daily limit exceeded for ad space " + AnonymousClass3.this.f1896a, 403);
                        return;
                    }
                    CvContentOptions cvContentOptions = new CvContentOptions(Integer.toString(AnonymousClass3.this.f1896a), AnonymousClass3.this.c, AnonymousClass3.this.d, true, CvAdColony.b().a(AnonymousClass3.this.f1896a, true), true, new ValueExchangeCompletion() { // from class: com.apprupt.sdk.CvValueExchange.3.1.1
                        @Override // com.apprupt.sdk.mediation.ValueExchangeCompletion
                        public void a(final String str, final Adapter adapter, final AdWrapper adWrapper) {
                            CvValueExchange.f1890a.b("VE onComplete called with adSpaceId", str, adapter, adWrapper);
                            CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.CvValueExchange.3.1.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    CvValueExchange.this.a(str, adapter, adWrapper);
                                }
                            });
                        }
                    });
                    cvContentOptions.i = AnonymousClass3.this.b;
                    CvValueExchange.f1890a.b("start ve interstitial", Boolean.valueOf(cvContentOptions.g));
                    CvSDK.c.a(AnonymousClass3.this.e, cvContentOptions, new CvMediator.Completion() { // from class: com.apprupt.sdk.CvValueExchange.3.1.2
                        @Override // com.apprupt.sdk.CvMediator.Completion
                        public void a(String str) {
                            if (AnonymousClass3.this.b != null) {
                                AnonymousClass3.this.b.cvInterstitialDidFail(AnonymousClass3.this.f1896a, str, -1);
                            }
                        }

                        @Override // com.apprupt.sdk.CvMediator.Completion
                        public void a(final AdWrapper adWrapper) {
                            CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.CvValueExchange.3.1.2.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    ((InterstitialAdWrapper) adWrapper).b();
                                }
                            }, true);
                        }
                    });
                    return;
                }
                CvInterstitialActivity.a(AnonymousClass3.this.b).cvInterstitialDidFail(AnonymousClass3.this.f1896a, "ValueExchange is not configured for ad space " + AnonymousClass3.this.f1896a, WalletConstants.ERROR_CODE_INVALID_PARAMETERS);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            CvValueExchange.f1890a.b("Preparing for ve...");
            CvViewHelper.a(new AnonymousClass1(), true);
        }
    }

    public void a(Context context, int i, CvSDK.CvInterstitialListener cvInterstitialListener, String str, String str2) {
        CvSDK.c.a(new AnonymousClass3(i, cvInterstitialListener, str, str2, context));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Status a(int i) {
        Cappings cappings = this.d.get(Integer.toString(i));
        return cappings == null ? Status.DISABLED : cappings.b() > 0 ? Status.READY : Status.EXCEEDED;
    }
}

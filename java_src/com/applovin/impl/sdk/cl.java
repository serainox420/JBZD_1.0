package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinPostbackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Map;
/* loaded from: classes.dex */
public class cl extends bw {

    /* renamed from: a  reason: collision with root package name */
    private final String f1634a;
    private final Map b;
    private final AppLovinPostbackListener c;
    private int d;
    private int i;
    private int j;

    public cl(AppLovinSdkImpl appLovinSdkImpl, String str, Map map, AppLovinPostbackListener appLovinPostbackListener) {
        super("TaskDispatchPostback", appLovinSdkImpl);
        this.j = -1;
        this.f1634a = str;
        this.c = appLovinPostbackListener;
        this.b = map;
    }

    public void a(int i) {
        this.d = i;
    }

    public void b(int i) {
        this.i = i;
    }

    public void c(int i) {
        this.j = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!AppLovinSdkUtils.isValidString(this.f1634a)) {
            this.f.getLogger().i("TaskDispatchPostback", "Requested URL is not valid; nothing to do...");
            this.c.onPostbackFailure(this.f1634a, AppLovinErrorCodes.INVALID_URL);
            return;
        }
        cm cmVar = new cm(this, "RepeatTaskDispatchPostback", this.d < 0 ? ((Integer) this.f.a(bx.at)).intValue() : this.d, this.f);
        cmVar.a(this.i);
        cmVar.run();
    }
}

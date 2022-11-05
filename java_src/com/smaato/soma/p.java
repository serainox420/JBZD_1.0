package com.smaato.soma;

import android.content.Context;
import com.smaato.soma.bannerutilities.constant.BannerStatus;
import com.smaato.soma.exception.OpeningLandingPageFailed;
import com.smaato.soma.mediation.CSMAdFormat;
import java.util.List;
import java.util.TreeMap;
/* compiled from: ReceivedBannerInterface.java */
/* loaded from: classes3.dex */
public interface p {
    BannerStatus a();

    void a(Context context) throws OpeningLandingPageFailed;

    void a(AdType adType);

    void a(ErrorCode errorCode);

    void a(BannerStatus bannerStatus);

    void a(com.smaato.soma.internal.b.a aVar);

    void a(CSMAdFormat cSMAdFormat);

    void a(String str);

    void a(TreeMap<Integer, com.smaato.soma.mediation.o> treeMap);

    void a(boolean z);

    boolean b();

    CSMAdFormat c();

    AdType d();

    String e();

    String f();

    List<String> g();

    String h();

    String i();

    String j();

    ErrorCode k();

    String l();

    com.smaato.soma.internal.d.c m();

    com.smaato.soma.internal.b.a n();

    String o();

    TreeMap<Integer, com.smaato.soma.mediation.o> p();
}

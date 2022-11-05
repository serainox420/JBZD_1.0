package com.mopub.mobileads;

import android.content.Context;
import android.graphics.Point;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.mopub.common.MoPubHttpUrlConnection;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Streams;
import com.mopub.common.util.Strings;
import com.mopub.mobileads.l;
import com.mopub.network.Networking;
import com.mopub.network.TrackingRequest;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class VastXmlManagerAggregator extends AsyncTask<String, Void, VastVideoConfig> {
    public static final String ADS_BY_AD_SLOT_ID = "adsBy";
    public static final String SOCIAL_ACTIONS_AD_SLOT_ID = "socialActions";

    /* renamed from: a  reason: collision with root package name */
    private static final List<String> f4496a = Arrays.asList("video/mp4", "video/3gpp");
    private final WeakReference<b> b;
    private final double c;
    private final int d;
    private final Context e;
    private int f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public enum a {
        LANDSCAPE,
        PORTRAIT
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface b {
        void onAggregationComplete(VastVideoConfig vastVideoConfig);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public VastXmlManagerAggregator(b bVar, double d, int i, Context context) {
        Preconditions.checkNotNull(bVar);
        Preconditions.checkNotNull(context);
        this.b = new WeakReference<>(bVar);
        this.c = d;
        this.d = i;
        this.e = context.getApplicationContext();
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        Networking.getUserAgent(this.e);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public VastVideoConfig doInBackground(String... strArr) {
        if (strArr == null || strArr.length == 0 || strArr[0] == null) {
            return null;
        }
        try {
            return a(strArr[0], new ArrayList());
        } catch (Exception e) {
            MoPubLog.d("Unable to generate VastVideoConfig.", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public void onPostExecute(VastVideoConfig vastVideoConfig) {
        b bVar = this.b.get();
        if (bVar != null) {
            bVar.onAggregationComplete(vastVideoConfig);
        }
    }

    @Override // android.os.AsyncTask
    protected void onCancelled() {
        b bVar = this.b.get();
        if (bVar != null) {
            bVar.onAggregationComplete(null);
        }
    }

    @VisibleForTesting
    VastVideoConfig a(String str, List<VastTracker> list) {
        VastVideoConfig a2;
        VastVideoConfig a3;
        Preconditions.checkNotNull(str, "vastXml cannot be null");
        Preconditions.checkNotNull(list, "errorTrackers cannot be null");
        o oVar = new o();
        try {
            oVar.a(str);
            List<d> a4 = oVar.a();
            if (a(a4, oVar, this.e)) {
                return null;
            }
            for (d dVar : a4) {
                if (a(dVar.c())) {
                    h a5 = dVar.a();
                    if (a5 != null && (a3 = a(a5, list)) != null) {
                        a(oVar, a3);
                        return a3;
                    }
                    n b2 = dVar.b();
                    if (b2 != null) {
                        List<VastTracker> arrayList = new ArrayList<>(list);
                        arrayList.addAll(b2.b());
                        String a6 = a(b2, arrayList);
                        if (a6 != null && (a2 = a(a6, arrayList)) != null) {
                            a2.addImpressionTrackers(b2.a());
                            for (i iVar : b2.c()) {
                                a(iVar, a2);
                            }
                            a(b2, a2);
                            List<f> d = b2.d();
                            if (!a2.hasCompanionAd()) {
                                a2.setVastCompanionAd(a(d, a.LANDSCAPE), a(d, a.PORTRAIT));
                            } else {
                                VastCompanionAdConfig vastCompanionAd = a2.getVastCompanionAd(2);
                                VastCompanionAdConfig vastCompanionAd2 = a2.getVastCompanionAd(1);
                                if (vastCompanionAd != null && vastCompanionAd2 != null) {
                                    for (f fVar : d) {
                                        if (!fVar.h()) {
                                            vastCompanionAd.addClickTrackers(fVar.f());
                                            vastCompanionAd.addCreativeViewTrackers(fVar.g());
                                            vastCompanionAd2.addClickTrackers(fVar.f());
                                            vastCompanionAd2.addCreativeViewTrackers(fVar.g());
                                        }
                                    }
                                }
                            }
                            if (a2.getSocialActionsCompanionAds().isEmpty()) {
                                a2.setSocialActionsCompanionAds(b(d));
                            }
                            a(oVar, a2);
                            return a2;
                        }
                    } else {
                        continue;
                    }
                }
            }
            return null;
        } catch (Exception e) {
            MoPubLog.d("Failed to parse VAST XML", e);
            TrackingRequest.makeVastTrackingHttpRequest(list, VastErrorCode.XML_PARSING_ERROR, null, null, this.e);
            return null;
        }
    }

    private VastVideoConfig a(h hVar, List<VastTracker> list) {
        Preconditions.checkNotNull(hVar);
        Preconditions.checkNotNull(list);
        for (i iVar : hVar.c()) {
            String a2 = a(iVar.k());
            if (a2 != null) {
                VastVideoConfig vastVideoConfig = new VastVideoConfig();
                vastVideoConfig.addImpressionTrackers(hVar.a());
                a(iVar, vastVideoConfig);
                vastVideoConfig.setClickThroughUrl(iVar.h());
                vastVideoConfig.setNetworkMediaFileUrl(a2);
                List<f> d = hVar.d();
                vastVideoConfig.setVastCompanionAd(a(d, a.LANDSCAPE), a(d, a.PORTRAIT));
                vastVideoConfig.setSocialActionsCompanionAds(b(d));
                list.addAll(hVar.b());
                vastVideoConfig.addErrorTrackers(list);
                a(hVar, vastVideoConfig);
                return vastVideoConfig;
            }
        }
        return null;
    }

    private void a(e eVar, VastVideoConfig vastVideoConfig) {
        VastExtensionParentXmlManager e;
        Preconditions.checkNotNull(eVar);
        Preconditions.checkNotNull(vastVideoConfig);
        if (vastVideoConfig.getVideoViewabilityTracker() == null && (e = eVar.e()) != null) {
            for (VastExtensionXmlManager vastExtensionXmlManager : e.a()) {
                if ("MoPub".equals(vastExtensionXmlManager.b())) {
                    vastVideoConfig.setVideoViewabilityTracker(vastExtensionXmlManager.a());
                    return;
                }
            }
        }
    }

    private String a(n nVar, List<VastTracker> list) {
        String f = nVar.f();
        if (f == null) {
            return null;
        }
        try {
            return b(f);
        } catch (Exception e) {
            MoPubLog.d("Failed to follow VAST redirect", e);
            if (list.isEmpty()) {
                return null;
            }
            TrackingRequest.makeVastTrackingHttpRequest(list, VastErrorCode.WRAPPER_TIMEOUT, null, null, this.e);
            return null;
        }
    }

    private void a(i iVar, VastVideoConfig vastVideoConfig) {
        Preconditions.checkNotNull(iVar, "linearXmlManager cannot be null");
        Preconditions.checkNotNull(vastVideoConfig, "vastVideoConfig cannot be null");
        vastVideoConfig.addAbsoluteTrackers(iVar.b());
        vastVideoConfig.addFractionalTrackers(iVar.a());
        vastVideoConfig.addPauseTrackers(iVar.d());
        vastVideoConfig.addResumeTrackers(iVar.e());
        vastVideoConfig.addCompleteTrackers(iVar.c());
        vastVideoConfig.addCloseTrackers(iVar.f());
        vastVideoConfig.addSkipTrackers(iVar.g());
        vastVideoConfig.addClickTrackers(iVar.i());
        if (vastVideoConfig.getSkipOffsetString() == null) {
            vastVideoConfig.setSkipOffset(iVar.j());
        }
        if (vastVideoConfig.getVastIconConfig() == null) {
            vastVideoConfig.setVastIconConfig(c(iVar.l()));
        }
    }

    private void a(o oVar, VastVideoConfig vastVideoConfig) {
        Preconditions.checkNotNull(oVar, "xmlManager cannot be null");
        Preconditions.checkNotNull(vastVideoConfig, "vastVideoConfig cannot be null");
        vastVideoConfig.addImpressionTrackers(oVar.c());
        if (vastVideoConfig.getCustomCtaText() == null) {
            vastVideoConfig.setCustomCtaText(oVar.d());
        }
        if (vastVideoConfig.getCustomSkipText() == null) {
            vastVideoConfig.setCustomSkipText(oVar.e());
        }
        if (vastVideoConfig.getCustomCloseIconUrl() == null) {
            vastVideoConfig.setCustomCloseIconUrl(oVar.f());
        }
        if (!vastVideoConfig.isCustomForceOrientationSet()) {
            vastVideoConfig.setCustomForceOrientation(oVar.g());
        }
    }

    private boolean a(List<d> list, o oVar, Context context) {
        if (list.isEmpty() && oVar.b() != null) {
            TrackingRequest.makeVastTrackingHttpRequest(Collections.singletonList(oVar.b()), this.f > 0 ? VastErrorCode.NO_ADS_VAST_RESPONSE : VastErrorCode.UNDEFINED_ERROR, null, null, context);
            return true;
        }
        return false;
    }

    @VisibleForTesting
    String a(List<k> list) {
        String str;
        double d;
        Preconditions.checkNotNull(list, "managers cannot be null");
        double d2 = Double.POSITIVE_INFINITY;
        String str2 = null;
        Iterator it = new ArrayList(list).iterator();
        while (it.hasNext()) {
            k kVar = (k) it.next();
            String c = kVar.c();
            String d3 = kVar.d();
            if (!f4496a.contains(c) || d3 == null) {
                it.remove();
            } else {
                Integer a2 = kVar.a();
                Integer b2 = kVar.b();
                if (a2 != null && a2.intValue() > 0 && b2 != null && b2.intValue() > 0) {
                    double a3 = a(a2.intValue(), b2.intValue());
                    if (a3 < d2) {
                        str = d3;
                        d = a3;
                    } else {
                        str = str2;
                        d = d2;
                    }
                    d2 = d;
                    str2 = str;
                }
            }
        }
        return str2;
    }

    @VisibleForTesting
    VastCompanionAdConfig a(List<f> list, a aVar) {
        l lVar;
        f fVar;
        double a2;
        Point point;
        l lVar2;
        f fVar2;
        double d;
        Preconditions.checkNotNull(list, "managers cannot be null");
        Preconditions.checkNotNull(aVar, "orientation cannot be null");
        ArrayList<f> arrayList = new ArrayList(list);
        double d2 = Double.POSITIVE_INFINITY;
        f fVar3 = null;
        l lVar3 = null;
        Point point2 = null;
        l.b[] values = l.b.values();
        int length = values.length;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= length) {
                lVar = lVar3;
                fVar = fVar3;
                break;
            }
            l.b bVar = values[i2];
            for (f fVar4 : arrayList) {
                Integer a3 = fVar4.a();
                Integer b2 = fVar4.b();
                if (a3 != null && a3.intValue() >= 300 && b2 != null && b2.intValue() >= 250) {
                    Point a4 = a(a3.intValue(), b2.intValue(), bVar, aVar);
                    l a5 = l.a(fVar4.d(), bVar, a4.x, a4.y);
                    if (a5 != null) {
                        if (a.PORTRAIT == aVar) {
                            a2 = a(b2.intValue(), a3.intValue());
                        } else {
                            a2 = a(a3.intValue(), b2.intValue());
                        }
                        if (a2 < d2) {
                            fVar2 = fVar4;
                            d = a2;
                            point = a4;
                            lVar2 = a5;
                        } else {
                            point = point2;
                            lVar2 = lVar3;
                            fVar2 = fVar3;
                            d = d2;
                        }
                        d2 = d;
                        lVar3 = lVar2;
                        fVar3 = fVar2;
                        point2 = point;
                    }
                }
            }
            if (fVar3 != null) {
                lVar = lVar3;
                fVar = fVar3;
                break;
            }
            i = i2 + 1;
        }
        if (fVar != null) {
            return new VastCompanionAdConfig(point2.x, point2.y, lVar, fVar.e(), fVar.f(), fVar.g());
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0067 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0012 A[SYNTHETIC] */
    @VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    Map<String, VastCompanionAdConfig> b(List<f> list) {
        l a2;
        Preconditions.checkNotNull(list, "managers cannot be null");
        HashMap hashMap = new HashMap();
        for (f fVar : list) {
            Integer a3 = fVar.a();
            Integer b2 = fVar.b();
            if (a3 != null && b2 != null) {
                String c = fVar.c();
                if (ADS_BY_AD_SLOT_ID.equals(c)) {
                    if (a3.intValue() >= 25 && a3.intValue() <= 75 && b2.intValue() >= 10 && b2.intValue() <= 50) {
                        a2 = l.a(fVar.d(), l.b.HTML_RESOURCE, a3.intValue(), b2.intValue());
                        if (a2 == null) {
                            hashMap.put(c, new VastCompanionAdConfig(a3.intValue(), b2.intValue(), a2, fVar.e(), fVar.f(), fVar.g()));
                        }
                    }
                } else if (SOCIAL_ACTIONS_AD_SLOT_ID.equals(c) && a3.intValue() >= 50 && a3.intValue() <= 150 && b2.intValue() >= 10 && b2.intValue() <= 50) {
                    a2 = l.a(fVar.d(), l.b.HTML_RESOURCE, a3.intValue(), b2.intValue());
                    if (a2 == null) {
                    }
                }
            }
        }
        return hashMap;
    }

    @VisibleForTesting
    Point a(int i, int i2, l.b bVar, a aVar) {
        int i3;
        int i4;
        Point point = new Point(i, i2);
        Display defaultDisplay = ((WindowManager) this.e.getSystemService("window")).getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        int height = defaultDisplay.getHeight();
        int dipsToIntPixels = Dips.dipsToIntPixels(i, this.e);
        int dipsToIntPixels2 = Dips.dipsToIntPixels(i2, this.e);
        if (a.LANDSCAPE == aVar) {
            int max = Math.max(width, height);
            int min = Math.min(width, height);
            i3 = max;
            i4 = min;
        } else {
            int min2 = Math.min(width, height);
            int max2 = Math.max(width, height);
            i3 = min2;
            i4 = max2;
        }
        if (dipsToIntPixels > i3 - 16 || dipsToIntPixels2 > i4 - 16) {
            Point point2 = new Point();
            if (l.b.HTML_RESOURCE == bVar) {
                point2.x = Math.min(i3, dipsToIntPixels);
                point2.y = Math.min(i4, dipsToIntPixels2);
            } else {
                float f = dipsToIntPixels / i3;
                float f2 = dipsToIntPixels2 / i4;
                if (f >= f2) {
                    point2.x = i3;
                    point2.y = (int) (dipsToIntPixels2 / f);
                } else {
                    point2.x = (int) (dipsToIntPixels / f2);
                    point2.y = i4;
                }
            }
            point2.x -= 16;
            point2.y -= 16;
            if (point2.x < 0 || point2.y < 0) {
                return point;
            }
            point2.x = Dips.pixelsToIntDips(point2.x, this.e);
            point2.y = Dips.pixelsToIntDips(point2.y, this.e);
            return point2;
        }
        return point;
    }

    @VisibleForTesting
    g c(List<VastIconXmlManager> list) {
        l.b[] values;
        l a2;
        Preconditions.checkNotNull(list, "managers cannot be null");
        ArrayList<VastIconXmlManager> arrayList = new ArrayList(list);
        for (l.b bVar : l.b.values()) {
            for (VastIconXmlManager vastIconXmlManager : arrayList) {
                Integer a3 = vastIconXmlManager.a();
                Integer b2 = vastIconXmlManager.b();
                if (a3 != null && a3.intValue() > 0 && a3.intValue() <= 300 && b2 != null && b2.intValue() > 0 && b2.intValue() <= 300 && (a2 = l.a(vastIconXmlManager.e(), bVar, a3.intValue(), b2.intValue())) != null) {
                    return new g(vastIconXmlManager.a().intValue(), vastIconXmlManager.b().intValue(), vastIconXmlManager.c(), vastIconXmlManager.d(), a2, vastIconXmlManager.f(), vastIconXmlManager.g(), vastIconXmlManager.h());
                }
            }
        }
        return null;
    }

    private double a(int i, int i2) {
        return (Math.abs(Math.log((i / i2) / this.c)) * 70.0d) + (Math.abs(Math.log((i * i2) / this.d)) * 30.0d);
    }

    static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        try {
            return Integer.parseInt(str) < 2;
        } catch (NumberFormatException e) {
            return true;
        }
    }

    private String b(String str) throws IOException {
        HttpURLConnection httpURLConnection;
        Throwable th;
        BufferedInputStream bufferedInputStream;
        String str2 = null;
        Preconditions.checkNotNull(str);
        if (this.f < 10) {
            this.f++;
            try {
                httpURLConnection = MoPubHttpUrlConnection.getHttpUrlConnection(str);
                try {
                    bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                } catch (Throwable th2) {
                    bufferedInputStream = null;
                    th = th2;
                }
            } catch (Throwable th3) {
                httpURLConnection = null;
                th = th3;
                bufferedInputStream = null;
            }
            try {
                str2 = Strings.fromStream(bufferedInputStream);
                Streams.closeStream(bufferedInputStream);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
            } catch (Throwable th4) {
                th = th4;
                Streams.closeStream(bufferedInputStream);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        }
        return str2;
    }
}

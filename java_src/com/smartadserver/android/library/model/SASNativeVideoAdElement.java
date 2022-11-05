package com.smartadserver.android.library.model;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import com.facebook.ads.AudienceNetworkActivity;
import com.smartadserver.android.library.exception.SASAdTimeoutException;
import com.smartadserver.android.library.exception.SASVASTParsingException;
import com.smartadserver.android.library.model.c;
import com.smartadserver.android.library.ui.SASAdView;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class SASNativeVideoAdElement extends SASAdElement {
    public static final int AUDIO_MODE_AUTO = 1;
    public static final int AUDIO_MODE_MUTE = 0;
    public static final int AUDIO_MODE_ON = 2;
    public static final int BACKGROUND_RESIZE_100_PERCENT = 2;
    public static final int BACKGROUND_RESIZE_CONTAIN = 1;
    public static final int BACKGROUND_RESIZE_COVER = 0;
    public static final int CALL_TO_ACTION_TYPE_APPLICATION = 2;
    public static final int CALL_TO_ACTION_TYPE_CUSTOM = 3;
    public static final int CALL_TO_ACTION_TYPE_VIDEO = 1;
    public static final int CALL_TO_ACTION_TYPE_WEBSITE = 0;
    public static final int SKIP_POLICY_ALWAYS = 0;
    public static final int SKIP_POLICY_NEVER = 1;
    public static final int SKIP_POLICY_VAST_CONTROLLED = 2;
    public static final String TRACKING_EVENT_NAME_CLICK = "click";
    public static final String TRACKING_EVENT_NAME_FULLSCREEN = "fullscreen";
    public static final String VAST_COMPANION_AS_BACKGROUND = "companionBackground";
    public static final int VIDEO_POSITION_BOTTOM = 2;
    public static final int VIDEO_POSITION_CENTER = 1;
    public static final int VIDEO_POSITION_TOP = 0;
    public static final String VIDEO_REWARD = "reward";
    public static final String VIDEO_REWARD_AMOUNT = "amount";
    public static final String VIDEO_REWARD_CURRENCY = "currency";
    private boolean A;
    private String B;
    private String C;
    private String D;
    private boolean E;
    private boolean F;
    private boolean G;
    private String H;
    private HashMap<String, String[]> I;
    private String J;
    private String K;
    private b L;
    private SASAdElement M;

    /* renamed from: a  reason: collision with root package name */
    private String f5447a;
    private String b;
    private String c;
    private int d;
    private int e;
    private String f;
    private String g;
    private boolean h;
    private boolean i;
    private boolean j;
    private int k;
    private String l;
    private String m;
    private String n;
    private int o;
    private int p;
    private int q;
    private int r;
    private String s;
    private int t;
    private int u;
    private int v;
    private int w;
    private int x;
    private int y;
    private int z;
    public static final String TRACKING_EVENT_NAME_TIME_TO_CLICK = "timeToClick";
    public static final String TRACKING_EVENT_NAME_CREATIVE_VIEW = "creativeView";
    public static final String TRACKING_EVENT_NAME_START = "start";
    public static final String TRACKING_EVENT_NAME_FIRST_QUARTILE = "firstQuartile";
    public static final String TRACKING_EVENT_NAME_MIDPOINT = "midpoint";
    public static final String TRACKING_EVENT_NAME_THIRD_QUARTILE = "thirdQuartile";
    public static final String TRACKING_EVENT_NAME_COMPLETE = "complete";
    public static final String TRACKING_EVENT_NAME_MUTE = "mute";
    public static final String TRACKING_EVENT_NAME_UNMUTE = "unmute";
    public static final String TRACKING_EVENT_NAME_PAUSE = "pause";
    public static final String TRACKING_EVENT_NAME_REWIND = "rewind";
    public static final String TRACKING_EVENT_NAME_RESUME = "resume";
    public static final String TRACKING_EVENT_NAME_EXIT_FULLSCREEN = "exitFullscreen";
    public static final String TRACKING_EVENT_NAME_PROGRESS = "progress";
    public static final String TRACKING_EVENT_NAME_SKIP = "skip";
    public static final String[] TRACKING_EVENT_NAMES = {"click", TRACKING_EVENT_NAME_TIME_TO_CLICK, TRACKING_EVENT_NAME_CREATIVE_VIEW, TRACKING_EVENT_NAME_START, TRACKING_EVENT_NAME_FIRST_QUARTILE, TRACKING_EVENT_NAME_MIDPOINT, TRACKING_EVENT_NAME_THIRD_QUARTILE, TRACKING_EVENT_NAME_COMPLETE, TRACKING_EVENT_NAME_MUTE, TRACKING_EVENT_NAME_UNMUTE, TRACKING_EVENT_NAME_PAUSE, TRACKING_EVENT_NAME_REWIND, TRACKING_EVENT_NAME_RESUME, "fullscreen", TRACKING_EVENT_NAME_EXIT_FULLSCREEN, TRACKING_EVENT_NAME_PROGRESS, TRACKING_EVENT_NAME_SKIP};

    public SASNativeVideoAdElement() {
        this.d = -1;
        this.e = -1;
        this.H = "";
        this.I = new HashMap<>();
    }

    public int getMediaWidth() {
        return this.d;
    }

    public void setMediaWidth(int i) {
        this.d = i;
        if (i > 0) {
            setPortraitWidth(i);
            setLandscapeWidth(i);
        }
    }

    public int getMediaHeight() {
        return this.e;
    }

    public void setMediaHeight(int i) {
        this.e = i;
        if (i > 0) {
            setPortraitHeight(i);
            setLandscapeHeight(i);
        }
    }

    public SASNativeVideoAdElement(JSONObject jSONObject, final long j) throws JSONException, SASAdTimeoutException, SASVASTParsingException {
        final String str;
        String str2;
        JSONObject jSONObject2;
        String trim;
        JSONObject optJSONObject;
        int optInt;
        int optInt2;
        URL url;
        this.d = -1;
        this.e = -1;
        this.H = "";
        this.I = new HashMap<>();
        if (jSONObject != null) {
            try {
                this.f5447a = jSONObject.optString("videoUrl");
                try {
                    if (new URL(this.f5447a).getPath().endsWith(".js")) {
                        this.b = this.f5447a;
                        this.f5447a = "";
                    }
                } catch (MalformedURLException e) {
                }
                this.J = jSONObject.optString("vastUrl");
                this.K = jSONObject.optString("vastMarkup");
                if (this.f5447a == null && this.J == null) {
                    throw new JSONException("Missing required videoUrl or vastUrl element");
                }
                this.i = jSONObject.optInt(AudienceNetworkActivity.AUTOPLAY, 0) == 1;
                this.j = jSONObject.optInt("autoclose", 0) == 1;
                this.r = jSONObject.optInt("skipPolicy", 0);
                this.t = jSONObject.optInt("audioMode", 1);
                this.h = jSONObject.optInt("restartVideoWhenEnteringFullscreen", 0) == 1;
                this.f = jSONObject.optString("posterImageUrl");
                this.p = Color.parseColor("#" + jSONObject.optString("backgroundColor", "000000"));
                this.n = jSONObject.optString("backgroundImageUrl");
                this.o = jSONObject.optInt("backgroundResizeMode", 1);
                this.g = jSONObject.optString("posterImageOffsetPosition");
                this.k = jSONObject.optInt("callToActionType", 0);
                this.l = jSONObject.optString("callToActionCustomText", "");
                this.q = jSONObject.optInt("videoPosition", 1);
                this.E = jSONObject.optInt("stickToTop", 0) == 1;
                this.F = jSONObject.optInt("skippable", 0) == 1;
                this.G = jSONObject.optInt("video360", 0) == 1;
                this.H = jSONObject.optString("adFailUrl", "");
                this.c = jSONObject.optString("adParameters", "");
                JSONObject optJSONObject2 = jSONObject.optJSONObject("videoBlurredBackground");
                if (optJSONObject2 != null) {
                    this.v = optJSONObject2.optInt("blurRadius", 10);
                    this.w = Color.parseColor("#" + optJSONObject2.optString("tintColor", "000000"));
                    this.x = optJSONObject2.optInt("tintOpacity", 0);
                    this.z = 2;
                    this.y = 4;
                    JSONObject optJSONObject3 = optJSONObject2.optJSONObject("config");
                    if (optJSONObject3 != null && (optJSONObject = optJSONObject3.optJSONObject(io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE)) != null) {
                        JSONObject optJSONObject4 = optJSONObject.optJSONObject("high");
                        if (optJSONObject4 != null && (optInt2 = optJSONObject4.optInt("size")) > 0) {
                            this.z = optInt2;
                        }
                        JSONObject optJSONObject5 = optJSONObject.optJSONObject("low");
                        if (optJSONObject5 != null && (optInt = optJSONObject5.optInt("size")) > 0) {
                            this.y = optInt;
                        }
                    }
                } else {
                    this.v = -1;
                }
                this.A = jSONObject.optInt(VAST_COMPANION_AS_BACKGROUND, 0) == 1;
                HashMap hashMap = new HashMap();
                if (this.J != null && this.J.length() > 0) {
                    str = this.J;
                } else {
                    str = (this.K == null || this.K.length() <= 0) ? null : this.K;
                }
                if (str != null) {
                    if (j <= 0) {
                        throw new SASAdTimeoutException("Timeout before fetching VAST");
                    }
                    ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
                    try {
                        try {
                            c cVar = (c) newSingleThreadExecutor.submit(new Callable<c>() { // from class: com.smartadserver.android.library.model.SASNativeVideoAdElement.1
                                @Override // java.util.concurrent.Callable
                                /* renamed from: a */
                                public c call() throws Exception {
                                    return c.a(str, true, System.currentTimeMillis() + j);
                                }
                            }).get(j, TimeUnit.MILLISECONDS);
                            newSingleThreadExecutor.shutdown();
                            com.smartadserver.android.library.g.c.a("SASNativeVideoAdElement", "VASTAdElement OK !");
                            c.C0582c a2 = cVar.a();
                            this.c = cVar.h();
                            if ("VPAID".equals(a2.d)) {
                                this.b = a2.f5454a;
                            } else {
                                this.f5447a = a2.f5454a;
                            }
                            this.u = cVar.i();
                            setMediaWidth(a2.e);
                            setMediaHeight(a2.f);
                            String join = TextUtils.join(",", cVar.d());
                            if (join != null && join.length() > 0) {
                                setImpressionUrlString(join);
                            }
                            String f = cVar.f();
                            if (f != null) {
                                setClickUrl(f);
                            }
                            ArrayList<String> g = cVar.g();
                            if (g != null && g.size() > 0) {
                                hashMap.put("click", g);
                            }
                            for (Map.Entry<String, ArrayList<String>> entry : cVar.e().entrySet()) {
                                hashMap.put(entry.getKey(), entry.getValue());
                            }
                            this.s = cVar.b();
                            this.m = cVar.c();
                            if (this.A && cVar.j() != null) {
                                c.b j2 = cVar.j();
                                setBackgroundImageUrl(j2.f5453a);
                                c(j2.d);
                                a(j2.b);
                                b(j2.c);
                            }
                        } catch (TimeoutException e2) {
                            throw new SASAdTimeoutException("Could not fetch VAST ad in " + j + " ms");
                        }
                    } catch (Exception e3) {
                        throw new SASVASTParsingException(e3.getCause().getMessage());
                    }
                }
                JSONObject optJSONObject6 = jSONObject.optJSONObject("trackEvents");
                if (optJSONObject6 != null) {
                    String optString = optJSONObject6.optString("urlTemplate");
                    JSONObject optJSONObject7 = optJSONObject6.optJSONObject("wrapperEvents");
                    this.m = optJSONObject6.optString("progressOffset");
                    str2 = optString;
                    jSONObject2 = optJSONObject7;
                } else {
                    str2 = null;
                    jSONObject2 = null;
                }
                if (jSONObject2 != null || str2 != null || hashMap.size() > 0) {
                    int length = TRACKING_EVENT_NAMES.length;
                    ArrayList arrayList = new ArrayList();
                    for (int i = 0; i < length; i++) {
                        arrayList.clear();
                        String str3 = TRACKING_EVENT_NAMES[i];
                        if (str2 != null) {
                            arrayList.add(str2.replace("[eventName]", str3).trim());
                        }
                        if (jSONObject2 != null && (trim = jSONObject2.optString(str3).trim()) != null && trim.length() > 0) {
                            arrayList.add(trim);
                        }
                        ArrayList arrayList2 = (ArrayList) hashMap.get(str3);
                        if (arrayList2 != null) {
                            arrayList.addAll(arrayList2);
                        }
                        setEventTrackingURLs(str3, (String[]) arrayList.toArray(new String[0]));
                    }
                }
                JSONObject optJSONObject8 = jSONObject.optJSONObject("reward");
                if (optJSONObject8 != null) {
                    b bVar = new b(optJSONObject8.optString("currency", null), optJSONObject8.optDouble("amount", 0.0d));
                    if (bVar.a()) {
                        this.L = bVar;
                    }
                }
            } catch (Exception e4) {
                if (((e4 instanceof SASAdTimeoutException) || (e4 instanceof SASVASTParsingException)) && this.H != null && this.H.length() > 0) {
                    com.smartadserver.android.library.a.c.a((Context) null).a(this.H, true);
                }
                throw e4;
            }
        }
        JSONObject optJSONObject9 = jSONObject.optJSONObject("htmlLayer");
        if (optJSONObject9 != null) {
            String optString2 = optJSONObject9.optString("htmlLayerScriptUrl");
            String optString3 = optJSONObject9.optString("htmlLayerScript");
            String baseUrl = SASAdView.getBaseUrl();
            if (optString3 == null || optString3.length() <= 0) {
                if (optString2 == null || optString2.length() <= 0) {
                    optString3 = "";
                } else {
                    try {
                        url = new URL(optString2);
                    } catch (MalformedURLException e5) {
                        e5.printStackTrace();
                        url = null;
                    }
                    String[] strArr = new String[1];
                    optString3 = com.smartadserver.android.library.g.b.a(url, strArr);
                    baseUrl = strArr[0] != null ? com.smartadserver.android.library.g.c.h(strArr[0]) : com.smartadserver.android.library.g.c.h(optString2);
                }
            }
            if (optString3 != null && optString3.length() > 0) {
                this.M = new SASAdElement();
                this.M.setBaseUrl(baseUrl);
                this.M.setHtmlContents(optString3);
                this.M.setCloseButtonAppearanceDelay(3000);
                this.M.setDisplayCloseAppearanceCountDown(true);
            }
        }
    }

    public String getVPAIDUrl() {
        return this.b;
    }

    public String getAdParameters() {
        return this.c;
    }

    public int getMediaDuration() {
        return this.u;
    }

    public String getVideoUrl() {
        return this.f5447a;
    }

    public void setVideoUrl(String str) {
        this.f5447a = str;
    }

    public String getPosterImageUrl() {
        return this.f;
    }

    public void setPosterImageUrl(String str) {
        this.f = str;
    }

    public String getPosterImageOffsetPosition() {
        return this.g;
    }

    public void setPosterImageOffsetPosition(String str) {
        this.g = str;
    }

    public String getBackgroundImageUrl() {
        return this.n;
    }

    public void setBackgroundImageUrl(String str) {
        this.n = str;
    }

    public int getBackgroundResizeMode() {
        return this.o;
    }

    public void setBackgroundResizeMode(int i) {
        this.o = i;
    }

    public int getAudioMode() {
        return this.t;
    }

    public void setAudioMode(int i) {
        if (i < 0 || i > 2) {
            i = 1;
        }
        this.t = i;
    }

    public void setVideoVerticalPosition(int i) {
        this.q = i;
    }

    public int getVideoVerticalPosition() {
        return this.q;
    }

    public int getBackgroundColor() {
        return this.p;
    }

    public void setBackgroundColor(int i) {
        this.p = i;
    }

    public int getTintOpacity() {
        return this.x;
    }

    public void setTintOpacity(int i) {
        this.x = i;
    }

    public int getTintColor() {
        return this.w;
    }

    public void setTintColor(int i) {
        this.w = i;
    }

    public int getBlurRadius() {
        return this.v;
    }

    public void setBlurRadius(int i) {
        this.v = i;
    }

    public int getBlurDownScaleFactorLowEnd() {
        return this.y;
    }

    public int getBlurDownScaleFactorHighEnd() {
        return this.z;
    }

    public boolean isRestartWhenEnteringFullscreen() {
        return this.h;
    }

    public void setRestartWhenEnteringFullscreen(boolean z) {
        this.h = z;
    }

    public int getSkipPolicy() {
        return this.r;
    }

    public void setSkipPolicy(int i) {
        this.r = i;
    }

    public String getSkipOffset() {
        return this.s;
    }

    public boolean isAutoplay() {
        return this.i;
    }

    public void setAutoplay(boolean z) {
        this.i = z;
    }

    public boolean isAutoclose() {
        return this.j;
    }

    public void setAutoclose(boolean z) {
        this.j = z;
    }

    public int getCallToActionType() {
        return this.k;
    }

    public void setCallToActionType(int i) {
        this.k = i;
    }

    public String getCallToActionCustomText() {
        return this.l;
    }

    public void setCallToActionCustomText(String str) {
        this.l = str;
    }

    public void setEventTrackingURLs(String str, String[] strArr) {
        this.I.put(str, strArr);
    }

    public String[] getEventTrackingURL(String str) {
        return this.I.get(str);
    }

    public String getProgressOffset() {
        return this.m;
    }

    public void setProgressOffset(String str) {
        this.m = str;
    }

    @Override // com.smartadserver.android.library.model.SASAdElement
    public boolean isOpenClickInApplication() {
        return false;
    }

    @Override // com.smartadserver.android.library.model.SASAdElement
    public void setClickUrl(String str) {
        super.setClickUrl(str);
        this.C = str;
        this.D = null;
    }

    public boolean isStickToTopEnabled() {
        return this.E;
    }

    public void setStickToTopEnabled(boolean z) {
        this.E = z;
    }

    public boolean isStickToTopSkippable() {
        return this.F;
    }

    public void setStickToTopSkippable(boolean z) {
        this.F = z;
    }

    public boolean isVideo360Mode() {
        return this.G;
    }

    public void setVideo360Mode(boolean z) {
        this.G = z;
    }

    public String getAdFailUrl() {
        return this.H;
    }

    public void setAdFailUrl(String str) {
        this.H = str;
    }

    public String getBackgroundClickUrl() {
        return this.C;
    }

    private void a(String str) {
        this.C = str;
    }

    public String getBackgroundClickTrackingUrl() {
        return this.D;
    }

    private void b(String str) {
        this.D = str;
    }

    public String getBackgroundImpressionUrl() {
        return this.B;
    }

    private void c(String str) {
        this.B = str;
    }

    public String getClickUrlFromBackground(boolean z) {
        return (!z || getBackgroundClickUrl() == null) ? getClickUrl() : getBackgroundClickUrl();
    }

    public b getReward() {
        return this.L;
    }

    public void setReward(b bVar) {
        this.L = bVar;
    }

    public SASAdElement getHtmlLayerAdElement() {
        return this.M;
    }

    public void setHtmlLayerAdElement(SASAdElement sASAdElement) {
        this.M = sASAdElement;
    }

    @Override // com.smartadserver.android.library.model.SASAdElement
    protected String a() {
        return "Native Video ";
    }

    @Override // com.smartadserver.android.library.model.SASAdElement
    public String getDebugInfo() {
        return super.getDebugInfo() + getVideoDebugInfo();
    }

    public String getVideoDebugInfo() {
        if (this.b == null || this.b.length() <= 0) {
            return (this.f5447a == null || this.f5447a.length() <= 0) ? " | VideoURL: " : " | VideoURL: " + this.f5447a;
        }
        return " | VideoURL: " + this.b;
    }
}

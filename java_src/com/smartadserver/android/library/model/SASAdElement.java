package com.smartadserver.android.library.model;

import com.smartadserver.android.library.c.j;
import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
/* loaded from: classes3.dex */
public class SASAdElement implements Serializable, Cloneable {
    public static final int BUTTON_BOTTOM_CENTER = 5;
    public static final int BUTTON_BOTTOM_LEFT = 2;
    public static final int BUTTON_BOTTOM_RIGHT = 3;
    public static final int BUTTON_CENTER = 6;
    public static final int BUTTON_TOP_CENTER = 4;
    public static final int BUTTON_TOP_LEFT = 0;
    public static final int BUTTON_TOP_RIGHT = 1;
    public static final int CREATIVE_SIZE_NOT_DEFINED = 0;

    /* renamed from: a  reason: collision with root package name */
    private String f5440a;
    private String b;
    private String c;
    private Date j;
    private a[] t;
    private a u;
    private int v;
    private boolean w;
    private boolean x;
    private HashMap<String, Object> y;
    private d[] z;
    private String d = "";
    private String e = "";
    private boolean f = false;
    private int g = 1;
    private int h = -1;
    private int i = -1;
    private boolean k = false;
    private boolean l = false;
    private StringBuffer m = new StringBuffer();
    private int n = 0;
    private int o = 0;
    private int p = 0;
    private int q = 0;
    private boolean r = false;
    private boolean s = false;

    public int getCloseButtonAppearanceDelay() {
        return this.v;
    }

    public void setCloseButtonAppearanceDelay(int i) {
        this.v = i;
    }

    public boolean isCloseOnClick() {
        return this.s;
    }

    public void setCloseOnClick(boolean z) {
        this.s = z;
    }

    public a getSelectedMediationAd() {
        return this.u;
    }

    public void setSelectedMediationAd(a aVar) {
        this.u = aVar;
    }

    public a[] getCandidateMediationAds() {
        return this.t;
    }

    public void setCandidateMediationAds(a[] aVarArr) {
        this.t = aVarArr;
    }

    public boolean isTransferTouchEvents() {
        return this.r;
    }

    public void setTransferTouchEvents(boolean z) {
        this.r = z;
    }

    public String[] getImpUrls() {
        return com.smartadserver.android.library.g.c.i(this.d);
    }

    public String getHtmlContents() {
        return this.f5440a;
    }

    public void setHtmlContents(String str) {
        this.f5440a = str;
    }

    public String getBaseUrl() {
        return this.b;
    }

    public void setBaseUrl(String str) {
        this.b = str;
    }

    public String getScriptUrl() {
        return this.c;
    }

    public void setScriptUrl(String str) {
        this.c = str;
    }

    public String getImpressionUrlString() {
        return this.d;
    }

    public void setImpressionUrlString(String str) {
        this.d = str;
    }

    public String getClickPixelUrl() {
        return this.e;
    }

    public void setClickPixelUrl(String str) {
        this.e = str;
    }

    public boolean isOpenClickInApplication() {
        return this.f;
    }

    public void setOpenClickInApplication(boolean z) {
        this.f = z;
    }

    public int getCloseButtonPosition() {
        return this.g;
    }

    public void setCloseButtonPosition(int i) {
        this.g = i;
    }

    public int getAdDuration() {
        return this.h;
    }

    public void setAdDuration(int i) {
        this.h = i;
    }

    public int getInsertionId() {
        return this.i;
    }

    public String getDebugInfo() {
        String str = "";
        int insertionId = getInsertionId();
        if (insertionId > 0) {
            str = "InsertionID: " + insertionId + " | ";
        }
        return str.concat("CreativeType: " + a());
    }

    protected String a() {
        a selectedMediationAd = getSelectedMediationAd();
        if (selectedMediationAd == null) {
            return "Html";
        }
        return j.b(selectedMediationAd.a()) + " mediation ad";
    }

    public void setInsertionId(int i) {
        this.i = i;
    }

    public Date getExpirationDate() {
        return this.j;
    }

    public void setExpirationDate(Date date) {
        this.j = date;
    }

    public boolean isPrefetchable() {
        return this.k;
    }

    public void setPrefetchable(boolean z) {
        this.k = z;
    }

    public boolean isNeedsDataConnection() {
        return this.l;
    }

    public void setNeedsDataConnection(boolean z) {
        this.l = z;
    }

    public String getClickUrl() {
        return this.m.toString();
    }

    public void setClickUrl(String str) {
        this.m.delete(0, this.m.length());
        this.m.append(str);
    }

    public void setPortraitWidth(int i) {
        this.n = i;
    }

    public int getPortraitWidth() {
        return this.n;
    }

    public void setPortraitHeight(int i) {
        this.o = i;
    }

    public int getPortraitHeight() {
        return this.o;
    }

    public void setLandscapeWidth(int i) {
        this.p = i;
    }

    public int getLandscapeWidth() {
        return this.p;
    }

    public void setLandscapeHeight(int i) {
        this.q = i;
    }

    public int getLandscapeHeight() {
        return this.q;
    }

    public HashMap<String, Object> getExtraParameters() {
        return this.y;
    }

    public void setExtraParameters(HashMap<String, Object> hashMap) {
        this.y = hashMap;
    }

    public d[] getViewabilityPixels() {
        return this.z;
    }

    public void setViewabilityPixels(d[] dVarArr) {
        this.z = dVarArr;
    }

    public void setDisplayCloseAppearanceCountDown(boolean z) {
        this.w = z;
    }

    public boolean isDisplayCloseAppearanceCountDown() {
        return this.w;
    }

    public void setSwipeToClose(boolean z) {
        this.x = z;
    }

    public boolean isSwipeToClose() {
        return this.x;
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }
}

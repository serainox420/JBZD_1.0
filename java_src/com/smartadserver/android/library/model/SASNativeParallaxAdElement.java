package com.smartadserver.android.library.model;

import android.graphics.Color;
import com.mopub.common.AdType;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class SASNativeParallaxAdElement extends SASAdElement {
    public static final int IMAGE_RESIZE_MODE_100_PERCENT = 2;
    public static final int IMAGE_RESIZE_MODE_CONTAIN = 1;
    public static final int IMAGE_RESIZE_MODE_COVER = 0;
    public static final int PARALLAX_MODE_DYNAMIC_HEIGHT = 1;
    public static final int PARALLAX_MODE_FIXED = 0;
    public static final int PARALLAX_MODE_STICKY_BOTTOM = 3;
    public static final int PARALLAX_MODE_STICKY_TOP = 2;

    /* renamed from: a  reason: collision with root package name */
    private String f5446a;
    private String b;
    private String c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private boolean i;
    private int j;
    private int k;
    private int l;
    private int m;
    private String n;
    private boolean o;

    public SASNativeParallaxAdElement() {
    }

    public SASNativeParallaxAdElement(JSONObject jSONObject) throws JSONException {
        boolean z = true;
        if (jSONObject != null) {
            this.i = jSONObject.optInt("bordersEnabled", 0) == 1;
            this.f5446a = jSONObject.optString("imageUrl", null);
            this.b = jSONObject.optString("scriptUrl", null);
            this.c = jSONObject.optString(AdType.HTML, null);
            this.d = jSONObject.optInt("parallaxMode", 0);
            this.e = jSONObject.optInt("resizeMode", 0);
            this.f = Color.parseColor("#" + jSONObject.optString("backgroundColor", "000000"));
            this.j = jSONObject.optInt("borderHeight", 0);
            this.k = jSONObject.optInt("borderFontSize", 12);
            this.l = Color.parseColor("#" + jSONObject.optString("borderColor", "000000"));
            this.m = Color.parseColor("#" + jSONObject.optString("borderFontColor", "FFFFFF"));
            this.n = jSONObject.optString("borderText", "");
            this.g = jSONObject.optInt("creativeWidth", -1);
            this.h = jSONObject.optInt("creativeHeight", -1);
            this.o = jSONObject.optInt("enableParallaxJSAPI", 0) != 1 ? false : z;
        }
    }

    @Override // com.smartadserver.android.library.model.SASAdElement
    public boolean isOpenClickInApplication() {
        return false;
    }

    public String getParallaxImageUrl() {
        return this.f5446a;
    }

    public void setParallaxImageUrl(String str) {
        this.f5446a = str;
    }

    public String getParallaxHTMLUrl() {
        return this.b;
    }

    public void setParallaxHTMLUrl(String str) {
        this.b = str;
    }

    public String getParallaxHTMLScript() {
        return this.c;
    }

    public void setParallaxHTMLScript(String str) {
        this.c = str;
    }

    public int getParallaxMode() {
        return this.d;
    }

    public void setParallaxMode(int i) {
        this.d = i;
    }

    public int getResizeMode() {
        return this.e;
    }

    public void setResizeMode(int i) {
        this.e = i;
    }

    public int getBackgroundColor() {
        return this.f;
    }

    public void setBackgroundColor(int i) {
        this.f = i;
    }

    public int getCreativeHeight() {
        return this.h;
    }

    public void setCreativeHeight(int i) {
        this.h = i;
    }

    public int getCreativeWidth() {
        return this.g;
    }

    public void setCreativeWidth(int i) {
        this.g = i;
    }

    public boolean isBorderEnabled() {
        return this.i;
    }

    public void setBorderEnabled(boolean z) {
        this.i = z;
    }

    public int getBorderSize() {
        return this.j;
    }

    public void setBorderSize(int i) {
        this.j = i;
    }

    public int getBorderFontSize() {
        return this.k;
    }

    public void setBorderFontSize(int i) {
        this.k = i;
    }

    public int getBorderColor() {
        return this.l;
    }

    public void setBorderColor(int i) {
        this.l = i;
    }

    public int getBorderFontColor() {
        return this.m;
    }

    public void setBorderFontColor(int i) {
        this.m = i;
    }

    public String getBorderText() {
        return this.n;
    }

    public void setBorderText(String str) {
        this.n = str;
    }

    public boolean isJavascriptAPIEnabled() {
        return this.o;
    }

    public void setJavascriptAPIEnabled(boolean z) {
        this.o = z;
    }

    @Override // com.smartadserver.android.library.model.SASAdElement
    protected String a() {
        if (getParallaxImageUrl() != null) {
            return "Native Parallax Image";
        }
        return (getParallaxHTMLScript() == null && getParallaxHTMLUrl() == null) ? "Native Parallax" : "Native Parallax HTML";
    }
}

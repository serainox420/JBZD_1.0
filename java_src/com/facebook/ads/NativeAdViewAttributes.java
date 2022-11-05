package com.facebook.ads;

import android.graphics.Color;
import android.graphics.Typeface;
import com.facebook.ads.internal.util.c;
import com.facebook.ads.internal.util.d;
import com.mopub.mobileads.resource.DrawableConstants;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class NativeAdViewAttributes {

    /* renamed from: a  reason: collision with root package name */
    private Typeface f2048a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private boolean h;
    private boolean i;

    public NativeAdViewAttributes() {
        this.f2048a = Typeface.DEFAULT;
        this.b = -1;
        this.c = DrawableConstants.CtaButton.BACKGROUND_COLOR;
        this.d = -11643291;
        this.e = 0;
        this.f = -12420889;
        this.g = -12420889;
        this.h = AdSettings.isVideoAutoplay();
        this.i = AdSettings.isVideoAutoplayOnMobile();
    }

    public NativeAdViewAttributes(JSONObject jSONObject) {
        int i = 0;
        this.f2048a = Typeface.DEFAULT;
        this.b = -1;
        this.c = DrawableConstants.CtaButton.BACKGROUND_COLOR;
        this.d = -11643291;
        this.e = 0;
        this.f = -12420889;
        this.g = -12420889;
        this.h = AdSettings.isVideoAutoplay();
        this.i = AdSettings.isVideoAutoplayOnMobile();
        try {
            int parseColor = jSONObject.getBoolean("background_transparent") ? 0 : Color.parseColor(jSONObject.getString("background_color"));
            int parseColor2 = Color.parseColor(jSONObject.getString("title_text_color"));
            int parseColor3 = Color.parseColor(jSONObject.getString("description_text_color"));
            int parseColor4 = jSONObject.getBoolean("button_transparent") ? 0 : Color.parseColor(jSONObject.getString("button_color"));
            i = !jSONObject.getBoolean("button_border_transparent") ? Color.parseColor(jSONObject.getString("button_border_color")) : i;
            int parseColor5 = Color.parseColor(jSONObject.getString("button_text_color"));
            Typeface create = Typeface.create(jSONObject.getString("android_typeface"), 0);
            this.b = parseColor;
            this.c = parseColor2;
            this.d = parseColor3;
            this.e = parseColor4;
            this.g = i;
            this.f = parseColor5;
            this.f2048a = create;
        } catch (Exception e) {
            d.a(c.a(e, "Error retrieving native ui configuration data"));
        }
    }

    public boolean getAutoplay() {
        return this.h;
    }

    public boolean getAutoplayOnMobile() {
        return AdSettings.isVideoAutoplayOnMobile();
    }

    public int getBackgroundColor() {
        return this.b;
    }

    public int getButtonBorderColor() {
        return this.g;
    }

    public int getButtonColor() {
        return this.e;
    }

    public int getButtonTextColor() {
        return this.f;
    }

    public int getDescriptionTextColor() {
        return this.d;
    }

    public int getDescriptionTextSize() {
        return 10;
    }

    public int getTitleTextColor() {
        return this.c;
    }

    public int getTitleTextSize() {
        return 16;
    }

    public Typeface getTypeface() {
        return this.f2048a;
    }

    public NativeAdViewAttributes setAutoplay(boolean z) {
        this.h = z;
        return this;
    }

    public NativeAdViewAttributes setAutoplayOnMobile(boolean z) {
        this.i = z;
        return this;
    }

    public NativeAdViewAttributes setBackgroundColor(int i) {
        this.b = i;
        return this;
    }

    public NativeAdViewAttributes setButtonBorderColor(int i) {
        this.g = i;
        return this;
    }

    public NativeAdViewAttributes setButtonColor(int i) {
        this.e = i;
        return this;
    }

    public NativeAdViewAttributes setButtonTextColor(int i) {
        this.f = i;
        return this;
    }

    public NativeAdViewAttributes setDescriptionTextColor(int i) {
        this.d = i;
        return this;
    }

    public NativeAdViewAttributes setTitleTextColor(int i) {
        this.c = i;
        return this;
    }

    public NativeAdViewAttributes setTypeface(Typeface typeface) {
        this.f2048a = typeface;
        return this;
    }
}

package com.adcolony.sdk;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class AdColonyNativeAdView extends ax {
    EngagementButton q;
    boolean r;
    String s;
    String t;
    String u;

    @Override // com.adcolony.sdk.ax
    public /* bridge */ /* synthetic */ boolean destroy() {
        return super.destroy();
    }

    @Override // com.adcolony.sdk.ax
    public /* bridge */ /* synthetic */ String getZoneID() {
        return super.getZoneID();
    }

    @Override // com.adcolony.sdk.ax
    public /* bridge */ /* synthetic */ boolean pause() {
        return super.pause();
    }

    @Override // com.adcolony.sdk.ax
    public /* bridge */ /* synthetic */ boolean resume() {
        return super.resume();
    }

    @Override // com.adcolony.sdk.ax
    public /* bridge */ /* synthetic */ boolean setMuted(boolean z) {
        return super.setMuted(z);
    }

    @Override // com.adcolony.sdk.ax
    public /* bridge */ /* synthetic */ boolean setVolume(float f) {
        return super.setVolume(f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdColonyNativeAdView(Context context, z zVar, e eVar) {
        super(context, zVar, eVar);
        this.h = true;
        this.r = s.d(zVar.b, "engagement_enabled");
        this.s = s.b(zVar.b, "engagement_click_action");
        this.t = s.b(zVar.b, "engagement_click_action_type");
        this.u = s.b(zVar.b, "engagement_text");
        if (this.r) {
            this.q = new EngagementButton(context);
            this.q.setText(this.u);
            this.q.setOnClickListener(new View.OnClickListener() { // from class: com.adcolony.sdk.AdColonyNativeAdView.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (AdColonyNativeAdView.this.g) {
                        u.e.b("Ignoring engagement click as view has been destroyed.");
                        return;
                    }
                    JSONObject a2 = s.a();
                    s.a(a2, "id", AdColonyNativeAdView.this.d);
                    new z("AdSession.on_native_engagement", AdColonyNativeAdView.this.f1101a.l, a2).b();
                }
            });
        }
    }

    public String getAdvertiserName() {
        if (this.g) {
            u.e.b("Ignoring call to getAdvertiserName() as view has been destroyed");
            return "";
        }
        return this.k;
    }

    public ImageView getIcon() {
        if (this.j == null) {
            return null;
        }
        if (this.g) {
            u.e.b("Ignoring call to getIcon() as view has been destroyed");
            return null;
        }
        return this.j;
    }

    public String getTitle() {
        if (this.g) {
            u.e.b("Ignoring call to getTitle() as view has been destroyed");
            return "";
        }
        return this.l;
    }

    public String getDescription() {
        if (this.g) {
            u.e.b("Ignoring call to getDescription() as view has been destroyed");
            return "";
        }
        return this.m;
    }

    public boolean isEngagementEnabled() {
        if (this.g) {
            u.e.b("Ignoring call to isEngagementEnabled() as view has been destroyed");
            return false;
        }
        return this.r;
    }

    public EngagementButton getEngagementButton() {
        if (this.g) {
            u.e.b("Ignoring call to getEngagementButton() as view has been destroyed");
            return null;
        }
        return this.q;
    }

    /* loaded from: classes.dex */
    public class EngagementButton extends Button {

        /* renamed from: a  reason: collision with root package name */
        boolean f982a;
        View.OnClickListener b;

        EngagementButton(Context context) {
            super(context);
        }

        @Override // android.view.View
        public void setOnClickListener(View.OnClickListener onClickListener) {
            if (!this.f982a) {
                super.setOnClickListener(onClickListener);
                this.b = onClickListener;
                this.f982a = true;
            }
        }

        public View.OnClickListener getOnClickListener() {
            return this.b;
        }
    }
}

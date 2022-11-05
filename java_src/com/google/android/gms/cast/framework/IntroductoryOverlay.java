package com.google.android.gms.cast.framework;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.preference.PreferenceManager;
import android.support.v7.app.MediaRouteButton;
import android.view.MenuItem;
import android.view.View;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zzt;
import com.google.android.gms.internal.zzxb;
import com.google.android.gms.internal.zzxc;
/* loaded from: classes2.dex */
public interface IntroductoryOverlay {

    /* loaded from: classes2.dex */
    public static class Builder {
        private Activity mActivity;
        private float zzaqA;
        private String zzaqB;
        private View zzaqv;
        private int zzaqw;
        private String zzaqx;
        private OnOverlayDismissedListener zzaqy;
        private boolean zzaqz;

        public Builder(Activity activity, MediaRouteButton mediaRouteButton) {
            this.mActivity = (Activity) zzac.zzw(activity);
            this.zzaqv = (View) zzac.zzw(mediaRouteButton);
        }

        @TargetApi(11)
        public Builder(Activity activity, MenuItem menuItem) {
            this.mActivity = (Activity) zzac.zzw(activity);
            zzt.zzze();
            this.zzaqv = ((MenuItem) zzac.zzw(menuItem)).getActionView();
        }

        public IntroductoryOverlay build() {
            return zzt.zzzi() ? new zzxb(this) : new zzxc(this);
        }

        public Activity getActivity() {
            return this.mActivity;
        }

        public Builder setButtonText(int i) {
            this.zzaqB = this.mActivity.getResources().getString(i);
            return this;
        }

        public Builder setButtonText(String str) {
            this.zzaqB = str;
            return this;
        }

        public Builder setFocusRadius(float f) {
            this.zzaqA = f;
            return this;
        }

        public Builder setFocusRadiusId(int i) {
            this.zzaqA = this.mActivity.getResources().getDimension(i);
            return this;
        }

        public Builder setOnOverlayDismissedListener(OnOverlayDismissedListener onOverlayDismissedListener) {
            this.zzaqy = onOverlayDismissedListener;
            return this;
        }

        public Builder setOverlayColor(int i) {
            this.zzaqw = this.mActivity.getResources().getColor(i);
            return this;
        }

        public Builder setSingleTime() {
            this.zzaqz = true;
            return this;
        }

        public Builder setTitleText(int i) {
            this.zzaqx = this.mActivity.getResources().getString(i);
            return this;
        }

        public Builder setTitleText(String str) {
            this.zzaqx = str;
            return this;
        }

        public View zzsR() {
            return this.zzaqv;
        }

        public OnOverlayDismissedListener zzsS() {
            return this.zzaqy;
        }

        public int zzsT() {
            return this.zzaqw;
        }

        public boolean zzsU() {
            return this.zzaqz;
        }

        public String zzsV() {
            return this.zzaqx;
        }

        public String zzsW() {
            return this.zzaqB;
        }

        public float zzsX() {
            return this.zzaqA;
        }
    }

    /* loaded from: classes2.dex */
    public interface OnOverlayDismissedListener {
        void onOverlayDismissed();
    }

    /* loaded from: classes2.dex */
    public static class zza {
        public static void zzau(Context context) {
            PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean("googlecast-introOverlayShown", true).apply();
        }

        public static boolean zzav(Context context) {
            return PreferenceManager.getDefaultSharedPreferences(context).getBoolean("googlecast-introOverlayShown", false);
        }
    }

    void remove();

    void show();
}

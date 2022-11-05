package com.google.android.gms.games.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.view.Display;
import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.gms.common.util.zzt;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public class PopupManager {
    protected GamesClientImpl zzbbl;
    protected PopupLocationInfo zzbbm;

    /* loaded from: classes2.dex */
    public static final class PopupLocationInfo {
        public int bottom;
        public int gravity;
        public int left;
        public int right;
        public int top;
        public IBinder zzbbn;
        public int zzbbo;

        private PopupLocationInfo(int i, IBinder iBinder) {
            this.zzbbo = -1;
            this.left = 0;
            this.top = 0;
            this.right = 0;
            this.bottom = 0;
            this.gravity = i;
            this.zzbbn = iBinder;
        }

        public Bundle zzFA() {
            Bundle bundle = new Bundle();
            bundle.putInt("popupLocationInfo.gravity", this.gravity);
            bundle.putInt("popupLocationInfo.displayId", this.zzbbo);
            bundle.putInt("popupLocationInfo.left", this.left);
            bundle.putInt("popupLocationInfo.top", this.top);
            bundle.putInt("popupLocationInfo.right", this.right);
            bundle.putInt("popupLocationInfo.bottom", this.bottom);
            return bundle;
        }
    }

    @TargetApi(12)
    /* loaded from: classes2.dex */
    private static final class PopupManagerHCMR1 extends PopupManager implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener {
        private boolean zzaZy;
        private WeakReference<View> zzbbp;

        protected PopupManagerHCMR1(GamesClientImpl gamesClientImpl, int i) {
            super(gamesClientImpl, i);
            this.zzaZy = false;
        }

        @TargetApi(17)
        private void zzx(View view) {
            Display display;
            int i = -1;
            if (zzt.zzzj() && (display = view.getDisplay()) != null) {
                i = display.getDisplayId();
            }
            IBinder windowToken = view.getWindowToken();
            int[] iArr = new int[2];
            view.getLocationInWindow(iArr);
            int width = view.getWidth();
            int height = view.getHeight();
            this.zzbbm.zzbbo = i;
            this.zzbbm.zzbbn = windowToken;
            this.zzbbm.left = iArr[0];
            this.zzbbm.top = iArr[1];
            this.zzbbm.right = iArr[0] + width;
            this.zzbbm.bottom = iArr[1] + height;
            if (this.zzaZy) {
                zzFB();
                this.zzaZy = false;
            }
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            View view;
            if (this.zzbbp == null || (view = this.zzbbp.get()) == null) {
                return;
            }
            zzx(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            zzx(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            this.zzbbl.zzFm();
            view.removeOnAttachStateChangeListener(this);
        }

        @Override // com.google.android.gms.games.internal.PopupManager
        public void zzFB() {
            if (this.zzbbm.zzbbn != null) {
                super.zzFB();
            } else {
                this.zzaZy = this.zzbbp != null;
            }
        }

        @Override // com.google.android.gms.games.internal.PopupManager
        protected void zziK(int i) {
            this.zzbbm = new PopupLocationInfo(i, null);
        }

        @Override // com.google.android.gms.games.internal.PopupManager
        @TargetApi(16)
        public void zzw(View view) {
            this.zzbbl.zzFm();
            if (this.zzbbp != null) {
                View view2 = this.zzbbp.get();
                Context context = this.zzbbl.getContext();
                if (view2 == null && (context instanceof Activity)) {
                    view2 = ((Activity) context).getWindow().getDecorView();
                }
                if (view2 != null) {
                    view2.removeOnAttachStateChangeListener(this);
                    ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
                    if (zzt.zzzi()) {
                        viewTreeObserver.removeOnGlobalLayoutListener(this);
                    } else {
                        viewTreeObserver.removeGlobalOnLayoutListener(this);
                    }
                }
            }
            this.zzbbp = null;
            Context context2 = this.zzbbl.getContext();
            if (view == null && (context2 instanceof Activity)) {
                View findViewById = ((Activity) context2).findViewById(16908290);
                if (findViewById == null) {
                    findViewById = ((Activity) context2).getWindow().getDecorView();
                }
                GamesLog.zzF("PopupManager", "You have not specified a View to use as content view for popups. Falling back to the Activity content view. Note that this may not work as expected in multi-screen environments");
                view = findViewById;
            }
            if (view == null) {
                GamesLog.zzG("PopupManager", "No content view usable to display popups. Popups will not be displayed in response to this client's calls. Use setViewForPopups() to set your content view.");
                return;
            }
            zzx(view);
            this.zzbbp = new WeakReference<>(view);
            view.addOnAttachStateChangeListener(this);
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }
    }

    private PopupManager(GamesClientImpl gamesClientImpl, int i) {
        this.zzbbl = gamesClientImpl;
        zziK(i);
    }

    public static PopupManager zza(GamesClientImpl gamesClientImpl, int i) {
        zzt.zzzf();
        return new PopupManagerHCMR1(gamesClientImpl, i);
    }

    public void setGravity(int i) {
        this.zzbbm.gravity = i;
    }

    public void zzFB() {
        this.zzbbl.zza(this.zzbbm.zzbbn, this.zzbbm.zzFA());
    }

    public Bundle zzFC() {
        return this.zzbbm.zzFA();
    }

    public IBinder zzFD() {
        return this.zzbbm.zzbbn;
    }

    public PopupLocationInfo zzFE() {
        return this.zzbbm;
    }

    protected void zziK(int i) {
        this.zzbbm = new PopupLocationInfo(i, new Binder());
    }

    public void zzw(View view) {
    }
}

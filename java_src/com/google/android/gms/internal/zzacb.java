package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2.dex */
public final class zzacb extends Drawable implements Drawable.Callback {
    private int mFrom;
    private int zzaED;
    private int zzaEE;
    private int zzaEF;
    private int zzaEG;
    private int zzaEH;
    private boolean zzaEI;
    private zzb zzaEJ;
    private Drawable zzaEK;
    private Drawable zzaEL;
    private boolean zzaEM;
    private boolean zzaEN;
    private boolean zzaEO;
    private int zzaEP;
    private boolean zzaEy;
    private long zzafe;

    /* loaded from: classes2.dex */
    private static final class zza extends Drawable {
        private static final zza zzaEQ = new zza();
        private static final C0199zza zzaER = new C0199zza();

        /* renamed from: com.google.android.gms.internal.zzacb$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static final class C0199zza extends Drawable.ConstantState {
            private C0199zza() {
            }

            @Override // android.graphics.drawable.Drawable.ConstantState
            public int getChangingConfigurations() {
                return 0;
            }

            @Override // android.graphics.drawable.Drawable.ConstantState
            public Drawable newDrawable() {
                return zza.zzaEQ;
            }
        }

        private zza() {
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
        }

        @Override // android.graphics.drawable.Drawable
        public Drawable.ConstantState getConstantState() {
            return zzaER;
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzb extends Drawable.ConstantState {
        int mChangingConfigurations;
        int zzaES;

        zzb(zzb zzbVar) {
            if (zzbVar != null) {
                this.mChangingConfigurations = zzbVar.mChangingConfigurations;
                this.zzaES = zzbVar.zzaES;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.mChangingConfigurations;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new zzacb(this);
        }
    }

    public zzacb(Drawable drawable, Drawable drawable2) {
        this(null);
        drawable = drawable == null ? zza.zzaEQ : drawable;
        this.zzaEK = drawable;
        drawable.setCallback(this);
        this.zzaEJ.zzaES |= drawable.getChangingConfigurations();
        drawable2 = drawable2 == null ? zza.zzaEQ : drawable2;
        this.zzaEL = drawable2;
        drawable2.setCallback(this);
        this.zzaEJ.zzaES |= drawable2.getChangingConfigurations();
    }

    zzacb(zzb zzbVar) {
        this.zzaED = 0;
        this.zzaEF = 255;
        this.zzaEH = 0;
        this.zzaEy = true;
        this.zzaEJ = new zzb(zzbVar);
    }

    public boolean canConstantState() {
        if (!this.zzaEM) {
            this.zzaEN = (this.zzaEK.getConstantState() == null || this.zzaEL.getConstantState() == null) ? false : true;
            this.zzaEM = true;
        }
        return this.zzaEN;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z = true;
        boolean z2 = false;
        switch (this.zzaED) {
            case 1:
                this.zzafe = SystemClock.uptimeMillis();
                this.zzaED = 2;
                break;
            case 2:
                if (this.zzafe >= 0) {
                    float uptimeMillis = ((float) (SystemClock.uptimeMillis() - this.zzafe)) / this.zzaEG;
                    if (uptimeMillis < 1.0f) {
                        z = false;
                    }
                    if (z) {
                        this.zzaED = 0;
                    }
                    this.zzaEH = (int) ((Math.min(uptimeMillis, 1.0f) * (this.zzaEE + 0)) + BitmapDescriptorFactory.HUE_RED);
                }
            default:
                z2 = z;
                break;
        }
        int i = this.zzaEH;
        boolean z3 = this.zzaEy;
        Drawable drawable = this.zzaEK;
        Drawable drawable2 = this.zzaEL;
        if (z2) {
            if (!z3 || i == 0) {
                drawable.draw(canvas);
            }
            if (i != this.zzaEF) {
                return;
            }
            drawable2.setAlpha(this.zzaEF);
            drawable2.draw(canvas);
            return;
        }
        if (z3) {
            drawable.setAlpha(this.zzaEF - i);
        }
        drawable.draw(canvas);
        if (z3) {
            drawable.setAlpha(this.zzaEF);
        }
        if (i > 0) {
            drawable2.setAlpha(i);
            drawable2.draw(canvas);
            drawable2.setAlpha(this.zzaEF);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.zzaEJ.mChangingConfigurations | this.zzaEJ.zzaES;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (canConstantState()) {
            this.zzaEJ.mChangingConfigurations = getChangingConfigurations();
            return this.zzaEJ;
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return Math.max(this.zzaEK.getIntrinsicHeight(), this.zzaEL.getIntrinsicHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.max(this.zzaEK.getIntrinsicWidth(), this.zzaEL.getIntrinsicWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        if (!this.zzaEO) {
            this.zzaEP = Drawable.resolveOpacity(this.zzaEK.getOpacity(), this.zzaEL.getOpacity());
            this.zzaEO = true;
        }
        return this.zzaEP;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.zzaEI && super.mutate() == this) {
            if (!canConstantState()) {
                throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
            }
            this.zzaEK.mutate();
            this.zzaEL.mutate();
            this.zzaEI = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.zzaEK.setBounds(rect);
        this.zzaEL.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.zzaEH == this.zzaEF) {
            this.zzaEH = i;
        }
        this.zzaEF = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.zzaEK.setColorFilter(colorFilter);
        this.zzaEL.setColorFilter(colorFilter);
    }

    public void startTransition(int i) {
        this.mFrom = 0;
        this.zzaEE = this.zzaEF;
        this.zzaEH = 0;
        this.zzaEG = i;
        this.zzaED = 1;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public Drawable zzxs() {
        return this.zzaEL;
    }
}

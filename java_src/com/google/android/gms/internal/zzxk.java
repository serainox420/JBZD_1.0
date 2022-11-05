package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import com.google.android.gms.cast.AdBreakInfo;
import java.util.List;
/* loaded from: classes2.dex */
public class zzxk extends View {
    private List<AdBreakInfo> zzaoo;
    private final int zzatq;
    private int zzatr;
    private Paint zzats;

    public zzxk(Context context) {
        super(context);
        this.zzatr = 1;
        this.zzatq = zza(getContext(), 3.0d);
    }

    private static int zza(Context context, double d) {
        return context == null ? (int) Math.round(d) : (int) Math.round(context.getResources().getDisplayMetrics().density * d);
    }

    @Override // android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.zzaoo != null && !this.zzaoo.isEmpty()) {
            int round = Math.round(getMeasuredHeight() / 2.0f);
            int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            for (AdBreakInfo adBreakInfo : this.zzaoo) {
                if (adBreakInfo != null) {
                    long playbackPositionInMs = adBreakInfo.getPlaybackPositionInMs();
                    if (playbackPositionInMs >= 0 && playbackPositionInMs <= this.zzatr) {
                        canvas.drawCircle(((int) ((playbackPositionInMs * measuredWidth) / this.zzatr)) + getPaddingLeft(), round, this.zzatq, this.zzats);
                    }
                }
            }
        }
    }

    public synchronized void zzb(List<AdBreakInfo> list, int i) {
        this.zzaoo = list;
        this.zzats = new Paint(1);
        this.zzats.setColor(i);
        this.zzats.setStyle(Paint.Style.FILL);
        invalidate();
    }

    public synchronized void zzcf(int i) {
        this.zzatr = i;
    }
}

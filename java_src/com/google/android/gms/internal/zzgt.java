package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.List;
@zzme
/* loaded from: classes.dex */
public class zzgt extends RelativeLayout {
    private static final float[] zzGl = {5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f};
    private AnimationDrawable zzGm;

    public zzgt(Context context, zzgs zzgsVar, RelativeLayout.LayoutParams layoutParams) {
        super(context);
        com.google.android.gms.common.internal.zzac.zzw(zzgsVar);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(zzGl, null, null));
        shapeDrawable.getPaint().setColor(zzgsVar.getBackgroundColor());
        setLayoutParams(layoutParams);
        com.google.android.gms.ads.internal.zzw.zzcO().zza(this, shapeDrawable);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        if (!TextUtils.isEmpty(zzgsVar.getText())) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            TextView textView = new TextView(context);
            textView.setLayoutParams(layoutParams3);
            textView.setId(1195835393);
            textView.setTypeface(Typeface.DEFAULT);
            textView.setText(zzgsVar.getText());
            textView.setTextColor(zzgsVar.getTextColor());
            textView.setTextSize(zzgsVar.getTextSize());
            textView.setPadding(zzel.zzeT().zzb(context, 4), 0, zzel.zzeT().zzb(context, 4), 0);
            addView(textView);
            layoutParams2.addRule(1, textView.getId());
        }
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(layoutParams2);
        imageView.setId(1195835394);
        List<Drawable> zzfL = zzgsVar.zzfL();
        if (zzfL.size() > 1) {
            this.zzGm = new AnimationDrawable();
            for (Drawable drawable : zzfL) {
                this.zzGm.addFrame(drawable, zzgsVar.zzfM());
            }
            com.google.android.gms.ads.internal.zzw.zzcO().zza(imageView, this.zzGm);
        } else if (zzfL.size() == 1) {
            imageView.setImageDrawable(zzfL.get(0));
        }
        addView(imageView);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        if (this.zzGm != null) {
            this.zzGm.start();
        }
        super.onAttachedToWindow();
    }
}

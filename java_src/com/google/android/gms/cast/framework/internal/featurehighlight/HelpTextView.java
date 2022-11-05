package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.content.Context;
import android.support.annotation.Keep;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.R;
import com.google.android.gms.internal.zzbln;
@Keep
/* loaded from: classes2.dex */
public class HelpTextView extends LinearLayout implements zzb {
    private TextView zzart;
    private TextView zzaru;

    @Keep
    public HelpTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void zza(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        textView.setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
    }

    @Override // com.google.android.gms.cast.framework.internal.featurehighlight.zzb
    @Keep
    public View asView() {
        return this;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.zzart = (TextView) zzbln.zzw((TextView) findViewById(R.id.cast_featurehighlight_help_text_header_view));
        this.zzaru = (TextView) zzbln.zzw((TextView) findViewById(R.id.cast_featurehighlight_help_text_body_view));
    }

    @Override // com.google.android.gms.cast.framework.internal.featurehighlight.zzb
    @Keep
    public void setText(CharSequence charSequence, CharSequence charSequence2) {
        zza(this.zzart, charSequence);
        zza(this.zzaru, charSequence2);
    }
}

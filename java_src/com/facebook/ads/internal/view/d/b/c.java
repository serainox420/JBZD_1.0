package com.facebook.ads.internal.view.d.b;

import android.content.Context;
import android.widget.TextView;
import com.facebook.ads.internal.g.q;
import com.facebook.ads.internal.g.r;
import com.facebook.ads.internal.g.s;
import com.facebook.ads.internal.view.d.a.n;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class c extends d {
    private final TextView b;
    private final String c;
    private final s<n> d;

    public c(Context context, String str) {
        this(context, str, false);
    }

    public c(Context context, String str, boolean z) {
        super(context, z);
        this.d = new s<n>() { // from class: com.facebook.ads.internal.view.d.b.c.1
            @Override // com.facebook.ads.internal.g.s
            public Class<n> a() {
                return n.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(n nVar) {
                c.this.b.setText(c.this.a(c.this.getVideoView().getDuration() - c.this.getVideoView().getCurrentPosition()));
            }
        };
        this.b = new TextView(context);
        this.c = str;
        addView(this.b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(long j) {
        if (j <= 0) {
            return "00:00";
        }
        long minutes = TimeUnit.MILLISECONDS.toMinutes(j);
        long seconds = TimeUnit.MILLISECONDS.toSeconds(j % 60000);
        return this.c.isEmpty() ? String.format("%02d:%02d", Long.valueOf(minutes), Long.valueOf(seconds)) : this.c.replace("{{REMAINING_TIME}}", String.format("%02d:%02d", Long.valueOf(minutes), Long.valueOf(seconds)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.ads.internal.view.d.b.d, com.facebook.ads.internal.view.d.b.m
    public void a(com.facebook.ads.internal.view.m mVar) {
        mVar.getEventBus().a((r<s, q>) this.d);
        super.a(mVar);
    }
}

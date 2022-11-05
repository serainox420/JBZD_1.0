package com.google.android.exoplayer2.text.b;

import android.text.Html;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.exoplayer2.text.c;
import com.google.android.exoplayer2.util.g;
import com.google.android.exoplayer2.util.l;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: SubripDecoder.java */
/* loaded from: classes2.dex */
public final class a extends c {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f3433a = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+),(\\d+))\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+),(\\d+))?\\s*");
    private final StringBuilder b;

    public a() {
        super("SubripDecoder");
        this.b = new StringBuilder();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.text.c
    /* renamed from: b */
    public b a(byte[] bArr, int i) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        g gVar = new g();
        l lVar = new l(bArr, i);
        while (true) {
            String x = lVar.x();
            if (x != null) {
                if (x.length() != 0) {
                    try {
                        Integer.parseInt(x);
                        String x2 = lVar.x();
                        Matcher matcher = f3433a.matcher(x2);
                        if (matcher.matches()) {
                            gVar.a(a(matcher, 1));
                            if (!TextUtils.isEmpty(matcher.group(6))) {
                                gVar.a(a(matcher, 6));
                                z = true;
                            } else {
                                z = false;
                            }
                            this.b.setLength(0);
                            while (true) {
                                String x3 = lVar.x();
                                if (TextUtils.isEmpty(x3)) {
                                    break;
                                }
                                if (this.b.length() > 0) {
                                    this.b.append("<br>");
                                }
                                this.b.append(x3.trim());
                            }
                            arrayList.add(new com.google.android.exoplayer2.text.b(Html.fromHtml(this.b.toString())));
                            if (z) {
                                arrayList.add(null);
                            }
                        } else {
                            Log.w("SubripDecoder", "Skipping invalid timing: " + x2);
                        }
                    } catch (NumberFormatException e) {
                        Log.w("SubripDecoder", "Skipping invalid index: " + x);
                    }
                }
            } else {
                com.google.android.exoplayer2.text.b[] bVarArr = new com.google.android.exoplayer2.text.b[arrayList.size()];
                arrayList.toArray(bVarArr);
                return new b(bVarArr, gVar.b());
            }
        }
    }

    private static long a(Matcher matcher, int i) {
        return ((Long.parseLong(matcher.group(i + 1)) * 60 * 60 * 1000) + (Long.parseLong(matcher.group(i + 2)) * 60 * 1000) + (Long.parseLong(matcher.group(i + 3)) * 1000) + Long.parseLong(matcher.group(i + 4))) * 1000;
    }
}

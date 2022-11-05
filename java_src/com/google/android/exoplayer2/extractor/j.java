package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.a;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: GaplessInfoHolder.java */
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public static final a.InterfaceC0137a f3288a = new a.InterfaceC0137a() { // from class: com.google.android.exoplayer2.extractor.j.1
        @Override // com.google.android.exoplayer2.metadata.id3.a.InterfaceC0137a
        public boolean a(int i, int i2, int i3, int i4, int i5) {
            return i2 == 67 && i3 == 79 && i4 == 77 && (i5 == 77 || i == 2);
        }
    };
    private static final Pattern d = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");
    public int b = -1;
    public int c = -1;

    public boolean a(int i) {
        int i2 = i >> 12;
        int i3 = i & 4095;
        if (i2 > 0 || i3 > 0) {
            this.b = i2;
            this.c = i3;
            return true;
        }
        return false;
    }

    public boolean a(Metadata metadata) {
        for (int i = 0; i < metadata.a(); i++) {
            Metadata.Entry a2 = metadata.a(i);
            if (a2 instanceof CommentFrame) {
                CommentFrame commentFrame = (CommentFrame) a2;
                if (a(commentFrame.b, commentFrame.c)) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean a(String str, String str2) {
        if (!"iTunSMPB".equals(str)) {
            return false;
        }
        Matcher matcher = d.matcher(str2);
        if (!matcher.find()) {
            return false;
        }
        try {
            int parseInt = Integer.parseInt(matcher.group(1), 16);
            int parseInt2 = Integer.parseInt(matcher.group(2), 16);
            if (parseInt <= 0 && parseInt2 <= 0) {
                return false;
            }
            this.b = parseInt;
            this.c = parseInt2;
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    public boolean a() {
        return (this.b == -1 || this.c == -1) ? false : true;
    }
}

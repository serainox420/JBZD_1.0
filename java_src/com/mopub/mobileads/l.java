package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: VastResource.java */
/* loaded from: classes3.dex */
public class l implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private static final List<String> f4528a = Arrays.asList("image/jpeg", "image/png", "image/bmp", "image/gif");
    private static final List<String> b = Arrays.asList("application/x-javascript");
    private String c;
    private b d;
    private a e;
    private int f;
    private int g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: VastResource.java */
    /* loaded from: classes3.dex */
    public enum a {
        NONE,
        IMAGE,
        JAVASCRIPT
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: VastResource.java */
    /* loaded from: classes3.dex */
    public enum b {
        STATIC_RESOURCE,
        HTML_RESOURCE,
        IFRAME_RESOURCE
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l a(VastResourceXmlManager vastResourceXmlManager, b bVar, int i, int i2) {
        a aVar;
        Preconditions.checkNotNull(vastResourceXmlManager);
        Preconditions.checkNotNull(bVar);
        String c = vastResourceXmlManager.c();
        String d = vastResourceXmlManager.d();
        String a2 = vastResourceXmlManager.a();
        String b2 = vastResourceXmlManager.b();
        if (bVar == b.STATIC_RESOURCE && a2 != null && b2 != null && (f4528a.contains(b2) || b.contains(b2))) {
            if (f4528a.contains(b2)) {
                aVar = a.IMAGE;
            } else {
                aVar = a.JAVASCRIPT;
            }
        } else if (bVar == b.HTML_RESOURCE && d != null) {
            aVar = a.NONE;
            a2 = d;
        } else if (bVar == b.IFRAME_RESOURCE && c != null) {
            aVar = a.NONE;
            a2 = c;
        } else {
            return null;
        }
        return new l(a2, bVar, aVar, i, i2);
    }

    l(String str, b bVar, a aVar, int i, int i2) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(bVar);
        Preconditions.checkNotNull(aVar);
        this.c = str;
        this.d = bVar;
        this.e = aVar;
        this.f = i;
        this.g = i2;
    }

    public String getResource() {
        return this.c;
    }

    public b getType() {
        return this.d;
    }

    public a getCreativeType() {
        return this.e;
    }

    public void initializeWebView(m mVar) {
        Preconditions.checkNotNull(mVar);
        if (this.d == b.IFRAME_RESOURCE) {
            mVar.a("<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\" width=\"" + this.f + "\" height=\"" + this.g + "\" src=\"" + this.c + "\"></iframe>");
        } else if (this.d == b.HTML_RESOURCE) {
            mVar.a(this.c);
        } else if (this.d == b.STATIC_RESOURCE) {
            if (this.e == a.IMAGE) {
                mVar.a("<html><head></head><body style=\"margin:0;padding:0\"><img src=\"" + this.c + "\" width=\"100%\" style=\"max-width:100%;max-height:100%;\" /></body></html>");
            } else if (this.e == a.JAVASCRIPT) {
                mVar.a("<script src=\"" + this.c + "\"></script>");
            }
        }
    }

    public String getCorrectClickThroughUrl(String str, String str2) {
        switch (this.d) {
            case STATIC_RESOURCE:
                if (a.IMAGE == this.e) {
                    return str;
                }
                if (a.JAVASCRIPT == this.e) {
                    return str2;
                }
                return null;
            case HTML_RESOURCE:
            case IFRAME_RESOURCE:
                return str2;
            default:
                return null;
        }
    }
}

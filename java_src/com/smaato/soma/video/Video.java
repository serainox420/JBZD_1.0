package com.smaato.soma.video;

import android.content.Context;
import android.view.ViewGroup;
import com.facebook.share.internal.ShareConstants;
import com.smaato.soma.AdType;
import com.smaato.soma.ErrorCode;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.exception.AdReceiveFailed;
import com.smaato.soma.exception.UnableToFindInterstitialBannerView;
import com.smaato.soma.l;
import com.smaato.soma.p;
import com.smaato.soma.video.a.h;
/* loaded from: classes3.dex */
public class Video implements com.smaato.soma.c {

    /* renamed from: a  reason: collision with root package name */
    protected static c f5276a;
    private Context b;
    private b c;
    private com.smaato.soma.internal.d.c d;
    private boolean e;
    private boolean f;
    private int g;
    private int h;

    /* loaded from: classes3.dex */
    public enum InterstitialOrientation {
        PORTRAIT,
        LANDSCAPE
    }

    /* loaded from: classes3.dex */
    protected enum InterstitialStates {
        IS_READY,
        IS_NOT_READY
    }

    public boolean a() {
        return this.f;
    }

    public int b() {
        return this.g;
    }

    public int c() {
        return this.h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static c d() throws UnableToFindInterstitialBannerView {
        try {
            if (f5276a.getParent() != null) {
                ((ViewGroup) f5276a.getParent()).removeView(f5276a);
            }
            return f5276a;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnableToFindInterstitialBannerView(e2);
        }
    }

    protected b e() {
        return this.c;
    }

    @Override // com.smaato.soma.c
    public void onReceiveAd(com.smaato.soma.b bVar, final p pVar) throws AdReceiveFailed {
        new l<Void>() { // from class: com.smaato.soma.video.Video.1
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                if (pVar.k() == ErrorCode.NO_ERROR && ((pVar.d() == AdType.VAST || pVar.d() == AdType.REWARDED) && pVar.m() != null)) {
                    Video.this.d = pVar.m();
                    if (com.smaato.soma.video.a.a.a(Video.this.b) || Video.this.c == null) {
                        if (Video.this.a(Video.this.d)) {
                            Video.f5276a = new c(Video.this.b, Video.this.d, Video.this.e, Video.this.e(), Video.this.b(), Video.this.a(), Video.this.c());
                            if (Video.this.c != null) {
                                Video.this.c.onReadyToShow();
                            }
                        } else {
                            h.a(String.valueOf(Video.this.d.b()), new h.a() { // from class: com.smaato.soma.video.Video.1.1
                                @Override // com.smaato.soma.video.a.h.a
                                public void a(boolean z) {
                                    if (z) {
                                        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(ShareConstants.VIDEO_URL, "Video downloaded successfully", 1, DebugCategory.DEBUG));
                                    }
                                    Video.this.a(Video.this.d);
                                    Video.f5276a = new c(Video.this.b, Video.this.d, Video.this.e, Video.this.e(), Video.this.b(), Video.this.a(), Video.this.c());
                                    if (Video.this.c != null) {
                                        Video.this.c.onReadyToShow();
                                    }
                                }
                            });
                        }
                    } else {
                        Video.this.c.onFailedToLoadAd();
                    }
                } else {
                    com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(ShareConstants.VIDEO_URL, "No Ad Available", 1, DebugCategory.DEBUG));
                    if (Video.this.c != null) {
                        Video.this.c.onFailedToLoadAd();
                    }
                }
                return null;
            }
        }.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(com.smaato.soma.internal.d.c cVar) {
        String valueOf = String.valueOf(cVar.b());
        if (com.smaato.soma.video.a.a.b(valueOf)) {
            cVar.a(com.smaato.soma.video.a.a.c(valueOf));
            return true;
        }
        return false;
    }
}

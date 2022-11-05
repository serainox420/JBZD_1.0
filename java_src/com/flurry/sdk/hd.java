package com.flurry.sdk;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.AbsoluteLayout;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.flurry.android.AdCreative;
import com.flurry.android.AdNetworkView;
import com.flurry.android.ICustomAdNetworkHandler;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class hd {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2786a = hd.class.getSimpleName();
    private static final Map<Class<? extends ViewGroup>, c> b;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(LinearLayout.class, new d());
        hashMap.put(AbsoluteLayout.class, new a());
        hashMap.put(FrameLayout.class, new b());
        hashMap.put(RelativeLayout.class, new e());
        b = Collections.unmodifiableMap(hashMap);
    }

    public static void a(Context context, s sVar) {
        AdNetworkView b2;
        RelativeLayout relativeLayout;
        ViewGroup.LayoutParams layoutParams;
        int i;
        if (context != null && sVar != null) {
            au l = sVar.l();
            cs csVar = l.b.b;
            cn cnVar = csVar.f.get(0);
            int i2 = cnVar.f2511a;
            String str = cnVar.c;
            AdCreative a2 = fi.a(cnVar.d);
            ICustomAdNetworkHandler iCustomAdNetworkHandler = j.a().b;
            i.a();
            ec e2 = i.e();
            hc hcVar = e2 != null ? e2.e : null;
            if (i2 == 4 && iCustomAdNetworkHandler != null) {
                b2 = iCustomAdNetworkHandler.getAdFromNetwork(context, a2, str);
            } else {
                b2 = hcVar.b(context, sVar);
            }
            if (b2 == null) {
                km.e(f2786a, "Failed to create view for ad network: " + str + ", network is unsupported on Android, or no ICustomAdNetworkHandler was registered or it failed to return a view.");
                HashMap hashMap = new HashMap();
                hashMap.put("errorCode", Integer.toString(bb.kPrepareFailed.z));
                if (i2 == 4) {
                    hashMap.put("binding_3rd_party", Integer.toString(4));
                }
                ff.a(bc.EV_RENDER_FAILED, hashMap, context, sVar, l, 1);
            } else if (sVar == null || b2 == null || csVar == null) {
            } else {
                ViewGroup g = sVar.g();
                RelativeLayout u = sVar.u();
                if (u == null) {
                    RelativeLayout relativeLayout2 = new RelativeLayout(sVar.f());
                    sVar.a(relativeLayout2);
                    relativeLayout = relativeLayout2;
                } else {
                    relativeLayout = u;
                }
                ViewGroup viewGroup = (ViewGroup) relativeLayout.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(relativeLayout);
                }
                relativeLayout.removeAllViews();
                ViewGroup viewGroup2 = (ViewGroup) b2.getParent();
                if (viewGroup2 != null) {
                    viewGroup2.removeView(b2);
                }
                relativeLayout.addView(b2, new RelativeLayout.LayoutParams(-1, -1));
                b2.initLayout();
                if (csVar == null || csVar.f.size() <= 0) {
                    layoutParams = null;
                } else {
                    cr crVar = csVar.f.get(0).d;
                    if (crVar == null) {
                        layoutParams = null;
                    } else {
                        c cVar = b.get(g.getClass());
                        if (cVar == null) {
                            km.a(5, f2786a, "Ad space layout and alignment from the server is being ignored for ViewGroup subclass " + g.getClass().getSimpleName());
                            layoutParams = null;
                        } else {
                            layoutParams = cVar.a(crVar);
                        }
                    }
                }
                if (layoutParams != null) {
                    relativeLayout.setLayoutParams(layoutParams);
                    km.a(3, f2786a, "banner ad holder layout params = " + layoutParams.getClass().getName() + " {width = " + layoutParams.width + ", height = " + layoutParams.height + "} for banner ad with adSpaceName = " + sVar.h());
                }
                g.setBackgroundColor(369098752);
                int childCount = g.getChildCount();
                if (csVar == null || csVar.f.size() <= 0) {
                    i = childCount;
                } else {
                    cr crVar2 = csVar.f.get(0).d;
                    if (crVar2 != null) {
                        String[] split = crVar2.e.split("-");
                        if (split.length == 2 && "t".equals(split[0])) {
                            i = 0;
                        }
                    }
                    i = childCount;
                }
                g.addView(relativeLayout, i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class c {
        public abstract ViewGroup.LayoutParams a(cr crVar);

        private c() {
        }

        /* synthetic */ c(byte b) {
            this();
        }

        public int a() {
            return -2;
        }

        public static int b(cr crVar) {
            if (!(crVar.f2515a != 0)) {
                return -1;
            }
            return lw.b(crVar.f2515a);
        }

        public final int c(cr crVar) {
            if (!(crVar.b != 0)) {
                return a();
            }
            return lw.b(crVar.b);
        }
    }

    /* loaded from: classes2.dex */
    static final class d extends c {
        d() {
            super((byte) 0);
        }

        @Override // com.flurry.sdk.hd.c
        public final ViewGroup.LayoutParams a(cr crVar) {
            return new LinearLayout.LayoutParams(b(crVar), c(crVar));
        }
    }

    /* loaded from: classes2.dex */
    static final class a extends c {
        a() {
            super((byte) 0);
        }

        @Override // com.flurry.sdk.hd.c
        public final ViewGroup.LayoutParams a(cr crVar) {
            km.a(5, hd.f2786a, "AbsoluteLayout is deprecated, please consider to use FrameLayout or RelativeLayout for banner ad container view");
            return new AbsoluteLayout.LayoutParams(b(crVar), c(crVar), 0, 0);
        }
    }

    /* loaded from: classes2.dex */
    static final class b extends c {
        b() {
            super((byte) 0);
        }

        @Override // com.flurry.sdk.hd.c
        public final ViewGroup.LayoutParams a(cr crVar) {
            return new FrameLayout.LayoutParams(b(crVar), c(crVar), 17);
        }
    }

    /* loaded from: classes2.dex */
    static final class e extends c {

        /* renamed from: a  reason: collision with root package name */
        private static final Map<String, Integer> f2787a;

        e() {
            super((byte) 0);
        }

        @Override // com.flurry.sdk.hd.c
        public final int a() {
            return -1;
        }

        @Override // com.flurry.sdk.hd.c
        public final ViewGroup.LayoutParams a(cr crVar) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(b(crVar), c(crVar));
            String[] split = crVar.e.split("-");
            if (split.length == 2) {
                Integer a2 = a(split[0]);
                if (a2 != null) {
                    layoutParams.addRule(a2.intValue());
                }
                Integer a3 = a(split[1]);
                if (a3 != null) {
                    layoutParams.addRule(a3.intValue());
                }
            }
            return layoutParams;
        }

        private static Integer a(String str) {
            return f2787a.get(str);
        }

        static {
            HashMap hashMap = new HashMap();
            hashMap.put("b", 12);
            hashMap.put("t", 10);
            hashMap.put("m", 15);
            hashMap.put("c", 14);
            hashMap.put("l", 9);
            hashMap.put("r", 11);
            f2787a = Collections.unmodifiableMap(hashMap);
        }
    }
}

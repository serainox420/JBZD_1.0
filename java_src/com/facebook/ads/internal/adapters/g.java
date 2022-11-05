package com.facebook.ads.internal.adapters;

import android.graphics.Color;
import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.facebook.ads.NativeAd;
import java.util.List;
/* loaded from: classes.dex */
public class g extends RecyclerView.a<com.facebook.ads.internal.view.g> {

    /* renamed from: a  reason: collision with root package name */
    private static final int f2087a = Color.argb(51, 0, 0, 0);
    private final List<NativeAd> b;
    private final int c;
    private final int d;

    public g(com.facebook.ads.internal.view.hscroll.b bVar, List<NativeAd> list) {
        float f = bVar.getContext().getResources().getDisplayMetrics().density;
        this.b = list;
        this.c = Math.round(f * 1.0f);
        this.d = bVar.getChildSpacing();
    }

    @Override // android.support.v7.widget.RecyclerView.a
    /* renamed from: a */
    public com.facebook.ads.internal.view.g onCreateViewHolder(ViewGroup viewGroup, int i) {
        com.facebook.ads.internal.view.p pVar = new com.facebook.ads.internal.view.p(viewGroup.getContext());
        pVar.setScaleType(ImageView.ScaleType.CENTER_CROP);
        return new com.facebook.ads.internal.view.g(pVar);
    }

    @Override // android.support.v7.widget.RecyclerView.a
    /* renamed from: a */
    public void onBindViewHolder(final com.facebook.ads.internal.view.g gVar, int i) {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -1);
        marginLayoutParams.setMargins(i == 0 ? this.d * 2 : this.d, 0, i >= this.b.size() + (-1) ? this.d * 2 : this.d, 0);
        gVar.f2329a.setBackgroundColor(0);
        gVar.f2329a.setImageDrawable(null);
        gVar.f2329a.setLayoutParams(marginLayoutParams);
        gVar.f2329a.setPadding(this.c, this.c, this.c, this.c);
        NativeAd nativeAd = this.b.get(i);
        nativeAd.registerViewForInteraction(gVar.f2329a);
        NativeAd.Image adCoverImage = nativeAd.getAdCoverImage();
        if (adCoverImage != null) {
            com.facebook.ads.internal.util.q qVar = new com.facebook.ads.internal.util.q(gVar.f2329a);
            qVar.a(new com.facebook.ads.internal.util.r() { // from class: com.facebook.ads.internal.adapters.g.1
                @Override // com.facebook.ads.internal.util.r
                public void a() {
                    gVar.f2329a.setBackgroundColor(g.f2087a);
                }
            });
            qVar.a(adCoverImage.getUrl());
        }
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public int getItemCount() {
        return this.b.size();
    }
}

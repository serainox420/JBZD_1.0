package com.flurry.sdk;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class av {

    /* renamed from: a  reason: collision with root package name */
    fr f2461a;
    gp b;
    public List<String> c;
    public List<String> d = Arrays.asList(bc.EV_CLICKED.ag, bc.EV_RENDERED.ag, bc.EV_PAGE_LOAD_FINISHED.ag);
    final Map<String, Boolean> e = new HashMap();
    public List<String> f;

    public av() {
        this.e.put(bc.EV_AD_CLOSED.ag, Boolean.FALSE);
        this.e.put(bc.EV_RENDERED.ag, Boolean.FALSE);
        this.e.put(bc.EV_RENDER_FAILED.ag, Boolean.FALSE);
        this.f = new ArrayList();
        this.b = new gp();
    }
}

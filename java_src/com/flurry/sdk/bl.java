package com.flurry.sdk;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class bl {

    /* renamed from: a  reason: collision with root package name */
    private String f2487a;
    private List<bk> b = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public bl(String str, List<ay> list, r rVar) {
        this.f2487a = str;
        a(list, rVar);
    }

    private void a(List<ay> list, r rVar) {
        this.b.clear();
        for (ay ayVar : list) {
            this.b.add(new bk(ayVar, rVar, this.f2487a));
        }
    }
}

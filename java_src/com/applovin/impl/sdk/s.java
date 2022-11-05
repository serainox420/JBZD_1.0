package com.applovin.impl.sdk;

import java.util.Comparator;
/* loaded from: classes.dex */
class s implements Comparator {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ r f1667a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(r rVar) {
        this.f1667a = rVar;
    }

    @Override // java.util.Comparator
    /* renamed from: a */
    public int compare(u uVar, u uVar2) {
        if (uVar.d > uVar2.d) {
            return -1;
        }
        return uVar.d < uVar2.d ? 1 : 0;
    }
}

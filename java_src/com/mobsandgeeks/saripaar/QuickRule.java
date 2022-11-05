package com.mobsandgeeks.saripaar;

import android.view.View;
/* loaded from: classes3.dex */
public abstract class QuickRule<VIEW extends View> extends Rule<VIEW> {
    public abstract boolean isValid(VIEW view);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.mobsandgeeks.saripaar.Rule
    public /* bridge */ /* synthetic */ boolean isValid(Object obj) {
        return isValid((QuickRule<VIEW>) ((View) obj));
    }

    protected QuickRule() {
        super(-1);
    }

    protected QuickRule(int i) {
        super(i);
        if (i < 0) {
            throw new IllegalArgumentException("'sequence' should be a non-negative integer.");
        }
    }
}

package com.mobsandgeeks.saripaar;

import android.content.Context;
/* loaded from: classes.dex */
public abstract class Rule<VALIDATABLE> {
    protected final int mSequence;

    public abstract String getMessage(Context context);

    public abstract boolean isValid(VALIDATABLE validatable);

    /* JADX INFO: Access modifiers changed from: protected */
    public Rule(int i) {
        this.mSequence = i;
    }

    public final int getSequence() {
        return this.mSequence;
    }
}

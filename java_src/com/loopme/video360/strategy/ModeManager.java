package com.loopme.video360.strategy;

import android.content.Context;
import com.loopme.video360.strategy.IModeStrategy;
/* loaded from: classes2.dex */
public abstract class ModeManager<T extends IModeStrategy> implements IModeStrategy {
    private T mStrategy;

    protected abstract T createStrategy();

    public abstract void switchMode(Context context);

    public void prepare(Context context) {
        initMode(context);
    }

    private void initMode(Context context) {
        if (this.mStrategy != null) {
            this.mStrategy.off(context);
        }
        this.mStrategy = createStrategy();
        this.mStrategy.on(context);
    }

    @Override // com.loopme.video360.strategy.IModeStrategy
    public void on(Context context) {
        this.mStrategy.on(context);
    }

    @Override // com.loopme.video360.strategy.IModeStrategy
    public void off(Context context) {
        this.mStrategy.off(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public T getStrategy() {
        return this.mStrategy;
    }
}

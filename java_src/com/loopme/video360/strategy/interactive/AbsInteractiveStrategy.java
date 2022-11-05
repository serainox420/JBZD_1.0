package com.loopme.video360.strategy.interactive;

import com.loopme.video360.MD360Director;
import com.loopme.video360.strategy.IModeStrategy;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class AbsInteractiveStrategy implements IModeStrategy, IInteractiveMode {
    private List<MD360Director> mDirectorList;

    public AbsInteractiveStrategy(List<MD360Director> list) {
        this.mDirectorList = list;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<MD360Director> getDirectorList() {
        return this.mDirectorList;
    }
}

package com.mobsandgeeks.saripaar;

import android.util.Pair;
import com.mobsandgeeks.saripaar.adapter.ViewDataAdapter;
import java.util.Comparator;
/* loaded from: classes3.dex */
final class SequenceComparator implements Comparator<Pair<Rule, ViewDataAdapter>> {
    @Override // java.util.Comparator
    public int compare(Pair<Rule, ViewDataAdapter> pair, Pair<Rule, ViewDataAdapter> pair2) {
        int sequence = ((Rule) pair.first).getSequence();
        int sequence2 = ((Rule) pair2.first).getSequence();
        if (sequence == sequence2) {
            return 0;
        }
        return sequence > sequence2 ? 1 : -1;
    }
}

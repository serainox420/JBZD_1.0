package com.mobsandgeeks.saripaar.rule;

import com.mobsandgeeks.saripaar.AnnotationRule;
import com.mobsandgeeks.saripaar.annotation.Length;
/* loaded from: classes.dex */
public class LengthRule extends AnnotationRule<Length, String> {
    protected LengthRule(Length length) {
        super(length);
    }

    @Override // com.mobsandgeeks.saripaar.Rule
    public boolean isValid(String str) {
        boolean z;
        boolean z2;
        if (str == null) {
            throw new IllegalArgumentException("'text' cannot be null.");
        }
        int min = ((Length) this.mRuleAnnotation).min();
        int max = ((Length) this.mRuleAnnotation).max();
        assertMinMax(min, max);
        int length = ((Length) this.mRuleAnnotation).trim() ? str.trim().length() : str.length();
        if (min != Integer.MIN_VALUE) {
            z = length >= min;
        } else {
            z = true;
        }
        if (max != Integer.MAX_VALUE) {
            z2 = length <= max;
        } else {
            z2 = true;
        }
        return z && z2;
    }

    private void assertMinMax(int i, int i2) {
        if (i > i2) {
            throw new IllegalStateException(String.format("'min' (%d) should be less than or equal to 'max' (%d).", Integer.valueOf(i), Integer.valueOf(i2)));
        }
    }
}

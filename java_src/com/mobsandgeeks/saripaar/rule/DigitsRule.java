package com.mobsandgeeks.saripaar.rule;

import com.mobsandgeeks.saripaar.AnnotationRule;
import com.mobsandgeeks.saripaar.annotation.Digits;
/* loaded from: classes.dex */
public class DigitsRule extends AnnotationRule<Digits, String> {
    protected DigitsRule(Digits digits) {
        super(digits);
    }

    @Override // com.mobsandgeeks.saripaar.Rule
    public boolean isValid(String str) {
        return str.matches(String.format("(\\d{0,%d})(\\.\\d{1,%d})?", Integer.valueOf(((Digits) this.mRuleAnnotation).integer()), Integer.valueOf(((Digits) this.mRuleAnnotation).fraction())));
    }
}

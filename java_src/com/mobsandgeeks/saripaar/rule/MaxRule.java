package com.mobsandgeeks.saripaar.rule;

import com.mobsandgeeks.saripaar.AnnotationRule;
import com.mobsandgeeks.saripaar.annotation.Max;
import commons.validator.routines.IntegerValidator;
/* loaded from: classes.dex */
public class MaxRule extends AnnotationRule<Max, Integer> {
    protected MaxRule(Max max) {
        super(max);
    }

    @Override // com.mobsandgeeks.saripaar.Rule
    public boolean isValid(Integer num) {
        if (num == null) {
            throw new IllegalArgumentException("'Integer' cannot be null.");
        }
        return IntegerValidator.getInstance().maxValue(num, ((Max) this.mRuleAnnotation).value());
    }
}

package com.mobsandgeeks.saripaar.rule;

import com.mobsandgeeks.saripaar.AnnotationRule;
import com.mobsandgeeks.saripaar.annotation.DecimalMax;
import commons.validator.routines.DoubleValidator;
/* loaded from: classes.dex */
public class DecimalMaxRule extends AnnotationRule<DecimalMax, Double> {
    protected DecimalMaxRule(DecimalMax decimalMax) {
        super(decimalMax);
    }

    @Override // com.mobsandgeeks.saripaar.Rule
    public boolean isValid(Double d) {
        if (d == null) {
            throw new IllegalArgumentException("'Double' cannot be null.");
        }
        return DoubleValidator.getInstance().maxValue(d, ((DecimalMax) this.mRuleAnnotation).value());
    }
}

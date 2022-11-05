package com.mobsandgeeks.saripaar.rule;

import com.mobsandgeeks.saripaar.AnnotationRule;
import com.mobsandgeeks.saripaar.annotation.Checked;
/* loaded from: classes.dex */
public class CheckedRule extends AnnotationRule<Checked, Boolean> {
    protected CheckedRule(Checked checked) {
        super(checked);
    }

    @Override // com.mobsandgeeks.saripaar.Rule
    public boolean isValid(Boolean bool) {
        if (bool == null) {
            throw new IllegalArgumentException("'data' cannot be null.");
        }
        return ((Checked) this.mRuleAnnotation).value() == bool.booleanValue();
    }
}

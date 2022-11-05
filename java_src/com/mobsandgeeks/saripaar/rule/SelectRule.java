package com.mobsandgeeks.saripaar.rule;

import com.mobsandgeeks.saripaar.AnnotationRule;
import com.mobsandgeeks.saripaar.annotation.Select;
/* loaded from: classes.dex */
public class SelectRule extends AnnotationRule<Select, Integer> {
    protected SelectRule(Select select) {
        super(select);
    }

    @Override // com.mobsandgeeks.saripaar.Rule
    public boolean isValid(Integer num) {
        if (num == null) {
            throw new IllegalArgumentException("'index' cannot be null.");
        }
        return ((Select) this.mRuleAnnotation).defaultSelection() != num.intValue();
    }
}

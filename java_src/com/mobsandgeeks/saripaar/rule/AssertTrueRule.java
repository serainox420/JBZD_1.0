package com.mobsandgeeks.saripaar.rule;

import com.mobsandgeeks.saripaar.AnnotationRule;
import com.mobsandgeeks.saripaar.annotation.AssertTrue;
/* loaded from: classes.dex */
public class AssertTrueRule extends AnnotationRule<AssertTrue, Boolean> {
    protected AssertTrueRule(AssertTrue assertTrue) {
        super(assertTrue);
    }

    @Override // com.mobsandgeeks.saripaar.Rule
    public boolean isValid(Boolean bool) {
        if (bool == null) {
            throw new IllegalArgumentException("'data' cannot be null.");
        }
        return bool.booleanValue();
    }
}

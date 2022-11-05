package com.mobsandgeeks.saripaar.rule;

import com.mobsandgeeks.saripaar.AnnotationRule;
import com.mobsandgeeks.saripaar.annotation.AssertFalse;
/* loaded from: classes.dex */
public class AssertFalseRule extends AnnotationRule<AssertFalse, Boolean> {
    protected AssertFalseRule(AssertFalse assertFalse) {
        super(assertFalse);
    }

    @Override // com.mobsandgeeks.saripaar.Rule
    public boolean isValid(Boolean bool) {
        if (bool == null) {
            throw new IllegalArgumentException("'data' cannot be null.");
        }
        return !bool.booleanValue();
    }
}

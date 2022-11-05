package com.mobsandgeeks.saripaar.rule;

import com.mobsandgeeks.saripaar.ValidationContext;
import com.mobsandgeeks.saripaar.annotation.ConfirmEmail;
import com.mobsandgeeks.saripaar.annotation.Email;
/* loaded from: classes.dex */
public class ConfirmEmailRule extends SameValueContextualRule<ConfirmEmail, Email, String> {
    protected ConfirmEmailRule(ValidationContext validationContext, ConfirmEmail confirmEmail) {
        super(validationContext, confirmEmail, Email.class);
    }

    @Override // com.mobsandgeeks.saripaar.rule.SameValueContextualRule, com.mobsandgeeks.saripaar.Rule
    public boolean isValid(String str) {
        return super.isValid((ConfirmEmailRule) str);
    }
}

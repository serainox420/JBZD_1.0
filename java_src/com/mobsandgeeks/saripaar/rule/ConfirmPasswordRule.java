package com.mobsandgeeks.saripaar.rule;

import com.mobsandgeeks.saripaar.ValidationContext;
import com.mobsandgeeks.saripaar.annotation.ConfirmPassword;
import com.mobsandgeeks.saripaar.annotation.Password;
/* loaded from: classes.dex */
public class ConfirmPasswordRule extends SameValueContextualRule<ConfirmPassword, Password, String> {
    protected ConfirmPasswordRule(ValidationContext validationContext, ConfirmPassword confirmPassword) {
        super(validationContext, confirmPassword, Password.class);
    }

    @Override // com.mobsandgeeks.saripaar.rule.SameValueContextualRule, com.mobsandgeeks.saripaar.Rule
    public boolean isValid(String str) {
        return super.isValid((ConfirmPasswordRule) str);
    }
}

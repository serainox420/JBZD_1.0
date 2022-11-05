package com.mobsandgeeks.saripaar.rule;

import com.mobsandgeeks.saripaar.AnnotationRule;
import com.mobsandgeeks.saripaar.annotation.Email;
import commons.validator.routines.EmailValidator;
/* loaded from: classes.dex */
public class EmailRule extends AnnotationRule<Email, String> {
    protected EmailRule(Email email) {
        super(email);
    }

    @Override // com.mobsandgeeks.saripaar.Rule
    public boolean isValid(String str) {
        return EmailValidator.getInstance(((Email) this.mRuleAnnotation).allowLocal()).isValid(str);
    }
}

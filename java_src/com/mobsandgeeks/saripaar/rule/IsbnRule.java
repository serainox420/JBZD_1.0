package com.mobsandgeeks.saripaar.rule;

import com.mobsandgeeks.saripaar.AnnotationRule;
import com.mobsandgeeks.saripaar.annotation.Isbn;
import commons.validator.routines.ISBNValidator;
/* loaded from: classes.dex */
public class IsbnRule extends AnnotationRule<Isbn, String> {
    protected IsbnRule(Isbn isbn) {
        super(isbn);
    }

    @Override // com.mobsandgeeks.saripaar.Rule
    public boolean isValid(String str) {
        return ISBNValidator.getInstance().isValid(str);
    }
}

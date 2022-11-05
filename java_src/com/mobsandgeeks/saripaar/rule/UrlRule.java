package com.mobsandgeeks.saripaar.rule;

import com.mobsandgeeks.saripaar.AnnotationRule;
import com.mobsandgeeks.saripaar.annotation.Url;
import commons.validator.routines.UrlValidator;
/* loaded from: classes.dex */
public class UrlRule extends AnnotationRule<Url, String> {
    protected UrlRule(Url url) {
        super(url);
    }

    @Override // com.mobsandgeeks.saripaar.Rule
    public boolean isValid(String str) {
        String[] schemes = ((Url) this.mRuleAnnotation).schemes();
        return ((schemes == null || schemes.length <= 0) ? UrlValidator.getInstance() : new UrlValidator(schemes, ((Url) this.mRuleAnnotation).allowFragments() ? 0L : 4L)).isValid(str);
    }
}

package com.mobsandgeeks.saripaar.rule;

import com.mobsandgeeks.saripaar.AnnotationRule;
import com.mobsandgeeks.saripaar.annotation.Pattern;
import commons.validator.routines.RegexValidator;
/* loaded from: classes.dex */
public class PatternRule extends AnnotationRule<Pattern, String> {
    protected PatternRule(Pattern pattern) {
        super(pattern);
    }

    @Override // com.mobsandgeeks.saripaar.Rule
    public boolean isValid(String str) {
        return new RegexValidator(((Pattern) this.mRuleAnnotation).regex(), ((Pattern) this.mRuleAnnotation).caseSensitive()).isValid(str);
    }
}

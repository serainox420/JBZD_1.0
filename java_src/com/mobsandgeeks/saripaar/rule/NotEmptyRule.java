package com.mobsandgeeks.saripaar.rule;

import android.content.Context;
import com.mobsandgeeks.saripaar.ContextualAnnotationRule;
import com.mobsandgeeks.saripaar.ValidationContext;
import com.mobsandgeeks.saripaar.annotation.NotEmpty;
/* loaded from: classes.dex */
public class NotEmptyRule extends ContextualAnnotationRule<NotEmpty, String> {
    protected NotEmptyRule(ValidationContext validationContext, NotEmpty notEmpty) {
        super(validationContext, notEmpty);
    }

    @Override // com.mobsandgeeks.saripaar.Rule
    public boolean isValid(String str) {
        boolean z;
        String emptyText;
        if (str != null) {
            if (((NotEmpty) this.mRuleAnnotation).trim()) {
                str = str.trim();
            }
            Context context = this.mValidationContext.getContext();
            if (((NotEmpty) this.mRuleAnnotation).emptyTextResId() != -1) {
                emptyText = context.getString(((NotEmpty) this.mRuleAnnotation).emptyTextResId());
            } else {
                emptyText = ((NotEmpty) this.mRuleAnnotation).emptyText();
            }
            z = emptyText.equals(str) || "".equals(str);
        } else {
            z = false;
        }
        return !z;
    }
}

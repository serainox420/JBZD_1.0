package com.mobsandgeeks.saripaar;

import android.content.Context;
import com.facebook.share.internal.ShareConstants;
import java.lang.annotation.Annotation;
/* loaded from: classes.dex */
public abstract class AnnotationRule<RULE_ANNOTATION extends Annotation, DATA_TYPE> extends Rule<DATA_TYPE> {
    protected final RULE_ANNOTATION mRuleAnnotation;

    /* JADX INFO: Access modifiers changed from: protected */
    public AnnotationRule(RULE_ANNOTATION rule_annotation) {
        super(rule_annotation != null ? ((Integer) Reflector.getAttributeValue(rule_annotation, "sequence", Integer.TYPE)).intValue() : -1);
        if (rule_annotation == null) {
            throw new IllegalArgumentException("'ruleAnnotation' cannot be null.");
        }
        this.mRuleAnnotation = rule_annotation;
    }

    @Override // com.mobsandgeeks.saripaar.Rule
    public String getMessage(Context context) {
        int intValue = ((Integer) Reflector.getAttributeValue(this.mRuleAnnotation, "messageResId", Integer.class)).intValue();
        if (intValue != -1) {
            return context.getString(intValue);
        }
        return (String) Reflector.getAttributeValue(this.mRuleAnnotation, ShareConstants.WEB_DIALOG_PARAM_MESSAGE, String.class);
    }
}

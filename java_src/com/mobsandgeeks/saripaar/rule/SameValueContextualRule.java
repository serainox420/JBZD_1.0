package com.mobsandgeeks.saripaar.rule;

import android.view.View;
import com.mobsandgeeks.saripaar.ContextualAnnotationRule;
import com.mobsandgeeks.saripaar.ValidationContext;
import java.lang.annotation.Annotation;
import java.util.List;
/* loaded from: classes.dex */
class SameValueContextualRule<CONFIRM extends Annotation, SOURCE extends Annotation, DATA_TYPE> extends ContextualAnnotationRule<CONFIRM, DATA_TYPE> {
    private Class<CONFIRM> mConfirmClass;
    private Class<SOURCE> mSourceClass;

    /* JADX INFO: Access modifiers changed from: protected */
    public SameValueContextualRule(ValidationContext validationContext, CONFIRM confirm, Class<SOURCE> cls) {
        super(validationContext, confirm);
        this.mSourceClass = cls;
        this.mConfirmClass = (Class<CONFIRM>) confirm.annotationType();
    }

    @Override // com.mobsandgeeks.saripaar.Rule
    public boolean isValid(DATA_TYPE data_type) {
        List<View> annotatedViews = this.mValidationContext.getAnnotatedViews(this.mSourceClass);
        int size = annotatedViews.size();
        if (size == 0) {
            throw new IllegalStateException(String.format("You should have a view annotated with '%s' to use '%s'.", this.mSourceClass.getName(), this.mConfirmClass.getName()));
        }
        if (size > 1) {
            throw new IllegalStateException(String.format("More than 1 field annotated with '%s'.", this.mSourceClass.getName()));
        }
        return data_type.equals(this.mValidationContext.getData(annotatedViews.get(0), this.mSourceClass));
    }
}

package com.mobsandgeeks.saripaar.rule;

import android.content.Context;
import com.mobsandgeeks.saripaar.ContextualAnnotationRule;
import com.mobsandgeeks.saripaar.ValidationContext;
import com.mobsandgeeks.saripaar.annotation.Future;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes.dex */
public class FutureRule extends ContextualAnnotationRule<Future, String> {
    protected FutureRule(ValidationContext validationContext, Future future) {
        super(validationContext, future);
    }

    @Override // com.mobsandgeeks.saripaar.Rule
    public boolean isValid(String str) {
        Date date = null;
        try {
            date = getDateFormat().parse(str);
        } catch (ParseException e) {
        }
        return date != null && date.after(new Date());
    }

    private DateFormat getDateFormat() {
        Context context = this.mValidationContext.getContext();
        int dateFormatResId = ((Future) this.mRuleAnnotation).dateFormatResId();
        return new SimpleDateFormat(dateFormatResId != -1 ? context.getString(dateFormatResId) : ((Future) this.mRuleAnnotation).dateFormat());
    }
}

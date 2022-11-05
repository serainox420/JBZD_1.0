package com.mobsandgeeks.saripaar.rule;

import android.content.Context;
import com.mobsandgeeks.saripaar.ContextualAnnotationRule;
import com.mobsandgeeks.saripaar.ValidationContext;
import com.mobsandgeeks.saripaar.annotation.Past;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes.dex */
public class PastRule extends ContextualAnnotationRule<Past, String> {
    protected PastRule(ValidationContext validationContext, Past past) {
        super(validationContext, past);
    }

    @Override // com.mobsandgeeks.saripaar.Rule
    public boolean isValid(String str) {
        Date date = null;
        try {
            date = getDateFormat().parse(str);
        } catch (ParseException e) {
        }
        return date != null && date.before(new Date());
    }

    private DateFormat getDateFormat() {
        Context context = this.mValidationContext.getContext();
        int dateFormatResId = ((Past) this.mRuleAnnotation).dateFormatResId();
        return new SimpleDateFormat(dateFormatResId != -1 ? context.getString(dateFormatResId) : ((Past) this.mRuleAnnotation).dateFormat());
    }
}

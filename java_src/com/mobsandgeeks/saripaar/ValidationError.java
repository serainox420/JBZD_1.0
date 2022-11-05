package com.mobsandgeeks.saripaar;

import android.content.Context;
import android.view.View;
import java.util.List;
/* loaded from: classes3.dex */
public class ValidationError {
    private final List<Rule> failedRules;
    private final View view;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ValidationError(View view, List<Rule> list) {
        this.view = view;
        this.failedRules = list;
    }

    public View getView() {
        return this.view;
    }

    public List<Rule> getFailedRules() {
        return this.failedRules;
    }

    public String getCollatedErrorMessage(Context context) {
        StringBuilder sb = new StringBuilder();
        for (Rule rule : this.failedRules) {
            String trim = rule.getMessage(context).trim();
            if (trim.length() > 0) {
                sb.append(trim).append('\n');
            }
        }
        return sb.toString().trim();
    }

    public String toString() {
        return "ValidationError{view=" + this.view + ", failedRules=" + this.failedRules + '}';
    }
}

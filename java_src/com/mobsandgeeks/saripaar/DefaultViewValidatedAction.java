package com.mobsandgeeks.saripaar;

import android.view.View;
import android.widget.TextView;
import com.mobsandgeeks.saripaar.Validator;
/* loaded from: classes3.dex */
public class DefaultViewValidatedAction implements Validator.ViewValidatedAction {
    @Override // com.mobsandgeeks.saripaar.Validator.ViewValidatedAction
    public void onAllRulesPassed(View view) {
        if (view instanceof TextView) {
            ((TextView) view).setError(null);
        }
    }
}

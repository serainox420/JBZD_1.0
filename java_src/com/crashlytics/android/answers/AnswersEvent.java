package com.crashlytics.android.answers;

import com.crashlytics.android.answers.AnswersEvent;
import io.fabric.sdk.android.c;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class AnswersEvent<T extends AnswersEvent> {
    public static final int MAX_NUM_ATTRIBUTES = 20;
    public static final int MAX_STRING_LENGTH = 100;
    final AnswersEventValidator validator = new AnswersEventValidator(20, 100, c.i());
    final AnswersAttributes customAttributes = new AnswersAttributes(this.validator);

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, Object> getCustomAttributes() {
        return this.customAttributes.attributes;
    }

    public T putCustomAttribute(String str, String str2) {
        this.customAttributes.put(str, str2);
        return this;
    }

    public T putCustomAttribute(String str, Number number) {
        this.customAttributes.put(str, number);
        return this;
    }
}

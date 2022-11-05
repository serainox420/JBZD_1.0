package com.mobsandgeeks.saripaar;

import android.content.Context;
import android.util.Pair;
import android.view.View;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.mobsandgeeks.saripaar.adapter.ViewDataAdapter;
import com.mobsandgeeks.saripaar.annotation.ValidateUsing;
import com.mobsandgeeks.saripaar.exception.ConversionException;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class ValidationContext {
    private Context mContext;
    Map<View, ArrayList<Pair<Rule, ViewDataAdapter>>> mViewRulesMap;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ValidationContext(Context context) {
        this.mContext = context;
    }

    public List<View> getAnnotatedViews(Class<? extends Annotation> cls) {
        assertNotNull(cls, "saripaarAnnotation");
        assertIsRegisteredAnnotation(cls);
        Class<? extends AnnotationRule> ruleClass = getRuleClass(cls);
        ArrayList arrayList = new ArrayList();
        for (View view : this.mViewRulesMap.keySet()) {
            Iterator<Pair<Rule, ViewDataAdapter>> it = this.mViewRulesMap.get(view).iterator();
            while (it.hasNext()) {
                if (ruleClass.equals(((Rule) it.next().first).getClass()) && !arrayList.contains(view)) {
                    arrayList.add(view);
                }
            }
        }
        return arrayList;
    }

    public Object getData(View view, Class<? extends Annotation> cls) {
        Object data;
        assertNotNull(view, Promotion.ACTION_VIEW);
        assertNotNull(cls, "saripaarAnnotation");
        Object obj = null;
        Class<? extends AnnotationRule> ruleClass = getRuleClass(cls);
        Iterator<Pair<Rule, ViewDataAdapter>> it = this.mViewRulesMap.get(view).iterator();
        while (it.hasNext()) {
            Pair<Rule, ViewDataAdapter> next = it.next();
            if (ruleClass.equals(((Rule) next.first).getClass())) {
                try {
                    data = ((ViewDataAdapter) next.second).getData(view);
                } catch (ConversionException e) {
                    e.printStackTrace();
                }
                obj = data;
            }
            data = obj;
            obj = data;
        }
        return obj;
    }

    public Context getContext() {
        return this.mContext;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setViewRulesMap(Map<View, ArrayList<Pair<Rule, ViewDataAdapter>>> map) {
        this.mViewRulesMap = map;
    }

    private void assertNotNull(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(String.format("'%s' cannot be null.", str));
        }
    }

    private void assertIsRegisteredAnnotation(Class<? extends Annotation> cls) {
        if (!Validator.isSaripaarAnnotation(cls)) {
            throw new IllegalArgumentException(String.format("%s is not a registered Saripaar annotation.", cls.getName()));
        }
    }

    private Class<? extends AnnotationRule> getRuleClass(Class<? extends Annotation> cls) {
        return ((ValidateUsing) cls.getAnnotation(ValidateUsing.class)).value();
    }
}

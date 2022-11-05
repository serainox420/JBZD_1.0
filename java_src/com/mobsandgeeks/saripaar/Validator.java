package com.mobsandgeeks.saripaar;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.View;
import android.widget.CheckBox;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Spinner;
import com.facebook.ads.AudienceNetworkActivity;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.mobsandgeeks.saripaar.adapter.CheckBoxBooleanAdapter;
import com.mobsandgeeks.saripaar.adapter.RadioButtonBooleanAdapter;
import com.mobsandgeeks.saripaar.adapter.RadioGroupBooleanAdapter;
import com.mobsandgeeks.saripaar.adapter.SpinnerIndexAdapter;
import com.mobsandgeeks.saripaar.adapter.ViewDataAdapter;
import com.mobsandgeeks.saripaar.annotation.AssertFalse;
import com.mobsandgeeks.saripaar.annotation.AssertTrue;
import com.mobsandgeeks.saripaar.annotation.Checked;
import com.mobsandgeeks.saripaar.annotation.ConfirmEmail;
import com.mobsandgeeks.saripaar.annotation.ConfirmPassword;
import com.mobsandgeeks.saripaar.annotation.CreditCard;
import com.mobsandgeeks.saripaar.annotation.DecimalMax;
import com.mobsandgeeks.saripaar.annotation.DecimalMin;
import com.mobsandgeeks.saripaar.annotation.Digits;
import com.mobsandgeeks.saripaar.annotation.Domain;
import com.mobsandgeeks.saripaar.annotation.Email;
import com.mobsandgeeks.saripaar.annotation.Future;
import com.mobsandgeeks.saripaar.annotation.IpAddress;
import com.mobsandgeeks.saripaar.annotation.Isbn;
import com.mobsandgeeks.saripaar.annotation.Length;
import com.mobsandgeeks.saripaar.annotation.Max;
import com.mobsandgeeks.saripaar.annotation.Min;
import com.mobsandgeeks.saripaar.annotation.NotEmpty;
import com.mobsandgeeks.saripaar.annotation.Order;
import com.mobsandgeeks.saripaar.annotation.Password;
import com.mobsandgeeks.saripaar.annotation.Past;
import com.mobsandgeeks.saripaar.annotation.Pattern;
import com.mobsandgeeks.saripaar.annotation.Select;
import com.mobsandgeeks.saripaar.annotation.Url;
import com.mobsandgeeks.saripaar.annotation.ValidateUsing;
import com.mobsandgeeks.saripaar.exception.ConversionException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3.dex */
public class Validator {
    private static final Registry SARIPAAR_REGISTRY = new Registry();
    private AsyncValidationTask mAsyncValidationTask;
    private Object mController;
    private boolean mOrderedFields;
    private final Map<Class<? extends View>, HashMap<Class<?>, ViewDataAdapter>> mRegisteredAdaptersMap = new HashMap();
    private SequenceComparator mSequenceComparator;
    private ValidationContext mValidationContext;
    private ValidationListener mValidationListener;
    private Mode mValidationMode;
    private Map<View, ArrayList<Pair<Rule, ViewDataAdapter>>> mViewRulesMap;
    private ViewValidatedAction mViewValidatedAction;
    private Handler mViewValidatedActionHandler;

    /* loaded from: classes3.dex */
    public enum Mode {
        BURST,
        IMMEDIATE
    }

    /* loaded from: classes3.dex */
    public interface ValidationListener {
        void onValidationFailed(List<ValidationError> list);

        void onValidationSucceeded();
    }

    /* loaded from: classes3.dex */
    public interface ViewValidatedAction {
        void onAllRulesPassed(View view);
    }

    static {
        SARIPAAR_REGISTRY.register(CheckBox.class, Boolean.class, new CheckBoxBooleanAdapter(), AssertFalse.class, AssertTrue.class, Checked.class);
        SARIPAAR_REGISTRY.register(RadioGroup.class, Boolean.class, new RadioGroupBooleanAdapter(), Checked.class);
        SARIPAAR_REGISTRY.register(RadioButton.class, Boolean.class, new RadioButtonBooleanAdapter(), AssertFalse.class, AssertTrue.class, Checked.class);
        SARIPAAR_REGISTRY.register(Spinner.class, Integer.class, new SpinnerIndexAdapter(), Select.class);
        SARIPAAR_REGISTRY.register(DecimalMax.class, DecimalMin.class);
        SARIPAAR_REGISTRY.register(Max.class, Min.class);
        SARIPAAR_REGISTRY.register(ConfirmEmail.class, ConfirmPassword.class, CreditCard.class, Digits.class, Domain.class, Email.class, Future.class, IpAddress.class, Isbn.class, Length.class, NotEmpty.class, Password.class, Past.class, Pattern.class, Url.class);
    }

    public Validator(Object obj) {
        assertNotNull(obj, "controller");
        this.mController = obj;
        this.mValidationMode = Mode.BURST;
        this.mSequenceComparator = new SequenceComparator();
        this.mViewValidatedAction = new DefaultViewValidatedAction();
        if (obj instanceof Activity) {
            this.mValidationContext = new ValidationContext((Activity) obj);
        } else if (Build.VERSION.SDK_INT >= 11 && (obj instanceof Fragment)) {
            this.mValidationContext = new ValidationContext(((Fragment) obj).getActivity());
        }
    }

    public static void registerAnnotation(Class<? extends Annotation> cls) {
        SARIPAAR_REGISTRY.register(cls);
    }

    public static <VIEW extends View> void registerAnnotation(Class<? extends Annotation> cls, Class<VIEW> cls2, ViewDataAdapter<VIEW, ?> viewDataAdapter) {
        SARIPAAR_REGISTRY.register(cls2, Reflector.getRuleDataType((ValidateUsing) cls.getAnnotation(ValidateUsing.class)), viewDataAdapter, cls);
    }

    public <VIEW extends View, DATA_TYPE> void registerAdapter(Class<VIEW> cls, ViewDataAdapter<VIEW, DATA_TYPE> viewDataAdapter) {
        assertNotNull(cls, AudienceNetworkActivity.VIEW_TYPE);
        assertNotNull(viewDataAdapter, "viewDataAdapter");
        HashMap<Class<?>, ViewDataAdapter> hashMap = this.mRegisteredAdaptersMap.get(cls);
        if (hashMap == null) {
            hashMap = new HashMap<>();
            this.mRegisteredAdaptersMap.put(cls, hashMap);
        }
        hashMap.put(Reflector.findGetDataMethod(viewDataAdapter.getClass()).getReturnType(), viewDataAdapter);
    }

    public void setValidationListener(ValidationListener validationListener) {
        assertNotNull(validationListener, "validationListener");
        this.mValidationListener = validationListener;
    }

    public void setViewValidatedAction(ViewValidatedAction viewValidatedAction) {
        this.mViewValidatedAction = viewValidatedAction;
    }

    public void setValidationMode(Mode mode) {
        assertNotNull(mode, "validationMode");
        this.mValidationMode = mode;
    }

    public Mode getValidationMode() {
        return this.mValidationMode;
    }

    public void validate() {
        validate(false);
    }

    public void validateBefore(View view) {
        validateBefore(view, false);
    }

    public void validateTill(View view) {
        validateTill(view, false);
    }

    public void validate(boolean z) {
        createRulesSafelyAndLazily(false);
        View lastView = getLastView();
        if (Mode.BURST.equals(this.mValidationMode)) {
            validateUnorderedFieldsWithCallbackTill(lastView, z);
        } else if (Mode.IMMEDIATE.equals(this.mValidationMode)) {
            validateOrderedFieldsWithCallbackTill(lastView, String.format("in %s mode.", Mode.IMMEDIATE.toString()), z);
        } else {
            throw new RuntimeException("This should never happen!");
        }
    }

    public void validateBefore(View view, boolean z) {
        createRulesSafelyAndLazily(false);
        validateOrderedFieldsWithCallbackTill(getViewBefore(view), "when using 'validateBefore(View)'.", z);
    }

    public void validateTill(View view, boolean z) {
        validateOrderedFieldsWithCallbackTill(view, "when using 'validateTill(View)'.", z);
    }

    public boolean isValidating() {
        return (this.mAsyncValidationTask == null || this.mAsyncValidationTask.getStatus() == AsyncTask.Status.FINISHED) ? false : true;
    }

    public boolean cancelAsync() {
        if (this.mAsyncValidationTask == null) {
            return false;
        }
        boolean cancel = this.mAsyncValidationTask.cancel(true);
        this.mAsyncValidationTask = null;
        return cancel;
    }

    public <VIEW extends View> void put(VIEW view, QuickRule<VIEW>... quickRuleArr) {
        assertNotNull(view, Promotion.ACTION_VIEW);
        assertNotNull(quickRuleArr, "quickRules");
        if (quickRuleArr.length == 0) {
            throw new IllegalArgumentException("'quickRules' cannot be empty.");
        }
        if (this.mValidationContext == null) {
            this.mValidationContext = new ValidationContext(view.getContext());
        }
        createRulesSafelyAndLazily(true);
        if (this.mOrderedFields && !this.mViewRulesMap.containsKey(view)) {
            throw new IllegalStateException(String.format("All fields are ordered, so this `%s` should be ordered too, declare the view as a field and add the `@Order` annotation.", view.getClass().getName()));
        }
        ArrayList<Pair<Rule, ViewDataAdapter>> arrayList = this.mViewRulesMap.get(view);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        for (QuickRule<VIEW> quickRule : quickRuleArr) {
            if (quickRule != null) {
                arrayList.add(new Pair<>(quickRule, null));
            }
        }
        Collections.sort(arrayList, this.mSequenceComparator);
        this.mViewRulesMap.put(view, arrayList);
    }

    public void removeRules(View view) {
        assertNotNull(view, Promotion.ACTION_VIEW);
        if (this.mViewRulesMap == null) {
            createRulesSafelyAndLazily(false);
        }
        this.mViewRulesMap.remove(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isSaripaarAnnotation(Class<? extends Annotation> cls) {
        return SARIPAAR_REGISTRY.getRegisteredAnnotations().contains(cls);
    }

    private static void assertNotNull(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(String.format("'%s' cannot be null.", str));
        }
    }

    private void createRulesSafelyAndLazily(boolean z) {
        if (this.mViewRulesMap == null) {
            this.mViewRulesMap = createRules(getSaripaarAnnotatedFields(this.mController.getClass()));
            this.mValidationContext.setViewRulesMap(this.mViewRulesMap);
        }
        if (!z && this.mViewRulesMap.size() == 0) {
            throw new IllegalStateException("No rules found. You must have at least one rule to validate. If you are using custom annotations, make sure that you have registered them using the 'Validator.register()' method.");
        }
    }

    private List<Field> getSaripaarAnnotatedFields(Class<?> cls) {
        boolean z;
        Set<Class<? extends Annotation>> registeredAnnotations = SARIPAAR_REGISTRY.getRegisteredAnnotations();
        ArrayList arrayList = new ArrayList();
        for (Field field : getControllerViewFields(cls)) {
            if (isSaripaarAnnotatedField(field, registeredAnnotations)) {
                arrayList.add(field);
            }
        }
        SaripaarFieldsComparator saripaarFieldsComparator = new SaripaarFieldsComparator();
        Collections.sort(arrayList, saripaarFieldsComparator);
        if (arrayList.size() == 1) {
            z = ((Field) arrayList.get(0)).getAnnotation(Order.class) != null;
        } else {
            z = arrayList.size() != 0 && saripaarFieldsComparator.areOrderedFields();
        }
        this.mOrderedFields = z;
        return arrayList;
    }

    private List<Field> getControllerViewFields(Class<?> cls) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(getViewFields(cls));
        for (Class<? super Object> superclass = cls.getSuperclass(); !superclass.equals(Object.class); superclass = superclass.getSuperclass()) {
            List<Field> viewFields = getViewFields(superclass);
            if (viewFields.size() > 0) {
                arrayList.addAll(viewFields);
            }
        }
        return arrayList;
    }

    private List<Field> getViewFields(Class<?> cls) {
        Field[] declaredFields;
        ArrayList arrayList = new ArrayList();
        for (Field field : cls.getDeclaredFields()) {
            if (View.class.isAssignableFrom(field.getType())) {
                arrayList.add(field);
            }
        }
        return arrayList;
    }

    private boolean isSaripaarAnnotatedField(Field field, Set<Class<? extends Annotation>> set) {
        boolean z;
        boolean z2 = field.getAnnotation(Order.class) != null;
        if (!z2) {
            z = false;
            for (Annotation annotation : field.getAnnotations()) {
                z = set.contains(annotation.annotationType());
                if (z) {
                    break;
                }
            }
        } else {
            z = false;
        }
        return z2 || z;
    }

    private Map<View, ArrayList<Pair<Rule, ViewDataAdapter>>> createRules(List<Field> list) {
        Annotation[] annotations;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Field field : list) {
            ArrayList arrayList = new ArrayList();
            for (Annotation annotation : field.getAnnotations()) {
                if (isSaripaarAnnotation(annotation.annotationType())) {
                    arrayList.add(getRuleAdapterPair(annotation, field));
                }
            }
            Collections.sort(arrayList, this.mSequenceComparator);
            linkedHashMap.put(getView(field), arrayList);
        }
        return linkedHashMap;
    }

    private Pair<Rule, ViewDataAdapter> getRuleAdapterPair(Annotation annotation, Field field) {
        Class<? extends Annotation> annotationType = annotation.annotationType();
        Class<?> type = field.getType();
        Class<?> ruleDataType = Reflector.getRuleDataType(annotation);
        ViewDataAdapter dataAdapter = getDataAdapter(annotationType, type, ruleDataType);
        if (dataAdapter == null) {
            String name = type.getName();
            throw new UnsupportedOperationException(String.format("To use '%s' on '%s', register a '%s' that returns a '%s' from the '%s'.", annotationType.getName(), name, ViewDataAdapter.class.getName(), ruleDataType.getName(), name));
        }
        if (this.mValidationContext == null) {
            this.mValidationContext = new ValidationContext(getContext(field));
        }
        return new Pair<>(Reflector.instantiateRule(getRuleType(annotation), annotation, this.mValidationContext), dataAdapter);
    }

    private ViewDataAdapter getDataAdapter(Class<? extends Annotation> cls, Class<?> cls2, Class<?> cls3) {
        ViewDataAdapter dataAdapter = SARIPAAR_REGISTRY.getDataAdapter(cls, cls2);
        if (dataAdapter == null) {
            HashMap<Class<?>, ViewDataAdapter> hashMap = this.mRegisteredAdaptersMap.get(cls2);
            if (hashMap != null) {
                return hashMap.get(cls3);
            }
            return null;
        }
        return dataAdapter;
    }

    private Context getContext(Field field) {
        try {
            if (!field.isAccessible()) {
                field.setAccessible(true);
            }
            return ((View) field.get(this.mController)).getContext();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return null;
        }
    }

    private Class<? extends AnnotationRule> getRuleType(Annotation annotation) {
        ValidateUsing validateUsing = (ValidateUsing) annotation.annotationType().getAnnotation(ValidateUsing.class);
        if (validateUsing != null) {
            return validateUsing.value();
        }
        return null;
    }

    private View getView(Field field) {
        View view;
        IllegalArgumentException e;
        IllegalAccessException e2;
        try {
            field.setAccessible(true);
            view = (View) field.get(this.mController);
            if (view == null) {
                try {
                    throw new IllegalStateException(String.format("'%s %s' is null.", field.getType().getSimpleName(), field.getName()));
                } catch (IllegalAccessException e3) {
                    e2 = e3;
                    e2.printStackTrace();
                    return view;
                } catch (IllegalArgumentException e4) {
                    e = e4;
                    e.printStackTrace();
                    return view;
                }
            }
        } catch (IllegalAccessException e5) {
            view = null;
            e2 = e5;
        } catch (IllegalArgumentException e6) {
            view = null;
            e = e6;
        }
        return view;
    }

    private void validateUnorderedFieldsWithCallbackTill(View view, boolean z) {
        validateFieldsWithCallbackTill(view, false, null, z);
    }

    private void validateOrderedFieldsWithCallbackTill(View view, String str, boolean z) {
        validateFieldsWithCallbackTill(view, true, str, z);
    }

    private void validateFieldsWithCallbackTill(View view, boolean z, String str, boolean z2) {
        createRulesSafelyAndLazily(false);
        if (z2) {
            if (this.mAsyncValidationTask != null) {
                this.mAsyncValidationTask.cancel(true);
            }
            this.mAsyncValidationTask = new AsyncValidationTask(view, z, str);
            this.mAsyncValidationTask.execute((Object[]) null);
            return;
        }
        triggerValidationListenerCallback(validateTill(view, z, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized ValidationReport validateTill(View view, boolean z, String str) {
        if (z) {
            assertOrderedFields(this.mOrderedFields, str);
        }
        assertNotNull(this.mValidationListener, "validationListener");
        return getValidationReport(view, this.mViewRulesMap, this.mValidationMode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void triggerValidationListenerCallback(ValidationReport validationReport) {
        List<ValidationError> list = validationReport.errors;
        if (list.size() == 0 && !validationReport.hasMoreErrors) {
            this.mValidationListener.onValidationSucceeded();
        } else {
            this.mValidationListener.onValidationFailed(list);
        }
    }

    private void assertOrderedFields(boolean z, String str) {
        if (!z) {
            throw new IllegalStateException("Rules are unordered, all view fields should be ordered using the '@Order' annotation " + str);
        }
    }

    private ValidationReport getValidationReport(View view, Map<View, ArrayList<Pair<Rule, ViewDataAdapter>>> map, Mode mode) {
        boolean z;
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList();
        Set<View> keySet = map.keySet();
        boolean z2 = view != null;
        Iterator<View> it = keySet.iterator();
        boolean z3 = false;
        boolean z4 = z2;
        loop0: while (true) {
            if (!it.hasNext()) {
                z = z3;
                break;
            }
            View next = it.next();
            ArrayList<Pair<Rule, ViewDataAdapter>> arrayList3 = map.get(next);
            int size = arrayList3.size();
            ArrayList arrayList4 = null;
            int i = 0;
            boolean z5 = z4;
            z = z3;
            while (i < size) {
                if (!next.isShown() || !next.isEnabled()) {
                    arrayList = arrayList4;
                } else {
                    Pair<Rule, ViewDataAdapter> pair = arrayList3.get(i);
                    Rule validateViewWithRule = validateViewWithRule(next, (Rule) pair.first, (ViewDataAdapter) pair.second);
                    boolean z6 = size == i + 1;
                    if (validateViewWithRule != null) {
                        if (z5) {
                            if (arrayList4 == null) {
                                arrayList = new ArrayList();
                                arrayList2.add(new ValidationError(next, arrayList));
                            } else {
                                arrayList = arrayList4;
                            }
                            arrayList.add(validateViewWithRule);
                        } else {
                            z = true;
                            arrayList = arrayList4;
                        }
                        if (Mode.IMMEDIATE.equals(mode) && z6) {
                            break loop0;
                        }
                    } else {
                        arrayList = arrayList4;
                    }
                    if (next.equals(view) && z6) {
                        z5 = false;
                    }
                }
                i++;
                arrayList4 = arrayList;
            }
            if (((arrayList4 == null || arrayList4.size() == 0) && !z) && this.mViewValidatedAction != null) {
                triggerViewValidatedCallback(this.mViewValidatedAction, next);
            }
            z3 = z;
            z4 = z5;
        }
        return new ValidationReport(arrayList2, z);
    }

    private Rule validateViewWithRule(View view, Rule rule, ViewDataAdapter viewDataAdapter) {
        boolean z = false;
        if (rule instanceof AnnotationRule) {
            try {
                z = rule.isValid(viewDataAdapter.getData(view));
            } catch (ConversionException e) {
                e.printStackTrace();
            }
        } else if (rule instanceof QuickRule) {
            z = rule.isValid(view);
        }
        if (z) {
            return null;
        }
        return rule;
    }

    private void triggerViewValidatedCallback(final ViewValidatedAction viewValidatedAction, final View view) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            viewValidatedAction.onAllRulesPassed(view);
        } else {
            runOnMainThread(new Runnable() { // from class: com.mobsandgeeks.saripaar.Validator.1
                @Override // java.lang.Runnable
                public void run() {
                    viewValidatedAction.onAllRulesPassed(view);
                }
            });
        }
    }

    private void runOnMainThread(Runnable runnable) {
        if (this.mViewValidatedActionHandler == null) {
            this.mViewValidatedActionHandler = new Handler(Looper.getMainLooper());
        }
        this.mViewValidatedActionHandler.post(runnable);
    }

    private View getLastView() {
        View view = null;
        Iterator<View> it = this.mViewRulesMap.keySet().iterator();
        while (it.hasNext()) {
            view = it.next();
        }
        return view;
    }

    private View getViewBefore(View view) {
        ArrayList arrayList = new ArrayList(this.mViewRulesMap.keySet());
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (((View) arrayList.get(i)) == view) {
                if (i > 0) {
                    return (View) arrayList.get(i - 1);
                } else {
                    return null;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class ValidationReport {
        List<ValidationError> errors;
        boolean hasMoreErrors;

        ValidationReport(List<ValidationError> list, boolean z) {
            this.errors = list;
            this.hasMoreErrors = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class AsyncValidationTask extends AsyncTask<Void, Void, ValidationReport> {
        private boolean mOrderedRules;
        private String mReasonSuffix;
        private View mView;

        public AsyncValidationTask(View view, boolean z, String str) {
            this.mView = view;
            this.mOrderedRules = z;
            this.mReasonSuffix = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public ValidationReport doInBackground(Void... voidArr) {
            return Validator.this.validateTill(this.mView, this.mOrderedRules, this.mReasonSuffix);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(ValidationReport validationReport) {
            Validator.this.triggerValidationListenerCallback(validationReport);
        }
    }
}

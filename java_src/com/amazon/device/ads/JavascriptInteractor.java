package com.amazon.device.ads;

import android.webkit.JavascriptInterface;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class JavascriptInteractor {
    private static String executorMethodName;
    private static final String LOGTAG = JavascriptInteractor.class.getSimpleName();
    private static final MobileAdsLogger logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);
    private final Map<String, JavascriptMethodExecutor> methodMap = new ConcurrentHashMap();
    private final Executor executor = new Executor(this);

    public static String getExecutorMethodName() {
        if (executorMethodName == null) {
            Method[] declaredMethods = Executor.class.getDeclaredMethods();
            if (declaredMethods != null && declaredMethods.length == 1) {
                executorMethodName = declaredMethods[0].getName();
            } else {
                logger.e("Could not obtain the method name for javascript interfacing.");
            }
        }
        return executorMethodName;
    }

    public void addMethodExecutor(JavascriptMethodExecutor javascriptMethodExecutor) {
        if (this.methodMap.containsKey(javascriptMethodExecutor.getMethodName())) {
            throw new IllegalArgumentException("There is another executor with that method name already added.");
        }
        this.methodMap.put(javascriptMethodExecutor.getMethodName(), javascriptMethodExecutor);
    }

    public Executor getExecutor() {
        return this.executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject execute(String str, String str2) {
        JSONObject jSONObject;
        if (str2 == null || str2.length() <= 2) {
            jSONObject = null;
        } else {
            jSONObject = JSONUtils.getJSONObjectFromString(str2);
            if (jSONObject == null) {
                logger.w("The javascript object \"%s\" could not be parsed for method \"%s\".", str2, str);
                return null;
            }
        }
        return execute(str, jSONObject);
    }

    private JSONObject execute(String str, JSONObject jSONObject) {
        if (this.methodMap.containsKey(str)) {
            return this.methodMap.get(str).execute(jSONObject);
        }
        logger.w("The method %s was not recongized by this javascript interface.", str);
        return null;
    }

    /* loaded from: classes.dex */
    public static class Executor {
        private final JavascriptInteractor interactor;
        private boolean proguardKeeper = false;

        public Executor(JavascriptInteractor javascriptInteractor) {
            this.interactor = javascriptInteractor;
            if (this.proguardKeeper) {
                execute(null, null);
            }
        }

        @JavascriptInterface
        public String execute(String str, String str2) {
            JSONObject execute = this.interactor.execute(str, str2);
            if (execute == null) {
                return null;
            }
            return execute.toString();
        }
    }

    /* loaded from: classes.dex */
    public static abstract class JavascriptMethodExecutor {
        private final String methodName;

        protected abstract JSONObject execute(JSONObject jSONObject);

        /* JADX INFO: Access modifiers changed from: protected */
        public JavascriptMethodExecutor(String str) {
            this.methodName = str;
        }

        public String getMethodName() {
            return this.methodName;
        }
    }
}

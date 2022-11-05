package com.moat.analytics.mobile.aol;

import android.util.Log;
import com.moat.analytics.mobile.aol.OnOffSwitch;
import com.moat.analytics.mobile.aol.base.asserts.Asserts;
import com.moat.analytics.mobile.aol.base.exception.Exceptions;
import com.moat.analytics.mobile.aol.base.exception.MoatException;
import com.moat.analytics.mobile.aol.base.functional.Optional;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class OnOffTrackerProxy<T> implements InvocationHandler {
    private static final int MAX_EARLY_INVOCATION_QUEUE_SIZE = 5;
    private static final int MAX_LATE_INVOCATION_QUEUE_SIZE = 10;
    private static final String TAG = "OnOffTrackerProxy";
    private static final Object[] empty = new Object[0];
    private final LinkedList<OnOffTrackerProxy<T>.Invocation> earlyInvocations;
    private T instance;
    private final Instantiator<T> instantiator;
    private final LinkedList<OnOffTrackerProxy<T>.Invocation> lateInvocations;
    private final OnOffSwitch onOffSwitch;
    private final Postponer<T> postponer;
    private boolean triedToInstantiate;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface Instantiator<T> {
        Optional<T> create() throws MoatException;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface Postponer<T> {
        Class<T> getMethodsOwner() throws MoatException;

        boolean isQueueable(Method method) throws MoatException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class Invocation {
        private final WeakReference[] args;
        private final Method method;
        private final LinkedList<Object> strongArgs;
        final /* synthetic */ OnOffTrackerProxy this$0;

        private Invocation(OnOffTrackerProxy onOffTrackerProxy, Method method, Object... objArr) {
            int i = 0;
            this.this$0 = onOffTrackerProxy;
            this.strongArgs = new LinkedList<>();
            objArr = objArr == null ? OnOffTrackerProxy.empty : objArr;
            WeakReference[] weakReferenceArr = new WeakReference[objArr.length];
            int length = objArr.length;
            int i2 = 0;
            while (i < length) {
                Object obj = objArr[i];
                if ((obj instanceof Map) || (obj instanceof Integer)) {
                    this.strongArgs.add(obj);
                }
                weakReferenceArr[i2] = new WeakReference(obj);
                i++;
                i2++;
            }
            this.args = weakReferenceArr;
            this.method = method;
        }
    }

    OnOffTrackerProxy(OnOffSwitch onOffSwitch, Instantiator<T> instantiator, Postponer<T> postponer) throws MoatException {
        Asserts.checkNotNull(onOffSwitch);
        Asserts.checkNotNull(instantiator);
        Asserts.checkNotNull(postponer);
        this.onOffSwitch = onOffSwitch;
        this.instantiator = instantiator;
        this.postponer = postponer;
        if (BuildConfig.DEBUG.booleanValue()) {
            assertClassIsProxyable(postponer);
        }
        onOffSwitch.register(new OnOffSwitch.MoatOnOrOffListener() { // from class: com.moat.analytics.mobile.aol.OnOffTrackerProxy.1
            private long timeRegistered = System.currentTimeMillis();

            @Override // com.moat.analytics.mobile.aol.OnOffSwitch.MoatOnOrOffListener
            public void onMoatOn() throws MoatException {
                OnOffTrackerProxy.this.runInvocations();
            }

            @Override // com.moat.analytics.mobile.aol.OnOffSwitch.MoatOnOrOffListener
            public void onMoatOff() throws MoatException {
            }

            @Override // com.moat.analytics.mobile.aol.OnOffSwitch.MoatOnOrOffListener
            public boolean wasTriggered() {
                return OnOffTrackerProxy.this.triedToInstantiate;
            }

            @Override // com.moat.analytics.mobile.aol.OnOffSwitch.MoatOnOrOffListener
            public long getTimeRegistered() {
                return this.timeRegistered;
            }
        });
        this.earlyInvocations = new LinkedList<>();
        this.lateInvocations = new LinkedList<>();
    }

    private void assertClassIsProxyable(Postponer<T> postponer) throws MoatException {
        Method[] methods;
        for (Method method : postponer.getMethodsOwner().getMethods()) {
            if (!Object.class.equals(method.getDeclaringClass())) {
                Class<?> returnType = method.getReturnType();
                if (!Void.TYPE.equals(returnType) && !Boolean.TYPE.equals(returnType)) {
                    if (!postponer.isQueueable(method)) {
                        throw new RuntimeException("Cannot proxy a tracker with nonpostponable method: " + method);
                    }
                    throw new RuntimeException("Cannot proxy a tracker with non-void, non-boolean return types.");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T create(OnOffSwitch onOffSwitch, Instantiator<T> instantiator, Postponer<T> postponer) throws MoatException {
        Class<T> methodsOwner = postponer.getMethodsOwner();
        return (T) Proxy.newProxyInstance(methodsOwner.getClassLoader(), new Class[]{methodsOwner}, new OnOffTrackerProxy(onOffSwitch, instantiator, postponer));
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        try {
            return invokeUnsafe(method, objArr);
        } catch (Exception e) {
            Exceptions.handleException(e);
            return getDummyValue(method);
        }
    }

    private Object invokeUnsafe(Method method, Object[] objArr) throws MoatException, IllegalAccessException, InvocationTargetException {
        if (Object.class.equals(method.getDeclaringClass())) {
            String name = method.getName();
            Class<T> methodsOwner = this.postponer.getMethodsOwner();
            if (!"getClass".equals(name)) {
                if ("toString".equals(name)) {
                    Object invoke = method.invoke(this, objArr);
                    return (invoke + "").replace(OnOffTrackerProxy.class.getName(), methodsOwner.getName());
                }
                return method.invoke(this, objArr);
            }
            return methodsOwner;
        } else if (this.triedToInstantiate && this.instance == null) {
            clearInvocationQueue();
            return getDummyValue(method);
        } else {
            if (this.onOffSwitch.getStatus() == OnOffSwitch.OnOrOff.ON) {
                runInvocations();
                if (this.instance != null) {
                    return method.invoke(this.instance, objArr);
                }
            }
            if (this.onOffSwitch.getStatus() == OnOffSwitch.OnOrOff.OFF && (!this.triedToInstantiate || this.instance != null)) {
                enqueueInvocation(method, objArr);
            }
            return getDummyValue(method);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runInvocations() throws MoatException {
        if (!this.triedToInstantiate) {
            try {
                this.instance = this.instantiator.create().orElse(null);
            } catch (Exception e) {
                if (BuildConfig.DEBUG.booleanValue()) {
                    Log.e(TAG, "Could not create instance", e);
                }
            }
            this.triedToInstantiate = true;
        }
        if (this.instance != null) {
            LinkedList<LinkedList> linkedList = new LinkedList();
            linkedList.add(this.earlyInvocations);
            linkedList.add(this.lateInvocations);
            for (LinkedList linkedList2 : linkedList) {
                Iterator it = linkedList2.iterator();
                while (it.hasNext()) {
                    Invocation invocation = (Invocation) it.next();
                    try {
                        Object[] objArr = new Object[invocation.args.length];
                        WeakReference[] weakReferenceArr = invocation.args;
                        int length = weakReferenceArr.length;
                        int i = 0;
                        int i2 = 0;
                        while (i < length) {
                            objArr[i2] = weakReferenceArr[i].get();
                            i++;
                            i2++;
                        }
                        invocation.method.invoke(this.instance, objArr);
                    } catch (Exception e2) {
                        e = e2;
                        if (BuildConfig.DEBUG.booleanValue()) {
                            Throwable cause = e.getCause();
                            if (cause != null) {
                                e = cause;
                            }
                            Log.e(TAG, "Could not resurrect call to " + invocation.method + ": " + Log.getStackTraceString(e));
                        }
                    }
                }
                linkedList2.clear();
            }
        }
    }

    private void enqueueInvocation(Method method, Object[] objArr) throws MoatException {
        if (this.earlyInvocations.size() < 5) {
            this.earlyInvocations.add(new Invocation(method, objArr));
            return;
        }
        if (this.lateInvocations.size() >= 10) {
            this.lateInvocations.removeFirst();
        }
        this.lateInvocations.add(new Invocation(method, objArr));
    }

    private void clearInvocationQueue() {
        this.earlyInvocations.clear();
        this.lateInvocations.clear();
    }

    private Object getDummyValue(Method method) throws MoatException {
        if (BuildConfig.DEBUG.booleanValue() && !this.postponer.isQueueable(method)) {
            throw new RuntimeException("Cannot queue method call: " + method);
        }
        try {
            if (Boolean.TYPE.equals(method.getReturnType())) {
                return true;
            }
        } catch (Exception e) {
            Exceptions.handleException(e);
        }
        return null;
    }
}

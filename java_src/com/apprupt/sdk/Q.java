package com.apprupt.sdk;

import android.os.Handler;
import android.os.Looper;
import com.apprupt.sdk.Logger;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public class Q {

    /* renamed from: a  reason: collision with root package name */
    private static int f1956a = 0;
    private final Logger.log b;
    private final ArrayList<Promise> c;
    private final ArrayList<CompletionHandler> d;
    private final ArrayList<FailureHandler> e;
    private final ArrayList<SuccessHandler> f;
    private final Handler g;
    private Object h;
    private Throwable i;
    private volatile boolean j;
    private final Completion k;

    /* loaded from: classes.dex */
    public interface Completion {
        void a(Promise promise);
    }

    /* loaded from: classes.dex */
    public interface CompletionHandler {
        void a(Throwable th, Object obj);
    }

    /* loaded from: classes.dex */
    public interface FailureHandler {
        void a(Throwable th, Object obj);
    }

    /* loaded from: classes.dex */
    public interface Promise {
        Throwable a();

        void a(Object obj, Completion completion);

        boolean b();

        Object c();
    }

    /* loaded from: classes.dex */
    public interface Resolver {
        void a(Object obj);

        void a(Throwable th);

        void a(Throwable th, Object obj);
    }

    /* loaded from: classes.dex */
    public interface SuccessHandler {
        void a(Object obj);
    }

    /* loaded from: classes.dex */
    public interface Task {
        void a(Object obj, Resolver resolver) throws Exception;
    }

    /* loaded from: classes.dex */
    private class BaseResolver implements Resolver {
        private final BasePromise b;
        private final Completion c;

        private BaseResolver(BasePromise basePromise, Completion completion) {
            this.b = basePromise;
            this.c = completion;
        }

        @Override // com.apprupt.sdk.Q.Resolver
        public void a(Object obj) {
            this.b.a(null, obj, this.c);
        }

        @Override // com.apprupt.sdk.Q.Resolver
        public void a(Throwable th) {
            a(th, null);
        }

        @Override // com.apprupt.sdk.Q.Resolver
        public void a(Throwable th, Object obj) {
            if (th == null) {
                th = new Exception("Unknown error!");
            }
            this.b.a(th, obj, this.c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class BasePromise implements Promise {
        private final Task b;
        private Throwable c;
        private Object d;

        private BasePromise(Task task) {
            this.c = null;
            this.d = null;
            this.b = task;
        }

        @Override // com.apprupt.sdk.Q.Promise
        public Throwable a() {
            return this.c;
        }

        @Override // com.apprupt.sdk.Q.Promise
        public boolean b() {
            return this.c != null;
        }

        @Override // com.apprupt.sdk.Q.Promise
        public Object c() {
            return this.d;
        }

        public void a(Throwable th, Object obj, Completion completion) {
            Object obj2;
            Logger.log logVar = Q.this.b;
            Object[] objArr = new Object[3];
            objArr[0] = "Promise resolve";
            objArr[1] = th == null ? "[OK]" : "[E]";
            objArr[2] = obj;
            logVar.a(th, objArr);
            if (th != null) {
                this.c = th;
            } else {
                if (obj != null) {
                    obj2 = obj instanceof Task ? new BasePromise((Task) obj) : obj;
                    if (obj2 instanceof Promise) {
                        ((Promise) obj2).a(this.d, completion);
                        return;
                    }
                } else {
                    obj2 = obj;
                }
                this.d = obj2;
            }
            completion.a(this);
        }

        @Override // com.apprupt.sdk.Q.Promise
        public void a(Object obj, Completion completion) {
            BaseResolver baseResolver = new BaseResolver(this, completion);
            try {
                this.b.a(obj, baseResolver);
            } catch (Exception e) {
                baseResolver.a((Throwable) e);
            }
        }
    }

    public static Q a(Task task) {
        return new Q(task);
    }

    public static Q a(Object obj) {
        return new Q().b(obj);
    }

    private void a(Runnable runnable) {
        a(runnable, (String) null);
    }

    private void a(final Runnable runnable, final String str) {
        if (str != null) {
            runnable = new Runnable() { // from class: com.apprupt.sdk.Q.2
                @Override // java.lang.Runnable
                public void run() {
                    if (Q.this.j) {
                        throw new InternalError(str);
                    }
                    runnable.run();
                }
            };
        }
        if (this.g.getLooper().equals(Looper.myLooper())) {
            runnable.run();
        } else {
            this.g.post(runnable);
        }
    }

    public Q() {
        this.c = new ArrayList<>();
        this.d = new ArrayList<>();
        this.e = new ArrayList<>();
        this.f = new ArrayList<>();
        this.h = null;
        this.i = null;
        this.j = false;
        this.k = new Completion() { // from class: com.apprupt.sdk.Q.1
            @Override // com.apprupt.sdk.Q.Completion
            public void a(final Promise promise) {
                Q.this.g.post(new Runnable() { // from class: com.apprupt.sdk.Q.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Q.this.b(promise);
                    }
                });
            }
        };
        StringBuilder append = new StringBuilder().append("Q.");
        int i = f1956a + 1;
        f1956a = i;
        this.b = Logger.a(append.append(i).toString());
        this.b.a("intializing queue...");
        this.g = new Handler();
        this.b.a("Creating initial task...");
        this.g.post(new Runnable() { // from class: com.apprupt.sdk.Q.3
            @Override // java.lang.Runnable
            public void run() {
                Q.this.b.a("Initial task start!");
                Q.this.b((Promise) null);
            }
        });
    }

    public Q(Task task) {
        this();
        a((Promise) new BasePromise(task));
    }

    public Q a(Promise promise) {
        this.b.a("new promise...");
        this.c.add(promise);
        return this;
    }

    public Q b(Task task) {
        return a((Promise) new BasePromise(task));
    }

    public Q b(final Object obj) {
        a(new Runnable() { // from class: com.apprupt.sdk.Q.4
            @Override // java.lang.Runnable
            public void run() {
                Q.this.h = obj;
            }
        }, "Cannot set initial value when task is done!");
        return this;
    }

    public Q a(final FailureHandler failureHandler) {
        this.b.a("new failure handler...");
        a(new Runnable() { // from class: com.apprupt.sdk.Q.5
            @Override // java.lang.Runnable
            public void run() {
                if (Q.this.j) {
                    failureHandler.a(Q.this.i, Q.this.h);
                } else {
                    Q.this.e.add(failureHandler);
                }
            }
        });
        return this;
    }

    public Q a(final SuccessHandler successHandler) {
        this.b.a("new success handler...");
        a(new Runnable() { // from class: com.apprupt.sdk.Q.6
            @Override // java.lang.Runnable
            public void run() {
                if (Q.this.j) {
                    successHandler.a(Q.this.h);
                } else {
                    Q.this.f.add(successHandler);
                }
            }
        });
        return this;
    }

    public Q a(final CompletionHandler completionHandler) {
        this.b.a("new completion handler...");
        a(new Runnable() { // from class: com.apprupt.sdk.Q.7
            @Override // java.lang.Runnable
            public void run() {
                if (Q.this.j) {
                    completionHandler.a(Q.this.i, Q.this.h);
                } else {
                    Q.this.d.add(completionHandler);
                }
            }
        });
        return this;
    }

    private void a() {
        this.b.a("tasks end, run final stuff");
        if (this.j) {
            throw new InternalError("Q tasks are over already!");
        }
        this.j = true;
        if (this.i == null) {
            Iterator<SuccessHandler> it = this.f.iterator();
            while (it.hasNext()) {
                it.next().a(this.h);
            }
        } else {
            Iterator<FailureHandler> it2 = this.e.iterator();
            while (it2.hasNext()) {
                it2.next().a(this.i, this.h);
            }
        }
        Iterator<CompletionHandler> it3 = this.d.iterator();
        while (it3.hasNext()) {
            it3.next().a(this.i, this.h);
        }
        this.f.clear();
        this.e.clear();
        this.d.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Promise promise) {
        this.b.a("next task...");
        if (promise != null) {
            this.h = promise.c();
            if (promise.b()) {
                this.i = promise.a();
                a();
                return;
            }
        }
        if (this.c.size() > 0) {
            this.c.remove(0).a(this.h, this.k);
        } else {
            a();
        }
    }
}

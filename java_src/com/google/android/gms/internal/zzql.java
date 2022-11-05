package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
@zzme
/* loaded from: classes.dex */
public class zzql {

    /* loaded from: classes2.dex */
    public interface zza<D, R> {
        R apply(D d);
    }

    public static <A, B> zzqm<B> zza(final zzqm<A> zzqmVar, final zza<A, B> zzaVar) {
        final zzqj zzqjVar = new zzqj();
        zzqmVar.zzc(new Runnable() { // from class: com.google.android.gms.internal.zzql.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    zzqj.this.zzh(zzaVar.apply(zzqmVar.get()));
                } catch (InterruptedException | CancellationException | ExecutionException e) {
                    zzqj.this.cancel(true);
                }
            }
        });
        return zzqjVar;
    }

    public static <T> T zza(Future<T> future, T t, int i, TimeUnit timeUnit) {
        try {
            return future.get(i, timeUnit);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            return t;
        } catch (Exception e2) {
            return t;
        }
    }

    public static <V> zzqm<List<V>> zzo(final List<zzqm<V>> list) {
        final zzqj zzqjVar = new zzqj();
        final int size = list.size();
        final AtomicInteger atomicInteger = new AtomicInteger(0);
        for (zzqm<V> zzqmVar : list) {
            zzqmVar.zzc(new Runnable() { // from class: com.google.android.gms.internal.zzql.2
                @Override // java.lang.Runnable
                public void run() {
                    if (atomicInteger.incrementAndGet() >= size) {
                        try {
                            zzqjVar.zzh(zzql.zzp(list));
                        } catch (InterruptedException | ExecutionException e) {
                            zzpk.zzc("Unable to convert list of futures to a future of list", e);
                        }
                    }
                }
            });
        }
        return zzqjVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <V> List<V> zzp(List<zzqm<V>> list) throws ExecutionException, InterruptedException {
        ArrayList arrayList = new ArrayList();
        for (zzqm<V> zzqmVar : list) {
            V v = zzqmVar.get();
            if (v != null) {
                arrayList.add(v);
            }
        }
        return arrayList;
    }
}

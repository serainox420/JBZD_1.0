package com.crashlytics.android.answers;

import io.fabric.sdk.android.services.concurrency.a.a;
import java.util.Random;
/* loaded from: classes.dex */
class RandomBackoff implements a {
    final a backoff;
    final double jitterPercent;
    final Random random;

    public RandomBackoff(a aVar, double d) {
        this(aVar, d, new Random());
    }

    public RandomBackoff(a aVar, double d, Random random) {
        if (d < 0.0d || d > 1.0d) {
            throw new IllegalArgumentException("jitterPercent must be between 0.0 and 1.0");
        }
        if (aVar == null) {
            throw new NullPointerException("backoff must not be null");
        }
        if (random == null) {
            throw new NullPointerException("random must not be null");
        }
        this.backoff = aVar;
        this.jitterPercent = d;
        this.random = random;
    }

    @Override // io.fabric.sdk.android.services.concurrency.a.a
    public long getDelayMillis(int i) {
        return (long) (randomJitter() * this.backoff.getDelayMillis(i));
    }

    double randomJitter() {
        double d = 1.0d - this.jitterPercent;
        return d + (((this.jitterPercent + 1.0d) - d) * this.random.nextDouble());
    }
}

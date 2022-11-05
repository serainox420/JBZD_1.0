package com.moat.analytics.mobile.aol.base.functional;

import java.util.NoSuchElementException;
/* loaded from: classes3.dex */
public final class Optional<T> {
    private static final Optional<?> EMPTY = new Optional<>();
    private final T value;

    private Optional() {
        this.value = null;
    }

    public static <T> Optional<T> empty() {
        return (Optional<T>) EMPTY;
    }

    private Optional(T t) {
        if (t == null) {
            throw new NullPointerException("Optional of null value.");
        }
        this.value = t;
    }

    public static <T> Optional<T> of(T t) {
        return new Optional<>(t);
    }

    public static <T> Optional<T> ofNullable(T t) {
        return t == null ? empty() : of(t);
    }

    public T get() {
        if (this.value == null) {
            throw new NoSuchElementException("No value present");
        }
        return this.value;
    }

    public boolean isPresent() {
        return this.value != null;
    }

    public T orElse(T t) {
        return this.value != null ? this.value : t;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Optional)) {
            return false;
        }
        Optional optional = (Optional) obj;
        if (this.value == optional.value) {
            return true;
        }
        if (this.value != null && optional.value != null) {
            return this.value.equals(optional.value);
        }
        return false;
    }

    public int hashCode() {
        if (this.value == null) {
            return 0;
        }
        return this.value.hashCode();
    }

    public String toString() {
        return this.value != null ? String.format("Optional[%s]", this.value) : "Optional.empty";
    }
}

package com.inmobi.commons.internal;
/* loaded from: classes2.dex */
public class CommonsException extends Exception {
    public static final int APPLICATION_NOT_SET = 1;
    public static final int PRODUCT_NOT_FOUND = 2;
    private static final long serialVersionUID = 3805362231723549913L;

    /* renamed from: a  reason: collision with root package name */
    private int f3795a;

    public CommonsException(int i) {
        this.f3795a = i;
    }

    public int getCode() {
        return this.f3795a;
    }

    @Override // java.lang.Throwable
    public String toString() {
        switch (this.f3795a) {
            case 1:
                return "Application not set/initialize not called.";
            case 2:
                return "Product not found.";
            default:
                return "Unknown.";
        }
    }
}

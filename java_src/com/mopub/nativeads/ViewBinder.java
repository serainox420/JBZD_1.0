package com.mopub.nativeads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class ViewBinder {

    /* renamed from: a  reason: collision with root package name */
    final int f4622a;
    final int b;
    final int c;
    final int d;
    final int e;
    final int f;
    final int g;
    final Map<String, Integer> h;

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private final int f4623a;
        private int b;
        private int c;
        private int d;
        private int e;
        private int f;
        private int g;
        private Map<String, Integer> h;

        public Builder(int i) {
            this.h = Collections.emptyMap();
            this.f4623a = i;
            this.h = new HashMap();
        }

        public final Builder titleId(int i) {
            this.b = i;
            return this;
        }

        public final Builder textId(int i) {
            this.c = i;
            return this;
        }

        public final Builder callToActionId(int i) {
            this.d = i;
            return this;
        }

        public final Builder mainImageId(int i) {
            this.e = i;
            return this;
        }

        public final Builder iconImageId(int i) {
            this.f = i;
            return this;
        }

        public final Builder privacyInformationIconImageId(int i) {
            this.g = i;
            return this;
        }

        public final Builder addExtras(Map<String, Integer> map) {
            this.h = new HashMap(map);
            return this;
        }

        public final Builder addExtra(String str, int i) {
            this.h.put(str, Integer.valueOf(i));
            return this;
        }

        public final ViewBinder build() {
            return new ViewBinder(this);
        }
    }

    private ViewBinder(Builder builder) {
        this.f4622a = builder.f4623a;
        this.b = builder.b;
        this.c = builder.c;
        this.d = builder.d;
        this.e = builder.e;
        this.f = builder.f;
        this.g = builder.g;
        this.h = builder.h;
    }
}

package com.smaato.soma.internal.requests.settings;

import com.smaato.soma.exception.UnknownGenderException;
import com.smaato.soma.exception.UnknownStringGenderValue;
/* loaded from: classes3.dex */
public class UserSettings {

    /* renamed from: a  reason: collision with root package name */
    protected Gender f5059a = Gender.UNSET;
    protected int b = 0;
    protected String c = "";
    protected String d = "";
    protected String e = "";
    protected String f = "";
    protected double g = 0.0d;
    protected double h = 0.0d;
    private boolean i = true;
    private boolean j = false;

    /* loaded from: classes3.dex */
    public enum Gender {
        UNSET,
        MALE,
        FEMALE;
        

        /* renamed from: a  reason: collision with root package name */
        private String f5060a;

        static {
            UNSET.f5060a = "";
            MALE.f5060a = "MALE";
            FEMALE.f5060a = "FEMALE";
        }

        public String getValue() {
            return this.f5060a;
        }

        public static String getStringForValue(Gender gender) throws UnknownGenderException {
            try {
                if (gender == UNSET) {
                    return "";
                }
                if (gender == MALE) {
                    return "m";
                }
                if (gender != FEMALE) {
                    return null;
                }
                return "f";
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                throw new UnknownGenderException(e2);
            }
        }

        public static Gender getValueForString(String str) throws UnknownStringGenderValue {
            try {
                if (str.equalsIgnoreCase("")) {
                    return UNSET;
                }
                if (str.equalsIgnoreCase("m")) {
                    return MALE;
                }
                if (!str.equalsIgnoreCase("f")) {
                    return null;
                }
                return FEMALE;
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                throw new UnknownStringGenderValue(e2);
            }
        }
    }

    public void a(Gender gender) {
        this.f5059a = gender;
    }

    public int a() {
        return this.b;
    }

    public void a(int i) {
        this.b = i;
    }

    public void a(String str) {
        this.c = str;
    }

    public void b(String str) {
        this.d = str;
    }

    public void c(String str) {
        this.e = str;
    }

    public void d(String str) {
        this.f = str;
    }

    public double b() {
        return this.g;
    }

    public void a(double d) {
        this.g = d;
    }

    public double c() {
        return this.h;
    }

    public void b(double d) {
        this.h = d;
    }

    public void a(boolean z) {
        this.i = z;
    }

    public int d() {
        return this.j ? 1 : 0;
    }
}

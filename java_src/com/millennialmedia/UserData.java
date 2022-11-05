package com.millennialmedia;

import com.pubmatic.sdk.common.mocean.MoceanAdRequest;
import java.util.Date;
/* loaded from: classes3.dex */
public class UserData {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4036a = UserData.class.getName();
    private Integer b;
    private Integer c;
    private Integer d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private Date l;
    private String m;
    private String n;
    private String o;

    /* loaded from: classes3.dex */
    public enum Education {
        HIGH_SCHOOL("highschool"),
        SOME_COLLEGE("somecollege"),
        ASSOCIATE("associate"),
        BACHELOR("bachelor"),
        MASTERS("masters"),
        PHD("phd"),
        PROFESSIONAL("professional");
        
        public final String value;

        Education(String str) {
            this.value = str;
        }
    }

    /* loaded from: classes3.dex */
    public enum Ethnicity {
        HISPANIC("hispanic"),
        BLACK("africanamerican"),
        ASIAN("asian"),
        INDIAN("indian"),
        MIDDLE_EASTERN("middleeastern"),
        NATIVE_AMERICAN("nativeamerican"),
        PACIFIC_ISLANDER("pacificislander"),
        WHITE("white"),
        OTHER("other");
        
        public final String value;

        Ethnicity(String str) {
            this.value = str;
        }
    }

    /* loaded from: classes3.dex */
    public enum Gender {
        MALE(MoceanAdRequest.GENDER_MALE),
        FEMALE(MoceanAdRequest.GENDER_FEMALE),
        UNKNOWN(MoceanAdRequest.GENDER_OTHER);
        
        public final String value;

        Gender(String str) {
            this.value = str;
        }
    }

    /* loaded from: classes3.dex */
    public enum Marital {
        SINGLE("S"),
        MARRIED(MoceanAdRequest.GENDER_MALE),
        DIVORCED("D"),
        RELATIONSHIP(MoceanAdRequest.GENDER_OTHER);
        
        public final String value;

        Marital(String str) {
            this.value = str;
        }
    }

    /* loaded from: classes3.dex */
    public enum Politics {
        REPUBLICAN("republican"),
        DEMOCRAT("democrat"),
        CONSERVATIVE("conservative"),
        MODERATE("moderate"),
        LIBERAL("liberal"),
        INDEPENDENT("independent"),
        OTHER("other");
        
        public final String value;

        Politics(String str) {
            this.value = str;
        }
    }

    public UserData setAge(int i) {
        if (i < 0 || i > 150) {
            MMLog.e(f4036a, "Age must be at least 0 and no greater than 150");
        } else {
            this.b = Integer.valueOf(i);
        }
        return this;
    }

    public Integer getAge() {
        return this.b;
    }

    public UserData setChildren(int i) {
        if (i < 0) {
            MMLog.e(f4036a, "Number of children must be greater than or equal to zero");
        } else {
            this.c = Integer.valueOf(i);
        }
        return this;
    }

    public Integer getChildren() {
        return this.c;
    }

    public UserData setEducation(Education education) {
        this.e = education.value;
        return this;
    }

    public String getEducation() {
        return this.e;
    }

    public UserData setEthnicity(Ethnicity ethnicity) {
        this.f = ethnicity.value;
        return this;
    }

    public String getEthnicity() {
        return this.f;
    }

    public UserData setGender(Gender gender) {
        this.g = gender.value;
        return this;
    }

    public String getGender() {
        return this.g;
    }

    public UserData setIncome(int i) {
        this.d = Integer.valueOf(i);
        return this;
    }

    public Integer getIncome() {
        return this.d;
    }

    public UserData setKeywords(String str) {
        this.h = str;
        return this;
    }

    public String getKeywords() {
        return this.h;
    }

    public UserData setMarital(Marital marital) {
        this.i = marital.value;
        return this;
    }

    public String getMarital() {
        return this.i;
    }

    public UserData setPolitics(Politics politics) {
        this.j = politics.value;
        return this;
    }

    public String getPolitics() {
        return this.j;
    }

    public UserData setPostalCode(String str) {
        this.k = str;
        return this;
    }

    public String getPostalCode() {
        return this.k;
    }

    public UserData setDob(Date date) {
        this.l = date;
        return this;
    }

    public Date getDob() {
        return this.l;
    }

    public UserData setState(String str) {
        this.m = str;
        return this;
    }

    public String getState() {
        return this.m;
    }

    public UserData setCountry(String str) {
        this.n = str;
        return this;
    }

    public String getCountry() {
        return this.n;
    }

    public UserData setDma(String str) {
        this.o = str;
        return this;
    }

    public String getDma() {
        return this.o;
    }
}

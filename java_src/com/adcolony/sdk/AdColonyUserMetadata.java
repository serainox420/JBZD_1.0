package com.adcolony.sdk;

import android.location.Location;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class AdColonyUserMetadata {
    public static final String USER_EDUCATION_ASSOCIATES_DEGREE = "associates_degree";
    public static final String USER_EDUCATION_BACHELORS_DEGREE = "bachelors_degree";
    public static final String USER_EDUCATION_GRADE_SCHOOL = "grade_school";
    public static final String USER_EDUCATION_GRADUATE_DEGREE = "graduate_degree";
    public static final String USER_EDUCATION_HIGH_SCHOOL_DIPLOMA = "high_school_diploma";
    public static final String USER_EDUCATION_SOME_COLLEGE = "some_college";
    public static final String USER_EDUCATION_SOME_HIGH_SCHOOL = "some_high_school";
    public static final String USER_FEMALE = "female";
    public static final String USER_MALE = "male";
    public static final String USER_MARRIED = "married";
    public static final String USER_SINGLE = "single";

    /* renamed from: a  reason: collision with root package name */
    static final int f1000a = 128;
    JSONArray b = s.b();
    JSONObject c = s.a();
    Location d;

    public AdColonyUserMetadata setUserGender(String str) {
        if (au.d(str)) {
            setMetadata("gender", str);
        }
        return this;
    }

    public String getUserGender() {
        return s.b(this.c, "gender");
    }

    public AdColonyUserMetadata setUserAge(int i) {
        setMetadata("age", i);
        return this;
    }

    public int getUserAge() {
        return s.c(this.c, "age");
    }

    public AdColonyUserMetadata setUserMaritalStatus(String str) {
        if (au.d(str)) {
            setMetadata("marital_status", str);
        }
        return this;
    }

    public String getUserMaritalStatus() {
        return s.b(this.c, "marital_status");
    }

    public AdColonyUserMetadata setUserAnnualHouseholdIncome(int i) {
        setMetadata("household_income", i);
        return this;
    }

    public int getUserAnnualHouseholdIncome() {
        return s.c(this.c, "household_income");
    }

    public AdColonyUserMetadata setUserEducation(String str) {
        if (au.d(str)) {
            setMetadata("education", str);
        }
        return this;
    }

    public String getUserEducation() {
        return s.b(this.c, "education");
    }

    public AdColonyUserMetadata setUserZipCode(String str) {
        if (au.d(str)) {
            setMetadata("zip", str);
        }
        return this;
    }

    public String getUserZipCode() {
        return s.b(this.c, "zip");
    }

    public AdColonyUserMetadata setUserLocation(Location location) {
        this.d = location;
        setMetadata("longitude", location.getLongitude());
        setMetadata("latitude", location.getLatitude());
        setMetadata("speed", location.getSpeed());
        setMetadata("altitude", location.getAltitude());
        setMetadata("time", location.getTime());
        setMetadata("accuracy", location.getAccuracy());
        return this;
    }

    public Location getUserLocation() {
        return this.d;
    }

    public AdColonyUserMetadata addUserInterest(String str) {
        if (au.d(str)) {
            s.a(this.b, str);
            s.a(this.c, "interests", this.b);
        }
        return this;
    }

    public AdColonyUserMetadata clearUserInterests() {
        this.b = s.b();
        s.a(this.c, "interests", this.b);
        return this;
    }

    public String[] getUserInterests() {
        String[] strArr = new String[this.b.length()];
        for (int i = 0; i < this.b.length(); i++) {
            strArr[i] = s.b(this.b, i);
        }
        return strArr;
    }

    public AdColonyUserMetadata setMetadata(String str, boolean z) {
        if (au.d(str)) {
            s.a(this.c, str, z);
        }
        return this;
    }

    public Object getMetadata(String str) {
        return s.a(this.c, str);
    }

    public AdColonyUserMetadata setMetadata(String str, double d) {
        if (au.d(str)) {
            s.a(this.c, str, d);
        }
        return this;
    }

    public AdColonyUserMetadata setMetadata(String str, String str2) {
        if (au.d(str2) && au.d(str)) {
            s.a(this.c, str, str2);
        }
        return this;
    }
}

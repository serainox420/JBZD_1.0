package com.inmobi.commons.data;

import android.location.Location;
import com.inmobi.commons.EducationType;
import com.inmobi.commons.EthnicityType;
import com.inmobi.commons.GenderType;
import com.inmobi.commons.HasChildren;
import com.inmobi.commons.IMIDType;
import com.inmobi.commons.MaritalStatus;
import com.inmobi.commons.SexualOrientation;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class DemogInfo {
    private static Location b;
    private static EducationType c;
    private static EthnicityType d;
    private static GenderType e;
    private static Calendar f;
    private static String i;
    private static String j;
    private static String k;
    private static String l;
    private static HasChildren m;
    private static MaritalStatus n;
    private static String o;
    private static SexualOrientation p;

    /* renamed from: a  reason: collision with root package name */
    private static int f3778a = 1;
    private static Integer g = 0;
    private static Integer h = 0;
    private static Map<IMIDType, String> q = new HashMap();

    public static Location getCurrentLocation() {
        return b;
    }

    public static void setCurrentLocation(Location location) {
        b = location;
    }

    public static void setLocationWithCityStateCountry(String str, String str2, String str3) {
        if (str != null && !"".equals(str.trim())) {
            j = str;
        }
        if (str2 != null && !"".equals(str2.trim())) {
            j += "-" + str2;
        }
        if (str3 != null && !"".equals(str3.trim())) {
            j += "-" + str3;
        }
    }

    public static String getLocationWithCityStateCountry() {
        return j;
    }

    public static boolean isLocationInquiryAllowed() {
        return AnalyticsInitializer.getConfigParams().getAutomaticCapture().isAutoLocationCaptureEnabled();
    }

    public static String getPostalCode() {
        return k;
    }

    public static void setPostalCode(String str) {
        k = str;
    }

    public static String getAreaCode() {
        return l;
    }

    public static void setAreaCode(String str) {
        l = str;
    }

    public static Calendar getDateOfBirth() {
        return f;
    }

    public static void setDateOfBirth(Calendar calendar) {
        f = calendar;
    }

    public static Integer getIncome() {
        return g;
    }

    public static void setIncome(Integer num) {
        g = num;
    }

    public static Integer getAge() {
        return h;
    }

    public static void setAge(Integer num) {
        h = num;
    }

    public static EducationType getEducation() {
        return c;
    }

    public static void setEducation(EducationType educationType) {
        c = educationType;
    }

    public static EthnicityType getEthnicity() {
        return d;
    }

    public static void setEthnicity(EthnicityType ethnicityType) {
        d = ethnicityType;
    }

    public static void setGender(GenderType genderType) {
        e = genderType;
    }

    public static GenderType getGender() {
        return e;
    }

    public static String getInterests() {
        return i;
    }

    public static void setInterests(String str) {
        i = str;
    }

    public static void addIDType(IMIDType iMIDType, String str) {
        if (q != null) {
            q.put(iMIDType, str);
        }
    }

    public static String getIDType(IMIDType iMIDType) {
        if (q != null) {
            return q.get(iMIDType);
        }
        return null;
    }

    public static void removeIDType(IMIDType iMIDType) {
        if (q != null) {
            q.remove(iMIDType);
        }
    }

    public static MaritalStatus getMaritalStatus() {
        return n;
    }

    public static void setMaritalStatus(MaritalStatus maritalStatus) {
        n = maritalStatus;
    }

    public static String getLanguage() {
        return o;
    }

    public static void setLanguage(String str) {
        o = str;
    }

    public static SexualOrientation getSexualOrientation() {
        return p;
    }

    public static void setSexualOrientation(SexualOrientation sexualOrientation) {
        p = sexualOrientation;
    }

    public static void setHasChildren(HasChildren hasChildren) {
        m = hasChildren;
    }

    public static HasChildren getHasChildren() {
        return m;
    }

    public static void setDeviceIDMask(int i2) {
        f3778a = i2;
    }

    public static int getDeviceIDMask() {
        return f3778a;
    }
}

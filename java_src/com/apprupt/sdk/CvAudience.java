package com.apprupt.sdk;

import com.adcolony.sdk.AdColonyUserMetadata;
import com.mobsandgeeks.saripaar.DateFormats;
import com.pubmatic.sdk.common.mocean.MoceanAdRequest;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class CvAudience {

    /* renamed from: a  reason: collision with root package name */
    public static int f1746a = -1;
    private Gender b;
    private Calendar c;
    private RelationshipStatus d;
    private int e;

    /* loaded from: classes.dex */
    private static class CvAudienceHolder {

        /* renamed from: a  reason: collision with root package name */
        public static final CvAudience f1748a = new CvAudience();

        private CvAudienceHolder() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CvAudience a() {
        return CvAudienceHolder.f1748a;
    }

    /* loaded from: classes.dex */
    public enum Gender {
        UNKNOWN,
        MALE,
        FEMALE;

        @Override // java.lang.Enum
        public String toString() {
            switch (this) {
                case MALE:
                    return MoceanAdRequest.GENDER_MALE;
                case FEMALE:
                    return MoceanAdRequest.GENDER_FEMALE;
                default:
                    return "";
            }
        }
    }

    /* loaded from: classes.dex */
    public enum RelationshipStatus {
        UNKNOWN,
        SINGLE,
        IN_RELATIONSHIP,
        ENGAGED,
        MARRIED,
        SEPARATED,
        DIVORCED,
        WIDOWED;

        @Override // java.lang.Enum
        public String toString() {
            switch (this) {
                case SINGLE:
                    return AdColonyUserMetadata.USER_SINGLE;
                case IN_RELATIONSHIP:
                    return "in-relationship";
                case ENGAGED:
                    return "engaged";
                case MARRIED:
                    return AdColonyUserMetadata.USER_MARRIED;
                case SEPARATED:
                    return "separated";
                case DIVORCED:
                    return "divorced";
                case WIDOWED:
                    return "widowed";
                default:
                    return "";
            }
        }
    }

    private CvAudience() {
        this.b = Gender.UNKNOWN;
        this.c = null;
        this.d = RelationshipStatus.UNKNOWN;
        this.e = f1746a;
    }

    String b() {
        return this.b.toString();
    }

    String c() {
        return this.c == null ? "" : new SimpleDateFormat(DateFormats.YMD).format(this.c.getTime());
    }

    String d() {
        return this.e == f1746a ? "" : String.format("%d", Integer.valueOf(this.e));
    }

    String e() {
        return this.d.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONObject f() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("gender", b());
            jSONObject.put("birthDate", c());
            jSONObject.put("relationshipStatus", e());
            jSONObject.put("numberOfChildren", d());
        } catch (JSONException e) {
            Logger.a().c(e, "Cannot build JSON from audience");
        }
        return jSONObject;
    }
}

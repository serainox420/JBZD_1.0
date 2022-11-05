package com.inmobi.commons.analytics.db;
/* loaded from: classes2.dex */
public class AnalyticsEvent {
    public static final String EVENT_ID = "id";
    public static final String IN_APP = "inapp";
    public static final String SUBS = "subs";
    public static final String TYPE_CUSTOM_EVENT = "ce";
    public static final String TYPE_END_SESSION = "es";
    public static final String TYPE_LEVEL_BEGIN = "lb";
    public static final String TYPE_LEVEL_END = "le";
    public static final String TYPE_START_SESSION = "ss";
    public static final String TYPE_TAG_TRANSACTION = "pi";
    public static final String TYPE_USER_ATTRIBUTE = "ae";

    /* renamed from: a  reason: collision with root package name */
    private long f3728a;
    private String b;
    private String c;
    private long d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;
    private String n;
    private TRANSACTION_ITEM_TYPE o;
    private double p;
    private int q;
    private String r;
    private String s;
    private String t;
    private TRANSACTION_STATUS_SERVER_CODE u;
    private long v;
    private long w;
    private String x;
    private String y;

    /* loaded from: classes2.dex */
    public enum TRANSACTION_ITEM_TYPE {
        INVALID(-1),
        INAPP(1),
        SUBSCRIPTION(2);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f3729a;

        TRANSACTION_ITEM_TYPE(int i) {
            this.f3729a = i;
        }

        public int getValue() {
            return this.f3729a;
        }
    }

    /* loaded from: classes2.dex */
    public enum TRANSACTION_STATUS_SERVER_CODE {
        INVALID(-1),
        PURCHASED(1),
        FAILED(2),
        RESTORED(3),
        REFUNDED(4);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f3731a;

        TRANSACTION_STATUS_SERVER_CODE(int i) {
            this.f3731a = i;
        }

        public int getValue() {
            return this.f3731a;
        }
    }

    /* loaded from: classes2.dex */
    public enum TRANSACTION_STATUS_GOOGLE_API_VALUES {
        PURCHASED(0),
        FAILED(1),
        REFUNDED(2);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f3730a;

        TRANSACTION_STATUS_GOOGLE_API_VALUES(int i) {
            this.f3730a = i;
        }

        public int getValue() {
            return this.f3730a;
        }
    }

    public AnalyticsEvent(String str) {
        this.b = str;
    }

    public long getEventId() {
        return this.f3728a;
    }

    public void setEventId(long j) {
        this.f3728a = j;
    }

    public String getTransactionItemName() {
        return this.m;
    }

    public void setTransactionItemName(String str) {
        this.m = str;
    }

    public String getTransactionItemDescription() {
        return this.n;
    }

    public void setTransactionItemDescription(String str) {
        this.n = str;
    }

    public int getTransactionItemType() {
        return this.o == null ? TRANSACTION_ITEM_TYPE.INVALID.getValue() : this.o.getValue();
    }

    public void setTransactionItemType(int i) {
        if (TRANSACTION_ITEM_TYPE.INAPP.getValue() == i) {
            this.o = TRANSACTION_ITEM_TYPE.INAPP;
        } else if (TRANSACTION_ITEM_TYPE.SUBSCRIPTION.getValue() == i) {
            this.o = TRANSACTION_ITEM_TYPE.SUBSCRIPTION;
        } else {
            this.o = TRANSACTION_ITEM_TYPE.INVALID;
        }
    }

    public double getTransactionItemPrice() {
        return this.p;
    }

    public void setTransactionItemPrice(double d) {
        this.p = d;
    }

    public int getTransactionItemCount() {
        return this.q;
    }

    public void setTransactionItemCount(int i) {
        this.q = i;
    }

    public String getTransactionCurrencyCode() {
        return this.r;
    }

    public void setTransactionCurrencyCode(String str) {
        this.r = str;
    }

    public String getTransactionProductId() {
        return this.s;
    }

    public void setTransactionProductId(String str) {
        this.s = str;
    }

    public String getTransactionId() {
        return this.t;
    }

    public void setTransactionId(String str) {
        this.t = str;
    }

    public int getTransactionStatus() {
        return this.u == null ? TRANSACTION_STATUS_SERVER_CODE.INVALID.getValue() : this.u.getValue();
    }

    public void setTransactionStatus(int i) {
        if (TRANSACTION_STATUS_SERVER_CODE.PURCHASED.getValue() == i) {
            this.u = TRANSACTION_STATUS_SERVER_CODE.PURCHASED;
        } else if (TRANSACTION_STATUS_SERVER_CODE.REFUNDED.getValue() == i) {
            this.u = TRANSACTION_STATUS_SERVER_CODE.REFUNDED;
        } else if (TRANSACTION_STATUS_SERVER_CODE.FAILED.getValue() == i) {
            this.u = TRANSACTION_STATUS_SERVER_CODE.FAILED;
        } else {
            this.u = TRANSACTION_STATUS_SERVER_CODE.INVALID;
        }
    }

    public String getEventSessionId() {
        return this.c;
    }

    public void setEventSessionId(String str) {
        this.c = str;
    }

    public String getEventType() {
        return this.b;
    }

    public void setEventAttributeMap(String str) {
        this.e = str;
    }

    public String getEventAttributeMap() {
        return this.e;
    }

    public long getEventTimeStamp() {
        return this.v;
    }

    public void setEventTimeStamp(long j) {
        this.v = j;
    }

    public String getEventLevelId() {
        return this.f;
    }

    public void setEventLevelId(String str) {
        this.f = str;
    }

    public String getEventLevelName() {
        return this.g;
    }

    public void setEventLevelName(String str) {
        this.g = str;
    }

    public String getEventLevelStatus() {
        return this.h;
    }

    public void setEventLevelStatus(String str) {
        this.h = str;
    }

    public String getEventTimeTaken() {
        return this.i;
    }

    public void setEventTimeTaken(String str) {
        this.i = str;
    }

    public String getEventAttemptCount() {
        return this.j;
    }

    public void setEventAttemptCount(String str) {
        this.j = str;
    }

    public String getEventAttemptTime() {
        return this.k;
    }

    public void setEventAttemptTime(String str) {
        this.k = str;
    }

    public String getEventCustomName() {
        return this.l;
    }

    public void setEventCustomName(String str) {
        this.l = str;
    }

    public void setUserAttribute(String str, String str2) {
        if (str != null && str2 != null && !"".equals(str.trim()) && !"".equals(str2.trim())) {
            this.x = str;
            this.y = str2;
        }
    }

    public String getAttributeName() {
        return this.x;
    }

    public String getAttributeValue() {
        return this.y;
    }

    public long getEventTableId() {
        return this.w;
    }

    public void setEventTableId(long j) {
        this.w = j;
    }

    public long getEventSessionTimeStamp() {
        return this.d;
    }

    public void setEventSessionTimeStamp(long j) {
        this.d = j;
    }
}

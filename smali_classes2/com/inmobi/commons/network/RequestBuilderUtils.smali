.class public Lcom/inmobi/commons/network/RequestBuilderUtils;
.super Ljava/lang/Object;
.source "RequestBuilderUtils.java"


# static fields
.field public static final KEY_MK_SITE_ID:Ljava/lang/String; = "mk-siteid"

.field public static final KEY_MK_SITE_SLOT_ID:Ljava/lang/String; = "mk-site-slotid"

.field public static final RULE_ID:Ljava/lang/String; = "rule-id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 281
    if-eqz p0, :cond_0

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    :cond_0
    return-object v0
.end method

.method public static fillAppInfoMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    invoke-static {}, Lcom/inmobi/commons/data/AppInfo;->getAppBId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    const-string v0, "u-appbid"

    invoke-static {}, Lcom/inmobi/commons/data/AppInfo;->getAppBId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_0
    invoke-static {}, Lcom/inmobi/commons/data/AppInfo;->getAppDisplayName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 274
    const-string v0, "u-appDNM"

    invoke-static {}, Lcom/inmobi/commons/data/AppInfo;->getAppDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/data/AppInfo;->getAppVer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 276
    const-string v0, "u-appver"

    invoke-static {}, Lcom/inmobi/commons/data/AppInfo;->getAppVer()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_2
    return-void
.end method

.method public static fillDemogMap(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    if-eqz p0, :cond_d

    .line 88
    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getAge()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 89
    const-string v0, "u-age"

    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getAge()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    const-string v0, "u-postalCode"

    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 93
    const-string v0, "u-areaCode"

    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getAreaCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_2
    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getDateOfBirth()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 95
    const-string v0, "u-dateOfBirth"

    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getDateOfBirth()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/network/RequestBuilderUtils;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_3
    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getEducation()Lcom/inmobi/commons/EducationType;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 97
    const-string v0, "u-education"

    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getEducation()Lcom/inmobi/commons/EducationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/EducationType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_4
    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getEthnicity()Lcom/inmobi/commons/EthnicityType;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 100
    const-string v0, "u-ethnicity"

    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getEthnicity()Lcom/inmobi/commons/EthnicityType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/EthnicityType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_5
    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getGender()Lcom/inmobi/commons/GenderType;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 103
    const-string v0, "u-gender"

    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getGender()Lcom/inmobi/commons/GenderType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/GenderType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_6
    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getHasChildren()Lcom/inmobi/commons/HasChildren;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 105
    const-string v0, "u-haschildren"

    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getHasChildren()Lcom/inmobi/commons/HasChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/HasChildren;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_7
    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getIncome()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_8

    .line 108
    const-string v0, "u-income"

    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getIncome()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_8
    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getInterests()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 110
    const-string v0, "u-interests"

    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getInterests()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_9
    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 112
    const-string v0, "u-language"

    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_a
    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getLocationWithCityStateCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 114
    const-string v0, "u-location"

    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getLocationWithCityStateCountry()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_b
    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getMaritalStatus()Lcom/inmobi/commons/MaritalStatus;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 116
    const-string v0, "u-marital"

    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getMaritalStatus()Lcom/inmobi/commons/MaritalStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/MaritalStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_c
    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getSexualOrientation()Lcom/inmobi/commons/SexualOrientation;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 119
    const-string v0, "u-sexualorientation"

    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->getSexualOrientation()Lcom/inmobi/commons/SexualOrientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/SexualOrientation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_d
    return-void
.end method

.method public static fillDeviceMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    if-eqz p0, :cond_3

    .line 253
    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->getScreenDensity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    const-string v0, "d-device-screen-density"

    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->getScreenDensity()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_0
    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->getScreenSize()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 256
    const-string v0, "d-device-screen-size"

    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->getScreenSize()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_1
    const-string v0, "d-orientation"

    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->getOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 259
    const-string v0, "d-netType"

    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_2
    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->getLocalization()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 261
    const-string v0, "d-localization"

    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->getLocalization()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_3
    return-void
.end method

.method public static fillIdentityMap(Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 208
    if-eqz p0, :cond_2

    .line 209
    const-string v0, "mk-siteid"

    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pr-SAND-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "4.5.5"

    invoke-static {v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getInMobiInternalVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "20150522"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    const-string v1, "mk-version"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v1, "mk-rel-version"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    const-string v0, "h-user-agent"

    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_0
    invoke-static {}, Lcom/inmobi/commons/uid/UID;->getInstance()Lcom/inmobi/commons/uid/UID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/uid/UID;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    const-string v0, "u-id-adt"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :goto_0
    if-eqz p2, :cond_4

    .line 224
    invoke-static {}, Lcom/inmobi/commons/uid/UID;->getInstance()Lcom/inmobi/commons/uid/UID;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inmobi/commons/uid/UID;->getMapForEncryption(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_1

    .line 226
    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 236
    :cond_1
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 238
    const-string v1, "ts"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v1, "tz"

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getLtvpSessionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getLtvpSessionId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    const-string v0, "u-s-id"

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getLtvpSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_2
    return-void

    .line 221
    :cond_3
    const-string v0, "u-id-adt"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 231
    :cond_4
    const-string v0, "u-id-key"

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v0, "u-key-ver"

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v0, "u-id-map"

    invoke-static {}, Lcom/inmobi/commons/uid/UID;->getInstance()Lcom/inmobi/commons/uid/UID;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/inmobi/commons/uid/UID;->getJSON(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static fillLocationMap(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    if-eqz p0, :cond_5

    .line 131
    invoke-static {}, Lcom/inmobi/commons/data/LocationInfo;->currentLocationStr()Ljava/lang/String;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    const-string v1, "u-latlong-accu"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {}, Lcom/inmobi/commons/data/LocationInfo;->getGeoTS()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 135
    const-string v0, "u-ll-ts"

    invoke-static {}, Lcom/inmobi/commons/data/LocationInfo;->getGeoTS()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_0
    const-string v0, "sdk-collected"

    invoke-static {}, Lcom/inmobi/commons/data/LocationInfo;->isSDKSetLocation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->isLocationInquiryAllowed()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 140
    const/4 v0, 0x1

    .line 144
    :goto_0
    const-string v1, "loc-allowed"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/4 v0, 0x0

    .line 148
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->getConnectedWifiInfo(Landroid/content/Context;)Lcom/inmobi/commons/thinICE/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 153
    :goto_1
    if-eqz v0, :cond_2

    .line 154
    const-string v1, "c-ap-bssid"

    iget-wide v2, v0, Lcom/inmobi/commons/thinICE/wifi/WifiInfo;->bssid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->getVisbleWifiInfoBssId(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 160
    const-string v1, "v-ap-bssid"

    const-string v2, ","

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->convertListToDelimitedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    :cond_3
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/cellular/CellUtil;->getVisibleCellTowerIds(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 172
    const-string v1, "v-sid"

    const-string v2, ","

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->convertListToDelimitedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 182
    :cond_4
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/cellular/CellUtil;->getCurrentCellTower(Landroid/content/Context;)Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;->id:Ljava/lang/String;

    .line 183
    if-eqz v0, :cond_5

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 184
    const-string v1, "c-sid"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 192
    :cond_5
    :goto_4
    return-void

    .line 142
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v1

    .line 150
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "No wifi permissions set, unable to send wifi data"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 163
    :catch_1
    move-exception v0

    .line 164
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "Couldn\'t get cell tower info in Request Builder"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 174
    :catch_2
    move-exception v0

    .line 175
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "Couldn\'t get cell tower info in Request Builder"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 186
    :catch_3
    move-exception v0

    .line 187
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "Couldn\'t get cell tower info in Request Builder"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

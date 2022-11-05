.class public final Lcom/inmobi/commons/data/DemogInfo;
.super Ljava/lang/Object;
.source "DemogInfo.java"


# static fields
.field private static a:I

.field private static b:Landroid/location/Location;

.field private static c:Lcom/inmobi/commons/EducationType;

.field private static d:Lcom/inmobi/commons/EthnicityType;

.field private static e:Lcom/inmobi/commons/GenderType;

.field private static f:Ljava/util/Calendar;

.field private static g:Ljava/lang/Integer;

.field private static h:Ljava/lang/Integer;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Lcom/inmobi/commons/HasChildren;

.field private static n:Lcom/inmobi/commons/MaritalStatus;

.field private static o:Ljava/lang/String;

.field private static p:Lcom/inmobi/commons/SexualOrientation;

.field private static q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/inmobi/commons/IMIDType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    const/4 v0, 0x1

    sput v0, Lcom/inmobi/commons/data/DemogInfo;->a:I

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/data/DemogInfo;->g:Ljava/lang/Integer;

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/data/DemogInfo;->h:Ljava/lang/Integer;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/commons/data/DemogInfo;->q:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addIDType(Lcom/inmobi/commons/IMIDType;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/inmobi/commons/data/DemogInfo;->q:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 301
    sget-object v0, Lcom/inmobi/commons/data/DemogInfo;->q:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_0
    return-void
.end method

.method public static getAge()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/inmobi/commons/data/DemogInfo;->h:Ljava/lang/Integer;

    return-object v0
.end method

.method public static getAreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/inmobi/commons/data/DemogInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/inmobi/commons/data/DemogInfo;->b:Landroid/location/Location;

    return-object v0
.end method

.method public static getDateOfBirth()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/inmobi/commons/data/DemogInfo;->f:Ljava/util/Calendar;

    return-object v0
.end method

.method public static getDeviceIDMask()I
    .locals 1

    .prologue
    .line 373
    sget v0, Lcom/inmobi/commons/data/DemogInfo;->a:I

    return v0
.end method

.method public static getEducation()Lcom/inmobi/commons/EducationType;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/inmobi/commons/data/DemogInfo;->c:Lcom/inmobi/commons/EducationType;

    return-object v0
.end method

.method public static getEthnicity()Lcom/inmobi/commons/EthnicityType;
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/inmobi/commons/data/DemogInfo;->d:Lcom/inmobi/commons/EthnicityType;

    return-object v0
.end method

.method public static getGender()Lcom/inmobi/commons/GenderType;
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lcom/inmobi/commons/data/DemogInfo;->e:Lcom/inmobi/commons/GenderType;

    return-object v0
.end method

.method public static getHasChildren()Lcom/inmobi/commons/HasChildren;
    .locals 1

    .prologue
    .line 365
    sget-object v0, Lcom/inmobi/commons/data/DemogInfo;->m:Lcom/inmobi/commons/HasChildren;

    return-object v0
.end method

.method public static getIDType(Lcom/inmobi/commons/IMIDType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    sget-object v0, Lcom/inmobi/commons/data/DemogInfo;->q:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 316
    sget-object v0, Lcom/inmobi/commons/data/DemogInfo;->q:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 318
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIncome()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/inmobi/commons/data/DemogInfo;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method public static getInterests()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    sget-object v0, Lcom/inmobi/commons/data/DemogInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    sget-object v0, Lcom/inmobi/commons/data/DemogInfo;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocationWithCityStateCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/inmobi/commons/data/DemogInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static getMaritalStatus()Lcom/inmobi/commons/MaritalStatus;
    .locals 1

    .prologue
    .line 337
    sget-object v0, Lcom/inmobi/commons/data/DemogInfo;->n:Lcom/inmobi/commons/MaritalStatus;

    return-object v0
.end method

.method public static getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/inmobi/commons/data/DemogInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static getSexualOrientation()Lcom/inmobi/commons/SexualOrientation;
    .locals 1

    .prologue
    .line 353
    sget-object v0, Lcom/inmobi/commons/data/DemogInfo;->p:Lcom/inmobi/commons/SexualOrientation;

    return-object v0
.end method

.method public static isLocationInquiryAllowed()Z
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getAutomaticCapture()Lcom/inmobi/commons/analytics/bootstrapper/AutomaticCaptureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AutomaticCaptureConfig;->isAutoLocationCaptureEnabled()Z

    move-result v0

    return v0
.end method

.method public static removeIDType(Lcom/inmobi/commons/IMIDType;)V
    .locals 1

    .prologue
    .line 331
    sget-object v0, Lcom/inmobi/commons/data/DemogInfo;->q:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 332
    sget-object v0, Lcom/inmobi/commons/data/DemogInfo;->q:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_0
    return-void
.end method

.method public static setAge(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 213
    sput-object p0, Lcom/inmobi/commons/data/DemogInfo;->h:Ljava/lang/Integer;

    .line 214
    return-void
.end method

.method public static setAreaCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    sput-object p0, Lcom/inmobi/commons/data/DemogInfo;->l:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public static setCurrentLocation(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 75
    sput-object p0, Lcom/inmobi/commons/data/DemogInfo;->b:Landroid/location/Location;

    .line 76
    return-void
.end method

.method public static setDateOfBirth(Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 175
    sput-object p0, Lcom/inmobi/commons/data/DemogInfo;->f:Ljava/util/Calendar;

    .line 176
    return-void
.end method

.method public static setDeviceIDMask(I)V
    .locals 0

    .prologue
    .line 369
    sput p0, Lcom/inmobi/commons/data/DemogInfo;->a:I

    .line 370
    return-void
.end method

.method public static setEducation(Lcom/inmobi/commons/EducationType;)V
    .locals 0

    .prologue
    .line 232
    sput-object p0, Lcom/inmobi/commons/data/DemogInfo;->c:Lcom/inmobi/commons/EducationType;

    .line 233
    return-void
.end method

.method public static setEthnicity(Lcom/inmobi/commons/EthnicityType;)V
    .locals 0

    .prologue
    .line 251
    sput-object p0, Lcom/inmobi/commons/data/DemogInfo;->d:Lcom/inmobi/commons/EthnicityType;

    .line 252
    return-void
.end method

.method public static setGender(Lcom/inmobi/commons/GenderType;)V
    .locals 0

    .prologue
    .line 261
    sput-object p0, Lcom/inmobi/commons/data/DemogInfo;->e:Lcom/inmobi/commons/GenderType;

    .line 262
    return-void
.end method

.method public static setHasChildren(Lcom/inmobi/commons/HasChildren;)V
    .locals 0

    .prologue
    .line 361
    sput-object p0, Lcom/inmobi/commons/data/DemogInfo;->m:Lcom/inmobi/commons/HasChildren;

    .line 362
    return-void
.end method

.method public static setIncome(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 194
    sput-object p0, Lcom/inmobi/commons/data/DemogInfo;->g:Ljava/lang/Integer;

    .line 195
    return-void
.end method

.method public static setInterests(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 289
    sput-object p0, Lcom/inmobi/commons/data/DemogInfo;->i:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public static setLanguage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 349
    sput-object p0, Lcom/inmobi/commons/data/DemogInfo;->o:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public static setLocationWithCityStateCountry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 90
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    sput-object p0, Lcom/inmobi/commons/data/DemogInfo;->j:Ljava/lang/String;

    .line 92
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/inmobi/commons/data/DemogInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/data/DemogInfo;->j:Ljava/lang/String;

    .line 94
    :cond_1
    if-eqz p2, :cond_2

    const-string v0, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/inmobi/commons/data/DemogInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/data/DemogInfo;->j:Ljava/lang/String;

    .line 96
    :cond_2
    return-void
.end method

.method public static setMaritalStatus(Lcom/inmobi/commons/MaritalStatus;)V
    .locals 0

    .prologue
    .line 341
    sput-object p0, Lcom/inmobi/commons/data/DemogInfo;->n:Lcom/inmobi/commons/MaritalStatus;

    .line 342
    return-void
.end method

.method public static setPostalCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    sput-object p0, Lcom/inmobi/commons/data/DemogInfo;->k:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public static setSexualOrientation(Lcom/inmobi/commons/SexualOrientation;)V
    .locals 0

    .prologue
    .line 357
    sput-object p0, Lcom/inmobi/commons/data/DemogInfo;->p:Lcom/inmobi/commons/SexualOrientation;

    .line 358
    return-void
.end method

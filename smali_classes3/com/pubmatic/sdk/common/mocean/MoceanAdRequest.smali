.class public abstract Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;
.super Lcom/pubmatic/sdk/common/AdRequest;
.source "MoceanAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$OVER_18;,
        Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;,
        Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$ETHNICITY;,
        Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$AD_VISIBILITY;,
        Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$AD_TYPE;
    }
.end annotation


# static fields
.field public static final GENDER_FEMALE:Ljava/lang/String; = "F"

.field public static final GENDER_MALE:Ljava/lang/String; = "M"

.field public static final GENDER_OTHER:Ljava/lang/String; = "O"


# instance fields
.field private mAge:Ljava/lang/String;

.field private mAreaCode:Ljava/lang/String;

.field private mBirthDay:Ljava/lang/String;

.field private mCity:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mDMA:Ljava/lang/String;

.field private mEthnicity:Ljava/lang/String;

.field private mGender:Ljava/lang/String;

.field protected mIp:Ljava/lang/String;

.field private mIsoRegion:Ljava/lang/String;

.field private mOver18:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$OVER_18;

.field private mZip:Ljava/lang/String;

.field protected mZoneId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    sget-object v0, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;->MOCEAN:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    invoke-direct {p0, v0, p1}, Lcom/pubmatic/sdk/common/AdRequest;-><init>(Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;Landroid/content/Context;)V

    .line 216
    iput-object v1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mAge:Ljava/lang/String;

    .line 217
    iput-object v1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mGender:Ljava/lang/String;

    .line 218
    iput-object v1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mAreaCode:Ljava/lang/String;

    .line 219
    sget-object v0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$OVER_18;->NA:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$OVER_18;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mOver18:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$OVER_18;

    .line 220
    iput-object v1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mBirthDay:Ljava/lang/String;

    .line 221
    iput-object v1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mIsoRegion:Ljava/lang/String;

    .line 224
    iput-object v1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mCity:Ljava/lang/String;

    .line 225
    iput-object v1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mZip:Ljava/lang/String;

    .line 226
    iput-object v1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mDMA:Ljava/lang/String;

    .line 227
    iput-object v1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mEthnicity:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method private static getUdidFromContext(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 395
    .line 396
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    .line 395
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    if-nez v0, :cond_0

    const-string v0, ""

    .line 398
    :goto_0
    return-object v0

    .line 397
    :cond_0
    invoke-static {v0}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    :try_start_0
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 408
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 409
    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {v2, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 410
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 412
    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-byte v4, v2, v0

    .line 413
    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 418
    :goto_1
    return-object v0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    const-string v0, ""

    goto :goto_1
.end method


# virtual methods
.method public copyRequestParams(Lcom/pubmatic/sdk/common/AdRequest;)V
    .locals 1

    .prologue
    .line 41
    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mZoneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 44
    check-cast v0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;

    iget-object v0, v0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mZoneId:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mZoneId:Ljava/lang/String;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 46
    check-cast v0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;

    iget-object v0, v0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mIp:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mIp:Ljava/lang/String;

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mUserAgent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    check-cast p1, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;

    iget-object v0, p1, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mUserAgent:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mUserAgent:Ljava/lang/String;

    .line 50
    :cond_2
    return-void
.end method

.method public createRequest(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mPostData:Ljava/lang/StringBuffer;

    .line 179
    invoke-virtual {p0, p1}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->initializeDefaultParams(Landroid/content/Context;)V

    .line 180
    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->setupPostData()V

    .line 181
    return-void
.end method

.method public getAdServerURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://ads.moceanads.com/ad"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mBaseUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mAge:Ljava/lang/String;

    return-object v0
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mAreaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mBirthDay:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getDMA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mDMA:Ljava/lang/String;

    return-object v0
.end method

.method public getEthnicity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mEthnicity:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mGender:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method public getIsoRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mIsoRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getOver18()Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$OVER_18;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mOver18:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$OVER_18;

    return-object v0
.end method

.method public getZip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mZip:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mZoneId:Ljava/lang/String;

    return-object v0
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mAge:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setAreaCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mAreaCode:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public abstract setAttributes(Landroid/util/AttributeSet;)V
.end method

.method public setBirthDay(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mBirthDay:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mCity:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public setDMA(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mDMA:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 276
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    :cond_0
    iput-object v2, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mGender:Ljava/lang/String;

    .line 288
    :goto_0
    return-void

    .line 281
    :cond_1
    const-string v0, "M"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "F"

    .line 282
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "O"

    .line 283
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mGender:Ljava/lang/String;

    goto :goto_0

    .line 286
    :cond_3
    iput-object v2, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mGender:Ljava/lang/String;

    goto :goto_0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mIp:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setIsoRegion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mIsoRegion:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setOver18(Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$OVER_18;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mOver18:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$OVER_18;

    .line 262
    return-void
.end method

.method public setZip(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mZip:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public setZoneId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mZoneId:Ljava/lang/String;

    .line 392
    return-void
.end method

.method protected setupPostData()V
    .locals 4

    .prologue
    .line 55
    invoke-super {p0}, Lcom/pubmatic/sdk/common/AdRequest;->setupPostData()V

    .line 59
    :try_start_0
    const-string v0, "zone"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mZoneId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    const-string v0, "ip"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mIp:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mUserAgent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    const-string v0, "ua"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mUserAgent:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mCustomParams:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mCustomParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 71
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mCustomParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 73
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mCustomParams:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 76
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77
    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoceanAdRequest: Error while setting request post data."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_10

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Error:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    .line 174
    :cond_3
    :goto_2
    return-void

    .line 85
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mGender:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 86
    const-string v0, "gender"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mGender:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_5
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mEthnicity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 91
    const-string v0, "userEnthnicity"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mEthnicity:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_6
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mAge:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 97
    const-string v0, "age"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mAge:Ljava/lang/String;

    const-string v2, "UTF-8"

    .line 98
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_7
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mBirthDay:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 103
    const-string v0, "birthday"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mBirthDay:Ljava/lang/String;

    const-string v2, "UTF-8"

    .line 104
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_8
    sget-object v0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$1;->$SwitchMap$com$pubmatic$sdk$common$mocean$MoceanAdRequest$OVER_18:[I

    iget-object v1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mOver18:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$OVER_18;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$OVER_18;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 127
    :goto_3
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mAreaCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 128
    const-string v0, "area"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mAreaCode:Ljava/lang/String;

    const-string v2, "UTF-8"

    .line 129
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_9
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mCity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 133
    const-string v0, "city_name"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mCity:Ljava/lang/String;

    const-string v2, "UTF-8"

    .line 134
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_a
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mDMA:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 138
    const-string v0, "dma"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mDMA:Ljava/lang/String;

    const-string v2, "UTF-8"

    .line 139
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_b
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mZip:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 142
    const-string v0, "zip"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mZip:Ljava/lang/String;

    const-string v2, "UTF-8"

    .line 143
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_c
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mIsoRegion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 147
    const-string v0, "iso_region"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mIsoRegion:Ljava/lang/String;

    const-string v2, "UTF-8"

    .line 148
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_d
    sget-object v0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mUDID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 154
    const-string v0, "androidaid"

    sget-object v1, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mUDID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_e
    :goto_4
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_3

    .line 165
    const-string v0, "lat"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mLocation:Landroid/location/Location;

    .line 166
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "long"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mLocation:Landroid/location/Location;

    .line 168
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 111
    :pswitch_0
    const-string v0, "over_18"

    const/4 v1, 0x0

    .line 112
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 115
    :pswitch_1
    const-string v0, "over_18"

    const/4 v1, 0x2

    .line 116
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 119
    :pswitch_2
    const-string v0, "over_18"

    const/4 v1, 0x3

    .line 120
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 157
    :cond_f
    iget-object v0, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_e

    .line 159
    const-string v0, "androidid"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->mContext:Landroid/content/Context;

    .line 160
    invoke-static {v1}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->getUdidFromContext(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 171
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

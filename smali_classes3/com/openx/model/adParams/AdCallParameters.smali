.class public Lcom/openx/model/adParams/AdCallParameters;
.super Ljava/lang/Object;
.source "AdCallParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;,
        Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;,
        Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;,
        Lcom/openx/model/adParams/AdCallParameters$OXMGender;
    }
.end annotation


# instance fields
.field private mCustomParams:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSSL:Z

.field private mORTBParams:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParameters:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/openx/model/adParams/AdCallParameters;->mParameters:Ljava/util/Hashtable;

    .line 20
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/openx/model/adParams/AdCallParameters;->mCustomParams:Ljava/util/Hashtable;

    .line 311
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/openx/model/adParams/AdCallParameters;->mORTBParams:Ljava/util/Hashtable;

    return-void
.end method

.method private setPair(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 213
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    if-nez p3, :cond_2

    .line 220
    const-string p3, ""

    .line 223
    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_3
    invoke-virtual {p1, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setPairs(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 233
    if-nez p1, :cond_1

    .line 258
    :cond_0
    return-void

    .line 238
    :cond_1
    if-eqz p2, :cond_2

    .line 240
    invoke-virtual {p2}, Ljava/util/Hashtable;->clear()V

    .line 243
    :cond_2
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 246
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    if-eqz p3, :cond_3

    .line 251
    invoke-virtual {v0, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p2, v1, v0}, Lcom/openx/model/adParams/AdCallParameters;->setPair(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method


# virtual methods
.method public getCustomParameters()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/openx/model/adParams/AdCallParameters;->mCustomParams:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getOpenRTBParameters()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/openx/model/adParams/AdCallParameters;->mORTBParams:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getParameters()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/openx/model/adParams/AdCallParameters;->mParameters:Ljava/util/Hashtable;

    return-object v0
.end method

.method public isSSL()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/openx/model/adParams/AdCallParameters;->mIsSSL:Z

    return v0
.end method

.method public setAppStoreMarketUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 196
    const-string v0, "url"

    invoke-virtual {p0, v0, p1}, Lcom/openx/model/adParams/AdCallParameters;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 441
    const-string v0, "cty"

    invoke-virtual {p0, v0, p1}, Lcom/openx/model/adParams/AdCallParameters;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method public setConnectionType(Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;)V
    .locals 2

    .prologue
    .line 485
    const-string v0, "net"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/openx/model/adParams/AdCallParameters;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method public setCoordinates(DD)V
    .locals 3

    .prologue
    .line 407
    const-string v0, "lat"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/openx/model/adParams/AdCallParameters;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v0, "lon"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/openx/model/adParams/AdCallParameters;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 430
    const-string v0, "cnt"

    invoke-virtual {p0, v0, p1}, Lcom/openx/model/adParams/AdCallParameters;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public setCustomParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 281
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    if-nez p2, :cond_2

    .line 288
    const-string p2, ""

    .line 291
    :cond_2
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-virtual {p0}, Lcom/openx/model/adParams/AdCallParameters;->getCustomParameters()Ljava/util/Hashtable;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, p2}, Lcom/openx/model/adParams/AdCallParameters;->setPair(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCustomParameters(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/openx/model/adParams/AdCallParameters;->getCustomParameters()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "c."

    invoke-direct {p0, p1, v0, v1}, Lcom/openx/model/adParams/AdCallParameters;->setPairs(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public setDeviceCarrier(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 419
    const-string v0, "crr"

    invoke-virtual {p0, v0, p1}, Lcom/openx/model/adParams/AdCallParameters;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public setDma(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 208
    const-string v0, "dma"

    invoke-virtual {p0, v0, p1}, Lcom/openx/model/adParams/AdCallParameters;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public setOpenRTBParameters(Lcom/openx/model/openrtb/BidRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 373
    if-nez p1, :cond_0

    .line 381
    :goto_0
    return-void

    .line 377
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/openx/model/openrtb/BidRequest;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    :goto_1
    const-string v1, "AdCallParameters"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Final json is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0, v0}, Lcom/openx/model/adParams/AdCallParameters;->setOpenRTBParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOpenRTBParameters(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 325
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    invoke-virtual {p0}, Lcom/openx/model/adParams/AdCallParameters;->getOpenRTBParameters()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "openrtb"

    invoke-direct {p0, v0, v1, p1}, Lcom/openx/model/adParams/AdCallParameters;->setPair(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOpenRTBParameters(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 342
    if-nez p1, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    :try_start_0
    const-string v0, "openrtb"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/openx/model/adParams/AdCallParameters;->getOpenRTBParameters()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "openrtb"

    const-string v2, "openrtb"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/openx/model/adParams/AdCallParameters;->setPair(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 358
    invoke-virtual {p0}, Lcom/openx/model/adParams/AdCallParameters;->getOpenRTBParameters()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "openrtb"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/openx/model/adParams/AdCallParameters;->setPair(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/openx/model/adParams/AdCallParameters;->getParameters()Ljava/util/Hashtable;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/openx/model/adParams/AdCallParameters;->setPair(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public setParameters(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/openx/model/adParams/AdCallParameters;->getParameters()Ljava/util/Hashtable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/openx/model/adParams/AdCallParameters;->setPairs(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public setSSL(Z)V
    .locals 0

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/openx/model/adParams/AdCallParameters;->mIsSSL:Z

    .line 131
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 452
    const-string v0, "stt"

    invoke-virtual {p0, v0, p1}, Lcom/openx/model/adParams/AdCallParameters;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method public setUserAge(I)V
    .locals 2

    .prologue
    .line 141
    const-string v0, "age"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/openx/model/adParams/AdCallParameters;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public setUserAnnualIncomeInUs(I)V
    .locals 2

    .prologue
    .line 185
    const-string v0, "inc"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/openx/model/adParams/AdCallParameters;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public setUserEthnicity(Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;)V
    .locals 2

    .prologue
    .line 174
    const-string v0, "eth"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/openx/model/adParams/AdCallParameters;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public setUserGender(Lcom/openx/model/adParams/AdCallParameters$OXMGender;)V
    .locals 2

    .prologue
    .line 152
    const-string v0, "gen"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/openx/model/adParams/AdCallParameters;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 474
    const-string v0, "xid"

    invoke-virtual {p0, v0, p1}, Lcom/openx/model/adParams/AdCallParameters;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public setUserMaritalStatus(Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;)V
    .locals 2

    .prologue
    .line 163
    const-string v0, "mar"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/openx/model/adParams/AdCallParameters;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public setZipCode(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 463
    const-string v0, "zip"

    invoke-virtual {p0, v0, p1}, Lcom/openx/model/adParams/AdCallParameters;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    return-void
.end method

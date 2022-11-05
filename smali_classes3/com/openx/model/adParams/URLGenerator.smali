.class public Lcom/openx/model/adParams/URLGenerator;
.super Ljava/lang/Object;
.source "URLGenerator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "URLGenerator"


# instance fields
.field private transient listener:Lcom/openx/core/network/BaseResponseHandler;

.field private transient mAdCallParams:Lcom/openx/model/adParams/AdCallParameters;

.field private urlListener:Lcom/openx/core/network/GenerateURLListener;


# direct methods
.method public constructor <init>(Lcom/openx/core/network/GenerateURLListener;Lcom/openx/core/network/BaseResponseHandler;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/openx/model/adParams/URLGenerator;->listener:Lcom/openx/core/network/BaseResponseHandler;

    .line 48
    iput-object p1, p0, Lcom/openx/model/adParams/URLGenerator;->urlListener:Lcom/openx/core/network/GenerateURLListener;

    .line 50
    return-void
.end method

.method private convertParamsToString(Ljava/util/Hashtable;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 128
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 132
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    :try_start_0
    const-string v2, "af"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 140
    const-string v2, "\\s+"

    const-string v5, ""

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 141
    :try_start_1
    const-string v1, "utf-8"

    invoke-static {v2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    const-string v1, "+"

    const-string v5, "%20"

    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 152
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 145
    :catch_0
    move-exception v2

    .line 147
    :goto_2
    new-instance v5, Lcom/openx/errors/UnknownError;

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v5}, Lcom/openx/errors/UnknownError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    invoke-direct {p0, v5}, Lcom/openx/model/adParams/URLGenerator;->setErrorCallBack(Lcom/openx/errors/AdError;)V

    goto :goto_1

    .line 154
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 145
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_2
.end method

.method private detectUnspecifiedParams(Ljava/util/Hashtable;)V
    .locals 6
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
    .line 160
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getDeviceManager()Lcom/openx/common/deviceData/listeners/DeviceInfoListener;

    move-result-object v0

    .line 161
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openx/core/sdk/OXMManagersResolver;->getLocationManager()Lcom/openx/common/deviceData/listeners/OXMLocationListener;

    move-result-object v1

    .line 162
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openx/core/sdk/OXMManagersResolver;->getNetworkManager()Lcom/openx/common/deviceData/listeners/NetworkListener;

    move-result-object v2

    .line 163
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/openx/core/sdk/OXMManagersResolver;->getAdTruthManager()Lcom/openx/common/deviceData/listeners/AdTruthListener;

    move-result-object v3

    .line 164
    const-string v4, "sp"

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 166
    const-string v4, "sp"

    const-string v5, "Android"

    invoke-virtual {p1, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_0
    invoke-direct {p0, p1}, Lcom/openx/model/adParams/URLGenerator;->setSDKVersionParam(Ljava/util/Hashtable;)V

    .line 170
    invoke-direct {p0, p1}, Lcom/openx/model/adParams/URLGenerator;->setMRAIDParam(Ljava/util/Hashtable;)V

    .line 172
    invoke-direct {p0, p1, v0}, Lcom/openx/model/adParams/URLGenerator;->setDeviceDensityParam(Ljava/util/Hashtable;Lcom/openx/common/deviceData/listeners/DeviceInfoListener;)V

    .line 174
    invoke-direct {p0, p1}, Lcom/openx/model/adParams/URLGenerator;->setAppNameParam(Ljava/util/Hashtable;)V

    .line 176
    invoke-direct {p0, p1}, Lcom/openx/model/adParams/URLGenerator;->setPackageNameParam(Ljava/util/Hashtable;)V

    .line 178
    invoke-direct {p0, p1}, Lcom/openx/model/adParams/URLGenerator;->setAdvertisingIdParams(Ljava/util/Hashtable;)V

    .line 180
    sget-object v4, Lcom/openx/core/sdk/OXSettings;->ADID:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/openx/core/sdk/OXSettings;->isLimitAdTrackingEnabled:Z

    if-eqz v4, :cond_1

    .line 200
    :goto_0
    return-void

    .line 182
    :cond_1
    if-eqz v1, :cond_2

    .line 183
    invoke-direct {p0, p1, v0, v1}, Lcom/openx/model/adParams/URLGenerator;->setLocationParams(Ljava/util/Hashtable;Lcom/openx/common/deviceData/listeners/DeviceInfoListener;Lcom/openx/common/deviceData/listeners/OXMLocationListener;)V

    .line 186
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/openx/model/adParams/URLGenerator;->setCarrierParam(Ljava/util/Hashtable;Lcom/openx/common/deviceData/listeners/DeviceInfoListener;)V

    .line 187
    if-eqz v1, :cond_3

    .line 188
    invoke-direct {p0, p1, v1}, Lcom/openx/model/adParams/URLGenerator;->setCountryParam(Ljava/util/Hashtable;Lcom/openx/common/deviceData/listeners/OXMLocationListener;)V

    .line 189
    invoke-direct {p0, p1, v1}, Lcom/openx/model/adParams/URLGenerator;->setCityParam(Ljava/util/Hashtable;Lcom/openx/common/deviceData/listeners/OXMLocationListener;)V

    .line 190
    invoke-direct {p0, p1, v1}, Lcom/openx/model/adParams/URLGenerator;->setStateParam(Ljava/util/Hashtable;Lcom/openx/common/deviceData/listeners/OXMLocationListener;)V

    .line 191
    invoke-direct {p0, p1, v1}, Lcom/openx/model/adParams/URLGenerator;->setZipParam(Ljava/util/Hashtable;Lcom/openx/common/deviceData/listeners/OXMLocationListener;)V

    .line 194
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/openx/model/adParams/URLGenerator;->setDeviceIdParams(Ljava/util/Hashtable;Lcom/openx/common/deviceData/listeners/DeviceInfoListener;)V

    .line 196
    invoke-direct {p0, p1, v0, v2}, Lcom/openx/model/adParams/URLGenerator;->setNetworkParams(Ljava/util/Hashtable;Lcom/openx/common/deviceData/listeners/DeviceInfoListener;Lcom/openx/common/deviceData/listeners/NetworkListener;)V

    .line 198
    invoke-direct {p0, p1, v3}, Lcom/openx/model/adParams/URLGenerator;->setAdtruthParams(Ljava/util/Hashtable;Lcom/openx/common/deviceData/listeners/AdTruthListener;)V

    goto :goto_0
.end method

.method private setAdCallParams(Lcom/openx/model/adParams/AdCallParameters;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/openx/model/adParams/URLGenerator;->mAdCallParams:Lcom/openx/model/adParams/AdCallParameters;

    .line 55
    return-void
.end method

.method private setAdtruthParams(Ljava/util/Hashtable;Lcom/openx/common/deviceData/listeners/AdTruthListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/openx/common/deviceData/listeners/AdTruthListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 315
    const-string v0, "tp.at.i"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    invoke-interface {p2}, Lcom/openx/common/deviceData/listeners/AdTruthListener;->readAdTruth()Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    :try_start_0
    const-string v1, "tp.at.i"

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 326
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setAdvertisingIdParams(Ljava/util/Hashtable;)V
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
    .line 264
    sget-object v0, Lcom/openx/core/sdk/OXSettings;->ADID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 266
    const-string v0, "did.adid"

    sget-object v1, Lcom/openx/core/sdk/OXSettings;->ADID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v1, "did.adid.enabled"

    sget-boolean v0, Lcom/openx/core/sdk/OXSettings;->isLimitAdTrackingEnabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_0
    return-void

    .line 267
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAppNameParam(Ljava/util/Hashtable;)V
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
    .line 281
    invoke-static {}, Lcom/openx/core/sdk/OXSettings;->getAppName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    const-string v0, "app.name"

    invoke-static {}, Lcom/openx/core/sdk/OXSettings;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_0
    return-void
.end method

.method private setCarrierParam(Ljava/util/Hashtable;Lcom/openx/common/deviceData/listeners/DeviceInfoListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/openx/common/deviceData/listeners/DeviceInfoListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 252
    const-string v0, "crr"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    invoke-interface {p2}, Lcom/openx/common/deviceData/listeners/DeviceInfoListener;->getCarrier()Ljava/lang/String;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    const-string v1, "crr"

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_0
    return-void
.end method

.method private setCityParam(Ljava/util/Hashtable;Lcom/openx/common/deviceData/listeners/OXMLocationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/openx/common/deviceData/listeners/OXMLocationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 228
    const-string v0, "cty"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    invoke-interface {p2}, Lcom/openx/common/deviceData/listeners/OXMLocationListener;->getCity()Ljava/lang/String;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    const-string v1, "cty"

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_0
    return-void
.end method

.method private setCountryParam(Ljava/util/Hashtable;Lcom/openx/common/deviceData/listeners/OXMLocationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/openx/common/deviceData/listeners/OXMLocationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 240
    const-string v0, "cnt"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    invoke-interface {p2}, Lcom/openx/common/deviceData/listeners/OXMLocationListener;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    const-string v1, "cnt"

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_0
    return-void
.end method

.method private setDeviceDensityParam(Ljava/util/Hashtable;Lcom/openx/common/deviceData/listeners/DeviceInfoListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/openx/common/deviceData/listeners/DeviceInfoListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 289
    const-string v0, "dd"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    invoke-interface {p2}, Lcom/openx/common/deviceData/listeners/DeviceInfoListener;->getDeviceDensity()F

    move-result v0

    .line 292
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 294
    const-string v1, "dd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_0
    return-void
.end method

.method private setDeviceIdParams(Ljava/util/Hashtable;Lcom/openx/common/deviceData/listeners/DeviceInfoListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/openx/common/deviceData/listeners/DeviceInfoListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 364
    sget-object v0, Lcom/openx/core/sdk/OXSettings;->ADID:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 367
    invoke-interface {p2}, Lcom/openx/common/deviceData/listeners/DeviceInfoListener;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    const-string v1, "did.ai.md5"

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v1, "did.ai.sha1"

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->generateSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :cond_0
    const-string v0, "did.o1"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    invoke-interface {p2}, Lcom/openx/common/deviceData/listeners/DeviceInfoListener;->getODIN1()Ljava/lang/String;

    move-result-object v0

    .line 376
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 378
    const-string v1, "did.o1"

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    :cond_1
    invoke-interface {p2}, Lcom/openx/common/deviceData/listeners/DeviceInfoListener;->getDeviceMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 390
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 391
    const-string v1, "did.ma.md5"

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v1, "did.ma.sha1"

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->generateSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    :cond_2
    return-void
.end method

.method private setErrorCallBack(Lcom/openx/errors/AdError;)V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/openx/model/adParams/URLGenerator;->listener:Lcom/openx/core/network/BaseResponseHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/model/adParams/URLGenerator;->listener:Lcom/openx/core/network/BaseResponseHandler;

    instance-of v0, v0, Lcom/openx/model/network/AdModelLoadedListener;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/openx/model/adParams/URLGenerator;->listener:Lcom/openx/core/network/BaseResponseHandler;

    check-cast v0, Lcom/openx/model/network/AdModelLoadedListener;

    invoke-interface {v0, p1}, Lcom/openx/model/network/AdModelLoadedListener;->adModelNonCriticalError(Lcom/openx/errors/AdError;)V

    .line 421
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/openx/model/adParams/URLGenerator;->listener:Lcom/openx/core/network/BaseResponseHandler;

    check-cast v0, Lcom/openx/view/tp/chain/network/SDKChainLoadListener;

    invoke-interface {v0, p1}, Lcom/openx/view/tp/chain/network/SDKChainLoadListener;->onSDKChainLoadNonCriticalError(Lcom/openx/errors/AdError;)V

    goto :goto_0
.end method

.method private setLocation(Ljava/util/Hashtable;Lcom/openx/common/deviceData/listeners/OXMLocationListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/openx/common/deviceData/listeners/OXMLocationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 425
    const-string v0, "lat"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 427
    invoke-interface {p2}, Lcom/openx/common/deviceData/listeners/OXMLocationListener;->getLatitude()Ljava/lang/Double;

    move-result-object v0

    .line 429
    if-nez v0, :cond_0

    .line 431
    invoke-interface {p2}, Lcom/openx/common/deviceData/listeners/OXMLocationListener;->resetLocation()V

    .line 433
    invoke-interface {p2}, Lcom/openx/common/deviceData/listeners/OXMLocationListener;->getLatitude()Ljava/lang/Double;

    move-result-object v0

    .line 437
    :cond_0
    if-eqz v0, :cond_1

    .line 439
    const-string v1, "URLGenerator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v1, "lat"

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string v0, "ltsrc"

    const-string v1, "gps"

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    :cond_1
    const-string v0, "lon"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 448
    invoke-interface {p2}, Lcom/openx/common/deviceData/listeners/OXMLocationListener;->getLongtitude()Ljava/lang/Double;

    move-result-object v0

    .line 450
    if-nez v0, :cond_2

    .line 452
    invoke-interface {p2}, Lcom/openx/common/deviceData/listeners/OXMLocationListener;->resetLocation()V

    .line 454
    invoke-interface {p2}, Lcom/openx/common/deviceData/listeners/OXMLocationListener;->getLongtitude()Ljava/lang/Double;

    move-result-object v0

    .line 458
    :cond_2
    if-eqz v0, :cond_3

    .line 461
    const-string v1, "URLGenerator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v1, "lon"

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :cond_3
    return-void
.end method

.method private setLocationParams(Ljava/util/Hashtable;Lcom/openx/common/deviceData/listeners/DeviceInfoListener;Lcom/openx/common/deviceData/listeners/OXMLocationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/openx/common/deviceData/listeners/DeviceInfoListener;",
            "Lcom/openx/common/deviceData/listeners/OXMLocationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 399
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {p2, v0}, Lcom/openx/common/deviceData/listeners/DeviceInfoListener;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    invoke-direct {p0, p1, p3}, Lcom/openx/model/adParams/URLGenerator;->setLocation(Ljava/util/Hashtable;Lcom/openx/common/deviceData/listeners/OXMLocationListener;)V

    .line 408
    :goto_0
    return-void

    .line 405
    :cond_0
    new-instance v0, Lcom/openx/errors/PermissionDeniedForApplication;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {v0, v1}, Lcom/openx/errors/PermissionDeniedForApplication;-><init>(Ljava/lang/String;)V

    .line 406
    invoke-direct {p0, v0}, Lcom/openx/model/adParams/URLGenerator;->setErrorCallBack(Lcom/openx/errors/AdError;)V

    goto :goto_0
.end method

.method private setMRAIDParam(Ljava/util/Hashtable;)V
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
    .line 301
    const-string v0, "af"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->avoidJSC_MOB273()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    const-string v0, "af"

    const-string v1, "3,5"

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_0
    return-void
.end method

.method private setNetworkParams(Ljava/util/Hashtable;Lcom/openx/common/deviceData/listeners/DeviceInfoListener;Lcom/openx/common/deviceData/listeners/NetworkListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/openx/common/deviceData/listeners/DeviceInfoListener;",
            "Lcom/openx/common/deviceData/listeners/NetworkListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 334
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {p2, v0}, Lcom/openx/common/deviceData/listeners/DeviceInfoListener;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-direct {p0, p1, p3}, Lcom/openx/model/adParams/URLGenerator;->setNetworkType(Ljava/util/Hashtable;Lcom/openx/common/deviceData/listeners/NetworkListener;)V

    .line 344
    :goto_0
    return-void

    .line 340
    :cond_0
    new-instance v0, Lcom/openx/errors/PermissionDeniedForApplication;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-direct {v0, v1}, Lcom/openx/errors/PermissionDeniedForApplication;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-direct {p0, v0}, Lcom/openx/model/adParams/URLGenerator;->setErrorCallBack(Lcom/openx/errors/AdError;)V

    goto :goto_0
.end method

.method private setNetworkType(Ljava/util/Hashtable;Lcom/openx/common/deviceData/listeners/NetworkListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/openx/common/deviceData/listeners/NetworkListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 348
    const-string v0, "net"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    invoke-interface {p2}, Lcom/openx/common/deviceData/listeners/NetworkListener;->getConnectionType()Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

    move-result-object v0

    .line 351
    sget-object v1, Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;->WIFI:Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

    if-ne v0, v1, :cond_1

    .line 353
    const-string v0, "net"

    const-string v1, "wifi"

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    sget-object v1, Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;->CELL:Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

    if-ne v0, v1, :cond_0

    .line 357
    const-string v0, "net"

    const-string v1, "cell"

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setPackageNameParam(Ljava/util/Hashtable;)V
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
    .line 273
    invoke-static {}, Lcom/openx/core/sdk/OXSettings;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    const-string v0, "app.bundle"

    invoke-static {}, Lcom/openx/core/sdk/OXSettings;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_0
    return-void
.end method

.method private setSDKVersionParam(Ljava/util/Hashtable;)V
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
    .line 469
    const-string v0, "sv"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    :try_start_0
    sget-object v0, Lcom/openx/core/sdk/OXSettings;->SDK_VERSION:Ljava/lang/String;

    .line 474
    if-eqz v0, :cond_0

    .line 476
    const-string v1, "sv"

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 479
    :catch_0
    move-exception v0

    .line 481
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setStateParam(Ljava/util/Hashtable;Lcom/openx/common/deviceData/listeners/OXMLocationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/openx/common/deviceData/listeners/OXMLocationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 216
    const-string v0, "stt"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    invoke-interface {p2}, Lcom/openx/common/deviceData/listeners/OXMLocationListener;->getState()Ljava/lang/String;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    const-string v1, "stt"

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_0
    return-void
.end method

.method private setZipParam(Ljava/util/Hashtable;Lcom/openx/common/deviceData/listeners/OXMLocationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/openx/common/deviceData/listeners/OXMLocationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 204
    const-string v0, "zip"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-interface {p2}, Lcom/openx/common/deviceData/listeners/OXMLocationListener;->getZipCode()Ljava/lang/String;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    const-string v1, "zip"

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_0
    return-void
.end method


# virtual methods
.method public getAdCallParams()Lcom/openx/model/adParams/AdCallParameters;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/openx/model/adParams/URLGenerator;->mAdCallParams:Lcom/openx/model/adParams/AdCallParameters;

    return-object v0
.end method

.method public getURL(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 90
    .line 93
    invoke-virtual {p0}, Lcom/openx/model/adParams/URLGenerator;->getAdCallParams()Lcom/openx/model/adParams/AdCallParameters;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 95
    invoke-virtual {p0}, Lcom/openx/model/adParams/URLGenerator;->getAdCallParams()Lcom/openx/model/adParams/AdCallParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/model/adParams/AdCallParameters;->getCustomParameters()Ljava/util/Hashtable;

    move-result-object v1

    .line 96
    invoke-virtual {p0}, Lcom/openx/model/adParams/URLGenerator;->getAdCallParams()Lcom/openx/model/adParams/AdCallParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/model/adParams/AdCallParameters;->getOpenRTBParameters()Ljava/util/Hashtable;

    move-result-object v0

    .line 98
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    if-eqz p2, :cond_0

    .line 102
    invoke-direct {p0, p2}, Lcom/openx/model/adParams/URLGenerator;->detectUnspecifiedParams(Ljava/util/Hashtable;)V

    .line 103
    invoke-direct {p0, p2}, Lcom/openx/model/adParams/URLGenerator;->convertParamsToString(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_0
    if-eqz v1, :cond_1

    .line 109
    invoke-direct {p0, v1}, Lcom/openx/model/adParams/URLGenerator;->convertParamsToString(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_1
    if-eqz v0, :cond_2

    .line 114
    invoke-direct {p0, v0}, Lcom/openx/model/adParams/URLGenerator;->convertParamsToString(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public setURLParams(Lcom/openx/model/adParams/AdCallParameters;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    if-nez p1, :cond_0

    .line 67
    new-instance v1, Lcom/openx/model/adParams/AdCallParameters;

    invoke-direct {v1}, Lcom/openx/model/adParams/AdCallParameters;-><init>()V

    invoke-direct {p0, v1}, Lcom/openx/model/adParams/URLGenerator;->setAdCallParams(Lcom/openx/model/adParams/AdCallParameters;)V

    .line 74
    :goto_0
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openx/core/sdk/OXMManagersResolver;->getAdTruthManager()Lcom/openx/common/deviceData/listeners/AdTruthListener;

    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/openx/model/adParams/URLGenerator;->urlListener:Lcom/openx/core/network/GenerateURLListener;

    if-eqz v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/openx/model/adParams/URLGenerator;->urlListener:Lcom/openx/core/network/GenerateURLListener;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/openx/model/adParams/URLGenerator;->getAdCallParams()Lcom/openx/model/adParams/AdCallParameters;

    move-result-object v3

    invoke-interface {v2, v0, v3, v1}, Lcom/openx/core/network/GenerateURLListener;->customURLParams(Ljava/lang/String;Lcom/openx/model/adParams/AdCallParameters;Lcom/openx/common/deviceData/listeners/AdTruthListener;)Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_1
    return-object v0

    .line 71
    :cond_0
    invoke-direct {p0, p1}, Lcom/openx/model/adParams/URLGenerator;->setAdCallParams(Lcom/openx/model/adParams/AdCallParameters;)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

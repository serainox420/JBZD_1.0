.class Lcom/inmobi/monetization/internal/c;
.super Lcom/inmobi/commons/network/Request;
.source "AdRequest.java"


# static fields
.field protected static a:Ljava/lang/String;

.field private static e:[B


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field private f:[B

.field private g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "http://i.w.inmobi.com/showad.asm"

    sput-object v0, Lcom/inmobi/monetization/internal/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lcom/inmobi/monetization/internal/c;->a:Ljava/lang/String;

    sget-object v1, Lcom/inmobi/commons/network/Request$Format;->KEY_VAL:Lcom/inmobi/commons/network/Request$Format;

    sget-object v2, Lcom/inmobi/commons/network/Request$Method;->POST:Lcom/inmobi/commons/network/Request$Method;

    invoke-direct {p0, v0, v1, v2}, Lcom/inmobi/commons/network/Request;-><init>(Ljava/lang/String;Lcom/inmobi/commons/network/Request$Format;Lcom/inmobi/commons/network/Request$Method;)V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/monetization/internal/c;->b:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/monetization/internal/c;->c:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/monetization/internal/c;->d:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/inmobi/monetization/internal/c;->mReqParams:Ljava/util/HashMap;

    invoke-static {}, Lcom/inmobi/monetization/internal/configs/Initializer;->getConfigParams()Lcom/inmobi/monetization/internal/configs/ConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/monetization/internal/configs/ConfigParams;->getDeviceIdMaskMap()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/network/RequestBuilderUtils;->fillIdentityMap(Ljava/util/Map;Ljava/util/Map;Z)V

    .line 38
    iget-object v0, p0, Lcom/inmobi/monetization/internal/c;->mReqParams:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/inmobi/commons/network/RequestBuilderUtils;->fillAppInfoMap(Ljava/util/Map;)V

    .line 39
    iget-object v0, p0, Lcom/inmobi/monetization/internal/c;->mReqParams:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/inmobi/commons/network/RequestBuilderUtils;->fillDemogMap(Ljava/util/Map;)V

    .line 40
    iget-object v0, p0, Lcom/inmobi/monetization/internal/c;->mReqParams:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/inmobi/commons/network/RequestBuilderUtils;->fillDeviceMap(Ljava/util/Map;)V

    .line 41
    iget-object v0, p0, Lcom/inmobi/monetization/internal/c;->mReqParams:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/inmobi/commons/network/RequestBuilderUtils;->fillLocationMap(Ljava/util/Map;)V

    .line 42
    invoke-static {}, Lcom/inmobi/monetization/internal/configs/Initializer;->getConfigParams()Lcom/inmobi/monetization/internal/configs/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/configs/ConfigParams;->getFetchTimeOut()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/inmobi/monetization/internal/c;->setTimeout(I)V

    .line 44
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 84
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 86
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/inmobi/commons/internal/EncryptionUtils;->generateKey(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/c;->g:[B

    .line 87
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/inmobi/commons/internal/EncryptionUtils;->generateKey(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/c;->f:[B

    .line 88
    invoke-static {}, Lcom/inmobi/commons/internal/EncryptionUtils;->keag()[B

    move-result-object v0

    sput-object v0, Lcom/inmobi/monetization/internal/c;->e:[B

    .line 89
    invoke-static {}, Lcom/inmobi/monetization/internal/configs/PkInitilaizer;->getConfigParams()Lcom/inmobi/monetization/internal/configs/PkParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/configs/PkParams;->getExponent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/c;->b:Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/inmobi/monetization/internal/configs/PkInitilaizer;->getConfigParams()Lcom/inmobi/monetization/internal/configs/PkParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/configs/PkParams;->getModulus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/c;->c:Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/inmobi/monetization/internal/configs/PkInitilaizer;->getConfigParams()Lcom/inmobi/monetization/internal/configs/PkParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/configs/PkParams;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/c;->d:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/inmobi/monetization/internal/c;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/internal/c;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/internal/c;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Exception retreiving Ad due to key problem"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    .line 105
    :goto_0
    return-object v0

    .line 101
    :cond_1
    sget-object v1, Lcom/inmobi/monetization/internal/c;->e:[B

    iget-object v2, p0, Lcom/inmobi/monetization/internal/c;->f:[B

    iget-object v3, p0, Lcom/inmobi/monetization/internal/c;->g:[B

    iget-object v4, p0, Lcom/inmobi/monetization/internal/c;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/inmobi/monetization/internal/c;->b:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/inmobi/commons/internal/EncryptionUtils;->SeMeGe(Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string v1, "sm"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v0, "sn"

    iget-object v1, p0, Lcom/inmobi/monetization/internal/c;->d:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v0, "&"

    invoke-static {v6, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->encodeMapAndconvertToDelimitedString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/inmobi/monetization/internal/c;->mReqParams:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/inmobi/monetization/internal/c;->mReqParams:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 55
    :cond_0
    return-void
.end method

.method a()[B
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/inmobi/monetization/internal/c;->f:[B

    return-object v0
.end method

.method b(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/inmobi/monetization/internal/c;->mReqParams:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 62
    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/inmobi/monetization/internal/c;->mReqParams:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 66
    :cond_0
    return-void
.end method

.method b()[B
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/inmobi/monetization/internal/c;->e:[B

    return-object v0
.end method

.method protected getPostBody()Ljava/lang/String;
    .locals 4

    .prologue
    .line 73
    invoke-super {p0}, Lcom/inmobi/commons/network/Request;->getPostBody()Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string v1, "[InMobi]-[Monetization]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raw Postbody: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/inmobi/monetization/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/inmobi/commons/network/Request;->setUrl(Ljava/lang/String;)V

    .line 134
    return-void
.end method

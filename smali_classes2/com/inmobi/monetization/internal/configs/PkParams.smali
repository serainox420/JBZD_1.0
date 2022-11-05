.class public Lcom/inmobi/monetization/internal/configs/PkParams;
.super Ljava/lang/Object;
.source "PkParams.java"


# static fields
.field public static SK_ALGORITHM:Ljava/lang/String;

.field public static SK_EXPONENT:Ljava/lang/String;

.field public static SK_MODULUS:Ljava/lang/String;

.field public static SK_VERSION:Ljava/lang/String;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, ""

    sput-object v0, Lcom/inmobi/monetization/internal/configs/PkParams;->SK_ALGORITHM:Ljava/lang/String;

    .line 10
    const-string v0, ""

    sput-object v0, Lcom/inmobi/monetization/internal/configs/PkParams;->SK_MODULUS:Ljava/lang/String;

    .line 11
    const-string v0, ""

    sput-object v0, Lcom/inmobi/monetization/internal/configs/PkParams;->SK_EXPONENT:Ljava/lang/String;

    .line 12
    const-string v0, ""

    sput-object v0, Lcom/inmobi/monetization/internal/configs/PkParams;->SK_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/inmobi/monetization/internal/configs/PkParams;->SK_ALGORITHM:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceIdMaskMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/inmobi/monetization/internal/configs/PkParams;->a:Ljava/util/Map;

    return-object v0
.end method

.method public getExponent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/inmobi/monetization/internal/configs/PkParams;->SK_EXPONENT:Ljava/lang/String;

    return-object v0
.end method

.method public getModulus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/inmobi/monetization/internal/configs/PkParams;->SK_MODULUS:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/inmobi/monetization/internal/configs/PkParams;->SK_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public setFromMap(Ljava/util/Map;)V
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
    .line 51
    const-string v0, "pk"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 52
    const-string v1, "ver"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/inmobi/monetization/internal/configs/PkParams;->SK_VERSION:Ljava/lang/String;

    .line 53
    sget-object v1, Lcom/inmobi/monetization/internal/configs/PkParams;->SK_VERSION:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const-string v0, "[InMobi]-4.5.5"

    const-string v1, "Key ver has illegal value"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 58
    :cond_0
    const-string v1, "alg"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/inmobi/monetization/internal/configs/PkParams;->SK_ALGORITHM:Ljava/lang/String;

    .line 60
    sget-object v1, Lcom/inmobi/monetization/internal/configs/PkParams;->SK_ALGORITHM:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    const-string v0, "[InMobi]-4.5.5"

    const-string v1, "Key alg has illegal value"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 66
    :cond_1
    sget-object v1, Lcom/inmobi/monetization/internal/configs/PkParams;->SK_ALGORITHM:Ljava/lang/String;

    const-string v2, "rsa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 68
    const-string v1, "val"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 70
    const-string v1, "e"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/inmobi/monetization/internal/configs/PkParams;->SK_EXPONENT:Ljava/lang/String;

    .line 72
    const-string v1, "m"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/monetization/internal/configs/PkParams;->SK_MODULUS:Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/inmobi/monetization/internal/configs/PkParams;->SK_MODULUS:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    const-string v0, "[InMobi]-4.5.5"

    const-string v1, "Key m has illegal value"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 80
    :cond_2
    sget-object v0, Lcom/inmobi/monetization/internal/configs/PkParams;->SK_EXPONENT:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    const-string v0, "[InMobi]-4.5.5"

    const-string v1, "Key e has illegal value"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 86
    :cond_3
    sget-object v0, Lcom/inmobi/monetization/internal/configs/PkParams;->SK_EXPONENT:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isHexString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 88
    const-string v0, "[InMobi]-4.5.5"

    const-string v1, "Key e has illegal value"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 92
    :cond_4
    sget-object v0, Lcom/inmobi/monetization/internal/configs/PkParams;->SK_MODULUS:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isHexString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 94
    const-string v0, "[InMobi]-4.5.5"

    const-string v1, "Key m has illegal value"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 99
    :cond_5
    return-void
.end method

.class public Lcom/inmobi/monetization/internal/configs/PlayableAdsConfigParams;
.super Ljava/lang/Object;
.source "PlayableAdsConfigParams.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "3b3941b6-4683-400a-a542-6ccd3d13abe6"

    iput-object v0, p0, Lcom/inmobi/monetization/internal/configs/PlayableAdsConfigParams;->a:Ljava/lang/String;

    .line 13
    const-string v0, "f1478eab-8535-4c85-8ab7-5bdf3f2f7706"

    iput-object v0, p0, Lcom/inmobi/monetization/internal/configs/PlayableAdsConfigParams;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSecretKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/inmobi/monetization/internal/configs/PlayableAdsConfigParams;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSecretToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/inmobi/monetization/internal/configs/PlayableAdsConfigParams;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setFromMap(Ljava/util/Map;)V
    .locals 1
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
    .line 25
    const-string v0, "st"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/configs/PlayableAdsConfigParams;->a:Ljava/lang/String;

    .line 26
    const-string v0, "sk"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/configs/PlayableAdsConfigParams;->b:Ljava/lang/String;

    .line 28
    return-void
.end method

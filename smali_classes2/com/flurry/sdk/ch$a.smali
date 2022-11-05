.class final Lcom/flurry/sdk/ch$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/monetization/IMInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ch;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/ch;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/flurry/sdk/ch$a;->a:Lcom/flurry/sdk/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/ch;B)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ch$a;-><init>(Lcom/flurry/sdk/ch;)V

    return-void
.end method


# virtual methods
.method public final onDismissInterstitialScreen(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/flurry/sdk/ch$a;->a:Lcom/flurry/sdk/ch;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ch;->c(Ljava/util/Map;)V

    .line 115
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/ch;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InMobi Interstitial ad dismissed."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public final onInterstitialFailed(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMErrorCode;)V
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/flurry/sdk/ch$a;->a:Lcom/flurry/sdk/ch;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ch;->d(Ljava/util/Map;)V

    .line 100
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/ch;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InMobi imAdView ad request failed. ErrorCode  = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/inmobi/monetization/IMErrorCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public final onInterstitialInteraction(Lcom/inmobi/monetization/IMInterstitial;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/monetization/IMInterstitial;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/flurry/sdk/ch$a;->a:Lcom/flurry/sdk/ch;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ch;->b(Ljava/util/Map;)V

    .line 132
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/ch;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InMobi onBannerInteraction"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public final onInterstitialLoaded(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 3

    .prologue
    .line 105
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/ch;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InMobi Interstitial ad request completed."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$State;->READY:Lcom/inmobi/monetization/IMInterstitial$State;

    invoke-virtual {p1}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMInterstitial$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/flurry/sdk/ch$a;->a:Lcom/flurry/sdk/ch;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ch;->a(Ljava/util/Map;)V

    .line 108
    invoke-virtual {p1}, Lcom/inmobi/monetization/IMInterstitial;->show()V

    .line 110
    :cond_0
    return-void
.end method

.method public final onLeaveApplication(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/flurry/sdk/ch$a;->a:Lcom/flurry/sdk/ch;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ch;->b(Ljava/util/Map;)V

    .line 126
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/ch;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InMobi onLeaveApplication"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public final onShowInterstitialScreen(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 3

    .prologue
    .line 120
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/ch;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InMobi Interstitial ad shown."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

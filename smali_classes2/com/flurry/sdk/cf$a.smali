.class final Lcom/flurry/sdk/cf$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/monetization/IMBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/cf;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/cf;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/flurry/sdk/cf$a;->a:Lcom/flurry/sdk/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/cf;B)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/flurry/sdk/cf$a;-><init>(Lcom/flurry/sdk/cf;)V

    return-void
.end method


# virtual methods
.method public final onBannerInteraction(Lcom/inmobi/monetization/IMBanner;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/monetization/IMBanner;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/flurry/sdk/cf$a;->a:Lcom/flurry/sdk/cf;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cf;->onAdClicked(Ljava/util/Map;)V

    .line 148
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/cf;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InMobi onBannerInteraction"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public final onBannerRequestFailed(Lcom/inmobi/monetization/IMBanner;Lcom/inmobi/monetization/IMErrorCode;)V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/flurry/sdk/cf$a;->a:Lcom/flurry/sdk/cf;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cf;->onRenderFailed(Ljava/util/Map;)V

    .line 129
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/cf;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InMobi imAdView ad request failed. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Lcom/inmobi/monetization/IMErrorCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public final onBannerRequestSucceeded(Lcom/inmobi/monetization/IMBanner;)V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/flurry/sdk/cf$a;->a:Lcom/flurry/sdk/cf;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cf;->onAdShown(Ljava/util/Map;)V

    .line 137
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/cf;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InMobi imAdView ad request completed."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public final onDismissBannerScreen(Lcom/inmobi/monetization/IMBanner;)V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/flurry/sdk/cf$a;->a:Lcom/flurry/sdk/cf;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cf;->onAdClosed(Ljava/util/Map;)V

    .line 123
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/cf;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InMobi imAdView dismiss ad."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public final onLeaveApplication(Lcom/inmobi/monetization/IMBanner;)V
    .locals 3

    .prologue
    .line 142
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/cf;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InMobi onLeaveApplication"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public final onShowBannerScreen(Lcom/inmobi/monetization/IMBanner;)V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/flurry/sdk/cf$a;->a:Lcom/flurry/sdk/cf;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cf;->onAdClicked(Ljava/util/Map;)V

    .line 117
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/cf;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InMobi imAdView ad shown."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

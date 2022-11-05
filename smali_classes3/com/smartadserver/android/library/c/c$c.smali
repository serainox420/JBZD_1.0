.class Lcom/smartadserver/android/library/c/c$c;
.super Ljava/lang/Object;
.source "SASAppLovinAdapter.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdRewardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field a:D

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/smartadserver/android/library/c/c;


# direct methods
.method private constructor <init>(Lcom/smartadserver/android/library/c/c;)V
    .locals 2

    .prologue
    .line 125
    iput-object p1, p0, Lcom/smartadserver/android/library/c/c$c;->c:Lcom/smartadserver/android/library/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/smartadserver/android/library/c/c$c;->a:D

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/smartadserver/android/library/c/c$c;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartadserver/android/library/c/c;Lcom/smartadserver/android/library/c/c$1;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/c/c$c;-><init>(Lcom/smartadserver/android/library/c/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 131
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/smartadserver/android/library/c/c$c;->a:D

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/smartadserver/android/library/c/c$c;->b:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public b()D
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/smartadserver/android/library/c/c$c;->a:D

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public userDeclinedToViewAd(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    .prologue
    .line 185
    const-string v0, "SASAppLovinAdapter"

    const-string v1, "AppLovin userDeclinedToViewAd for rewarded interstitial"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$c;->c:Lcom/smartadserver/android/library/c/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/c;->b(Lcom/smartadserver/android/library/c/c;)V

    .line 187
    return-void
.end method

.method public userOverQuota(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 157
    const-string v0, "SASAppLovinAdapter"

    const-string v1, "AppLovin userOverQuota for rewarded interstitial"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 162
    const-string v0, "SASAppLovinAdapter"

    const-string v1, "AppLovin userRewardRejected for rewarded interstitial"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public userRewardVerified(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 145
    const-string v0, "SASAppLovinAdapter"

    const-string v1, "AppLovin userRewardVerified for rewarded interstitial"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "currency"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/smartadserver/android/library/c/c$c;->b:Ljava/lang/String;

    .line 150
    :try_start_0
    const-string v0, "amount"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartadserver/android/library/c/c$c;->a:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V
    .locals 2

    .prologue
    .line 167
    const-string v0, "SASAppLovinAdapter"

    const-string v1, "AppLovin validationRequestFailed for rewarded interstitial"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/16 v0, -0x258

    if-ne p2, v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const/16 v0, -0x1f4

    if-eq p2, v0, :cond_0

    const/16 v0, -0x190

    if-eq p2, v0, :cond_0

    .line 177
    const/16 v0, -0x12c

    if-ne p2, v0, :cond_0

    goto :goto_0
.end method

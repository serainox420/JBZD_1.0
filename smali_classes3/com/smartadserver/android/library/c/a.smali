.class public Lcom/smartadserver/android/library/c/a;
.super Ljava/lang/Object;
.source "SASAdColonyAdapter.java"

# interfaces
.implements Lcom/smartadserver/android/library/c/i;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/smartadserver/android/library/c/i$a;

.field private c:Lcom/smartadserver/android/library/ui/SASAdView;

.field private d:Lcom/adcolony/sdk/AdColonyInterstitialListener;

.field private e:Lcom/adcolony/sdk/AdColonyRewardListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-class v0, Lcom/smartadserver/android/library/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/a;->a:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/a;->c:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 35
    new-instance v0, Lcom/smartadserver/android/library/c/a$1;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/c/a$1;-><init>(Lcom/smartadserver/android/library/c/a;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/a;->d:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    .line 86
    new-instance v0, Lcom/smartadserver/android/library/c/a$2;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/c/a$2;-><init>(Lcom/smartadserver/android/library/c/a;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/a;->e:Lcom/adcolony/sdk/AdColonyRewardListener;

    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/c/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/smartadserver/android/library/c/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    const-string v0, "appID"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    const-string v1, "zoneID"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 118
    iget-object v2, p0, Lcom/smartadserver/android/library/c/a;->c:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 119
    iget-object v0, p0, Lcom/smartadserver/android/library/c/a;->b:Lcom/smartadserver/android/library/c/i$a;

    const-string v1, "Millennial ad mediation requires that the Smart AdServer SASAdview (interstitial or banner) be created with an Activity as context parameter"

    invoke-interface {v0, v1}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    .line 129
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v2, p0, Lcom/smartadserver/android/library/c/a;->c:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 125
    iget-object v3, p0, Lcom/smartadserver/android/library/c/a;->e:Lcom/adcolony/sdk/AdColonyRewardListener;

    invoke-static {v3}, Lcom/adcolony/sdk/AdColony;->setRewardListener(Lcom/adcolony/sdk/AdColonyRewardListener;)Z

    .line 127
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v0, v3}, Lcom/adcolony/sdk/AdColony;->configure(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 128
    iget-object v0, p0, Lcom/smartadserver/android/library/c/a;->d:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/AdColony;->requestInterstitial(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/adcolony/sdk/AdColonyAdOptions;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/smartadserver/android/library/c/a;)Lcom/smartadserver/android/library/ui/SASAdView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/smartadserver/android/library/c/a;->c:Lcom/smartadserver/android/library/ui/SASAdView;

    return-object v0
.end method

.method static synthetic c(Lcom/smartadserver/android/library/c/a;)Lcom/smartadserver/android/library/c/i$a;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/smartadserver/android/library/c/a;->b:Lcom/smartadserver/android/library/c/i$a;

    return-object v0
.end method

.method static synthetic d(Lcom/smartadserver/android/library/c/a;)Lcom/adcolony/sdk/AdColonyInterstitialListener;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/smartadserver/android/library/c/a;->d:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/smartadserver/android/library/c/g;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/smartadserver/android/library/c/a$3;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/c/a$3;-><init>(Lcom/smartadserver/android/library/c/a;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/smartadserver/android/library/ui/SASAdView;Ljava/util/HashMap;Lcom/smartadserver/android/library/c/i$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/smartadserver/android/library/ui/SASAdView;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/smartadserver/android/library/c/i$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    iput-object p4, p0, Lcom/smartadserver/android/library/c/a;->b:Lcom/smartadserver/android/library/c/i$a;

    .line 101
    iput-object p2, p0, Lcom/smartadserver/android/library/c/a;->c:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 103
    instance-of v0, p2, Lcom/smartadserver/android/library/SASBannerView;

    if-eqz v0, :cond_1

    .line 104
    const-string v0, "AdColony ad mediation does support banner placements"

    invoke-interface {p4, v0}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    instance-of v0, p2, Lcom/smartadserver/android/library/SASInterstitialView;

    if-eqz v0, :cond_2

    .line 106
    invoke-direct {p0, p3}, Lcom/smartadserver/android/library/c/a;->a(Ljava/util/HashMap;)V

    goto :goto_0

    .line 107
    :cond_2
    if-nez p2, :cond_0

    .line 108
    const-string v0, "AdColony ad mediation does not support native ad placements"

    invoke-interface {p4, v0}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 154
    const/4 v0, 0x1

    .line 156
    :try_start_0
    const-string v1, "com.adcolony.sdk.AdColony"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return v0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    const/4 v0, 0x0

    goto :goto_0
.end method

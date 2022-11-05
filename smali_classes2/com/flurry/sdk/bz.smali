.class public final Lcom/flurry/sdk/bz;
.super Lcom/flurry/sdk/bs;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/flurry/sdk/bs;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)Lcom/flurry/sdk/gz;
    .locals 1

    .prologue
    .line 87
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 89
    :cond_0
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/flurry/sdk/by;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/flurry/sdk/by;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected final a(Landroid/content/Context;Lcom/flurry/sdk/r;Landroid/os/Bundle;)Lcom/flurry/sdk/hl;
    .locals 1

    .prologue
    .line 78
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 79
    :cond_0
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/flurry/sdk/ca;

    invoke-direct {v0, p1, p2, p3}, Lcom/flurry/sdk/ca;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "Facebook Audience Network"

    return-object v0
.end method

.method protected final b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/bo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    new-instance v1, Lcom/flurry/sdk/bo;

    const-string v2, "AudienceNetwork"

    const-string v3, "3.14.+"

    const-string v4, "com.facebook.ads.InterstitialAd"

    invoke-direct {v1, v2, v3, v4}, Lcom/flurry/sdk/bo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-object v0
.end method

.method protected final d()Ljava/util/List;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 42
    const-string v2, "com.facebook.ads.InterstitialAdActivity"

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 43
    const/16 v2, 0xfb0

    iput v2, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-object v0
.end method

.method protected final e()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/bo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    new-instance v1, Lcom/flurry/sdk/bo;

    const-string v2, "AudienceNetwork"

    const-string v3, "3.14.+"

    const-string v4, "com.facebook.ads.Ad"

    invoke-direct {v1, v2, v3, v4}, Lcom/flurry/sdk/bo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-object v0
.end method

.method protected final g()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    const-string v1, "com.flurry.fan.MY_APP_ID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    return-object v0
.end method

.method protected final h()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-object v0
.end method

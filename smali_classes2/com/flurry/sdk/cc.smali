.class public final Lcom/flurry/sdk/cc;
.super Lcom/flurry/sdk/bs;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/flurry/sdk/bs;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)Lcom/flurry/sdk/gz;
    .locals 1

    .prologue
    .line 99
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 101
    :cond_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/flurry/sdk/cb;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/flurry/sdk/cb;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected final a(Landroid/content/Context;Lcom/flurry/sdk/r;Landroid/os/Bundle;)Lcom/flurry/sdk/hl;
    .locals 1

    .prologue
    .line 90
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 91
    :cond_0
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/flurry/sdk/cd;

    invoke-direct {v0, p1, p2, p3}, Lcom/flurry/sdk/cd;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "AdMob"

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
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    new-instance v1, Lcom/flurry/sdk/bo;

    const-string v2, "GooglePlayServicesSdk"

    const-string v3, "6.5.+"

    const-string v4, "com.google.android.gms.ads.InterstitialAd"

    invoke-direct {v1, v2, v3, v4}, Lcom/flurry/sdk/bo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
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
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 54
    const-string v2, "com.google.android.gms.ads.AdActivity"

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 55
    const/16 v2, 0xfb0

    iput v2, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
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
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    new-instance v1, Lcom/flurry/sdk/bo;

    const-string v2, "GooglePlayServicesSdk"

    const-string v3, "6.5.+"

    const-string v4, "com.google.android.gms.ads.AdView"

    invoke-direct {v1, v2, v3, v4}, Lcom/flurry/sdk/bo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
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
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    const-string v1, "com.flurry.gms.ads.MY_AD_UNIT_ID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
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
    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    return-object v0
.end method

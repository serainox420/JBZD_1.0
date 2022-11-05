.class public final Lcom/flurry/sdk/ce;
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
    .line 118
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 120
    :cond_0
    const/4 v0, 0x0

    .line 123
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/flurry/sdk/cf;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/flurry/sdk/cf;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected final a(Landroid/content/Context;Lcom/flurry/sdk/r;Landroid/os/Bundle;)Lcom/flurry/sdk/hl;
    .locals 1

    .prologue
    .line 109
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 110
    :cond_0
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/flurry/sdk/ch;

    invoke-direct {v0, p1, p2, p3}, Lcom/flurry/sdk/ch;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "InMobi"

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

    .line 43
    new-instance v1, Lcom/flurry/sdk/bo;

    const-string v2, "InMobiAndroidSDK"

    const-string v3, "4.5.3"

    const-string v4, "com.inmobi.monetization.IMInterstitial"

    invoke-direct {v1, v2, v3, v4}, Lcom/flurry/sdk/bo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
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
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 62
    const-string v2, "com.inmobi.androidsdk.IMBrowserActivity"

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 63
    const/16 v2, 0xcb0

    iput v2, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 68
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
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
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    new-instance v1, Lcom/flurry/sdk/bo;

    const-string v2, "InMobiAndroidSDK"

    const-string v3, "4.5.3"

    const-string v4, "com.inmobi.monetization.IMBanner"

    invoke-direct {v1, v2, v3, v4}, Lcom/flurry/sdk/bo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
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
    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    const-string v1, "com.flurry.inmobi.MY_APP_ID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
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
    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-object v0
.end method

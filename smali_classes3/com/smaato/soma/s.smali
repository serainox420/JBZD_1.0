.class public Lcom/smaato/soma/s;
.super Landroid/widget/RelativeLayout;
.source "ToasterBanner.java"

# interfaces
.implements Lcom/smaato/soma/k;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Landroid/view/View;

.field private c:Lcom/smaato/soma/b/b;

.field private d:Lcom/smaato/soma/b/c;

.field private e:Z


# direct methods
.method static synthetic a(Lcom/smaato/soma/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/ToasterBannerInitFailed;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/smaato/soma/s;->c()V

    return-void
.end method

.method static synthetic b(Lcom/smaato/soma/s;)Lcom/smaato/soma/b/c;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smaato/soma/s;->d:Lcom/smaato/soma/b/c;

    return-object v0
.end method

.method private c()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/ToasterBannerInitFailed;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 89
    :try_start_0
    new-instance v1, Lcom/smaato/soma/s$10;

    invoke-direct {v1, p0}, Lcom/smaato/soma/s$10;-><init>(Lcom/smaato/soma/s;)V

    invoke-static {v1}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0}, Lcom/smaato/soma/s;->removeAllViews()V

    .line 91
    new-instance v1, Lcom/smaato/soma/b/b;

    iget-object v2, p0, Lcom/smaato/soma/s;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/smaato/soma/b/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/smaato/soma/s;->c:Lcom/smaato/soma/b/b;

    .line 92
    iget-object v1, p0, Lcom/smaato/soma/s;->c:Lcom/smaato/soma/b/b;

    new-instance v2, Lcom/smaato/soma/s$14;

    invoke-direct {v2, p0}, Lcom/smaato/soma/s$14;-><init>(Lcom/smaato/soma/s;)V

    invoke-virtual {v1, v2}, Lcom/smaato/soma/b/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v1, p0, Lcom/smaato/soma/s;->d:Lcom/smaato/soma/b/c;

    if-eqz v1, :cond_2

    .line 106
    iget-object v0, p0, Lcom/smaato/soma/s;->d:Lcom/smaato/soma/b/c;

    invoke-virtual {v0}, Lcom/smaato/soma/b/c;->getUserSettings()Lcom/smaato/soma/internal/requests/settings/UserSettings;

    move-result-object v1

    .line 107
    iget-object v0, p0, Lcom/smaato/soma/s;->d:Lcom/smaato/soma/b/c;

    invoke-virtual {v0}, Lcom/smaato/soma/b/c;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v0

    .line 109
    :goto_0
    new-instance v2, Lcom/smaato/soma/b/c;

    iget-object v3, p0, Lcom/smaato/soma/s;->a:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/smaato/soma/b/c;-><init>(Landroid/content/Context;Lcom/smaato/soma/s;)V

    iput-object v2, p0, Lcom/smaato/soma/s;->d:Lcom/smaato/soma/b/c;

    .line 110
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 111
    iget-object v2, p0, Lcom/smaato/soma/s;->d:Lcom/smaato/soma/b/c;

    invoke-virtual {v2, v0}, Lcom/smaato/soma/b/c;->setAdSettings(Lcom/smaato/soma/d;)V

    .line 112
    iget-object v0, p0, Lcom/smaato/soma/s;->d:Lcom/smaato/soma/b/c;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/b/c;->setUserSettings(Lcom/smaato/soma/internal/requests/settings/UserSettings;)V

    .line 114
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smaato/soma/s;->setBackgroundColor(I)V

    .line 115
    iget-object v0, p0, Lcom/smaato/soma/s;->c:Lcom/smaato/soma/b/b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/smaato/soma/b/b;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/smaato/soma/s;->d:Lcom/smaato/soma/b/c;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    .line 117
    invoke-static {}, Lcom/smaato/soma/internal/c/d;->a()Lcom/smaato/soma/internal/c/d;

    move-result-object v3

    .line 118
    invoke-virtual {p0}, Lcom/smaato/soma/s;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smaato/soma/internal/c/d;->a(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 116
    invoke-virtual {v0, v1}, Lcom/smaato/soma/b/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    .line 120
    invoke-static {}, Lcom/smaato/soma/internal/c/d;->a()Lcom/smaato/soma/internal/c/d;

    move-result-object v2

    .line 121
    invoke-virtual {p0}, Lcom/smaato/soma/s;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smaato/soma/internal/c/d;->a(Landroid/content/Context;)I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 119
    invoke-virtual {p0, v0}, Lcom/smaato/soma/s;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v0, p0, Lcom/smaato/soma/s;->c:Lcom/smaato/soma/b/b;

    invoke-virtual {p0, v0}, Lcom/smaato/soma/s;->addView(Landroid/view/View;)V

    .line 123
    iget-object v0, p0, Lcom/smaato/soma/s;->d:Lcom/smaato/soma/b/c;

    invoke-virtual {p0, v0}, Lcom/smaato/soma/s;->addView(Landroid/view/View;)V

    .line 124
    iget-object v0, p0, Lcom/smaato/soma/s;->c:Lcom/smaato/soma/b/b;

    invoke-virtual {v0}, Lcom/smaato/soma/b/b;->bringToFront()V

    .line 125
    iget-object v0, p0, Lcom/smaato/soma/s;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/smaato/soma/s;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/smaato/soma/s;->b:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    :cond_1
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    throw v0

    .line 130
    :catch_1
    move-exception v0

    .line 131
    new-instance v1, Lcom/smaato/soma/exception/ToasterBannerInitFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/ToasterBannerInitFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/smaato/soma/s;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/RetrievingSDKVersionFailed;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/smaato/soma/s;->g()Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/SettingToasterToVisibleFailed;
        }
    .end annotation

    .prologue
    .line 427
    :try_start_0
    new-instance v0, Lcom/smaato/soma/s$11;

    invoke-direct {v0, p0}, Lcom/smaato/soma/s$11;-><init>(Lcom/smaato/soma/s;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 428
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smaato/soma/s;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 434
    return-void

    .line 429
    :catch_0
    move-exception v0

    .line 430
    throw v0

    .line 431
    :catch_1
    move-exception v0

    .line 432
    new-instance v1, Lcom/smaato/soma/exception/SettingToasterToVisibleFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/SettingToasterToVisibleFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic d(Lcom/smaato/soma/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/SettingToasterToVisibleFailed;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/smaato/soma/s;->d()V

    return-void
.end method

.method static synthetic e(Lcom/smaato/soma/s;)Lcom/smaato/soma/b/b;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smaato/soma/s;->c:Lcom/smaato/soma/b/b;

    return-object v0
.end method

.method static synthetic f(Lcom/smaato/soma/s;)Landroid/view/View;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smaato/soma/s;->b:Landroid/view/View;

    return-object v0
.end method

.method private f()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/SettingToasterToGoneFailed;
        }
    .end annotation

    .prologue
    .line 442
    :try_start_0
    new-instance v0, Lcom/smaato/soma/s$12;

    invoke-direct {v0, p0}, Lcom/smaato/soma/s$12;-><init>(Lcom/smaato/soma/s;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 443
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/smaato/soma/s;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 449
    return-void

    .line 444
    :catch_0
    move-exception v0

    .line 445
    throw v0

    .line 446
    :catch_1
    move-exception v0

    .line 447
    new-instance v1, Lcom/smaato/soma/exception/SettingToasterToGoneFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/SettingToasterToGoneFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic g(Lcom/smaato/soma/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/SettingToasterToGoneFailed;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/smaato/soma/s;->f()V

    return-void
.end method

.method private g()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/RetrievingSDKVersionFailed;
        }
    .end annotation

    .prologue
    .line 459
    :try_start_0
    new-instance v0, Lcom/smaato/soma/s$13;

    invoke-direct {v0, p0}, Lcom/smaato/soma/s$13;-><init>(Lcom/smaato/soma/s;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 460
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 461
    const/4 v0, 0x1

    .line 463
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    throw v0

    .line 466
    :catch_1
    move-exception v0

    .line 467
    new-instance v1, Lcom/smaato/soma/exception/RetrievingSDKVersionFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/RetrievingSDKVersionFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 305
    new-instance v0, Lcom/smaato/soma/s$6;

    invoke-direct {v0, p0}, Lcom/smaato/soma/s$6;-><init>(Lcom/smaato/soma/s;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 306
    new-instance v0, Lcom/smaato/soma/s$7;

    invoke-direct {v0, p0}, Lcom/smaato/soma/s$7;-><init>(Lcom/smaato/soma/s;)V

    .line 357
    invoke-virtual {v0}, Lcom/smaato/soma/s$7;->c()Ljava/lang/Object;

    .line 358
    return-void
.end method

.method public a(Lcom/smaato/soma/c;)V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lcom/smaato/soma/s$15;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/s$15;-><init>(Lcom/smaato/soma/s;Lcom/smaato/soma/c;)V

    .line 145
    invoke-virtual {v0}, Lcom/smaato/soma/s$15;->c()Ljava/lang/Object;

    .line 146
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 367
    new-instance v0, Lcom/smaato/soma/s$8;

    invoke-direct {v0, p0}, Lcom/smaato/soma/s$8;-><init>(Lcom/smaato/soma/s;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 368
    new-instance v0, Lcom/smaato/soma/s$9;

    invoke-direct {v0, p0}, Lcom/smaato/soma/s$9;-><init>(Lcom/smaato/soma/s;)V

    .line 418
    invoke-virtual {v0}, Lcom/smaato/soma/s$9;->c()Ljava/lang/Object;

    .line 419
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 285
    new-instance v0, Lcom/smaato/soma/s$5;

    invoke-direct {v0, p0}, Lcom/smaato/soma/s$5;-><init>(Lcom/smaato/soma/s;)V

    .line 297
    invoke-virtual {v0}, Lcom/smaato/soma/s$5;->c()Ljava/lang/Object;

    .line 298
    return-void
.end method

.method public getAdSettings()Lcom/smaato/soma/d;
    .locals 1

    .prologue
    .line 241
    new-instance v0, Lcom/smaato/soma/s$3;

    invoke-direct {v0, p0}, Lcom/smaato/soma/s$3;-><init>(Lcom/smaato/soma/s;)V

    .line 246
    invoke-virtual {v0}, Lcom/smaato/soma/s$3;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/d;

    .line 241
    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 215
    new-instance v0, Lcom/smaato/soma/s$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/s$1;-><init>(Lcom/smaato/soma/s;)V

    .line 220
    invoke-virtual {v0}, Lcom/smaato/soma/s$1;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 215
    return v0
.end method

.method public getUserSettings()Lcom/smaato/soma/internal/requests/settings/UserSettings;
    .locals 1

    .prologue
    .line 190
    new-instance v0, Lcom/smaato/soma/s$17;

    invoke-direct {v0, p0}, Lcom/smaato/soma/s$17;-><init>(Lcom/smaato/soma/s;)V

    .line 195
    invoke-virtual {v0}, Lcom/smaato/soma/s$17;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/internal/requests/settings/UserSettings;

    .line 190
    return-object v0
.end method

.method public setAdSettings(Lcom/smaato/soma/d;)V
    .locals 1

    .prologue
    .line 253
    new-instance v0, Lcom/smaato/soma/s$4;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/s$4;-><init>(Lcom/smaato/soma/s;Lcom/smaato/soma/d;)V

    .line 259
    invoke-virtual {v0}, Lcom/smaato/soma/s$4;->c()Ljava/lang/Object;

    .line 260
    return-void
.end method

.method public setBannerStateListener(Lcom/smaato/soma/g;)V
    .locals 1

    .prologue
    .line 228
    new-instance v0, Lcom/smaato/soma/s$2;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/s$2;-><init>(Lcom/smaato/soma/s;Lcom/smaato/soma/g;)V

    .line 234
    invoke-virtual {v0}, Lcom/smaato/soma/s$2;->c()Ljava/lang/Object;

    .line 235
    return-void
.end method

.method public setLocationUpdateEnabled(Z)V
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/smaato/soma/s$16;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/s$16;-><init>(Lcom/smaato/soma/s;Z)V

    .line 170
    invoke-virtual {v0}, Lcom/smaato/soma/s$16;->c()Ljava/lang/Object;

    .line 171
    return-void
.end method

.method public final setScalingEnabled(Z)V
    .locals 0

    .prologue
    .line 484
    iput-boolean p1, p0, Lcom/smaato/soma/s;->e:Z

    .line 485
    return-void
.end method

.method public setUserSettings(Lcom/smaato/soma/internal/requests/settings/UserSettings;)V
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lcom/smaato/soma/s$18;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/s$18;-><init>(Lcom/smaato/soma/s;Lcom/smaato/soma/internal/requests/settings/UserSettings;)V

    .line 208
    invoke-virtual {v0}, Lcom/smaato/soma/s$18;->c()Ljava/lang/Object;

    .line 209
    return-void
.end method

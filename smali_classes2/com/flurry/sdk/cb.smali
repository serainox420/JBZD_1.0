.class public final Lcom/flurry/sdk/cb;
.super Lcom/flurry/android/AdNetworkView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/cb$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private e:Lcom/google/android/gms/ads/AdView;

.field private f:Lcom/google/android/gms/ads/AdListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/flurry/sdk/cb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/cb;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/android/AdNetworkView;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/android/AdCreative;)V

    .line 38
    const-string v0, "com.flurry.gms.ads.MY_AD_UNIT_ID"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/cb;->b:Ljava/lang/String;

    .line 39
    const-string v0, "com.flurry.gms.ads.MYTEST_AD_DEVICE_ID"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/cb;->c:Ljava/lang/String;

    .line 40
    const-string v0, "com.flurry.gms.ads.test"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/cb;->d:Z

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/cb;->setFocusable(Z)V

    .line 42
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/flurry/sdk/cb;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/flurry/sdk/cb;->f:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method final getAdView()Lcom/google/android/gms/ads/AdView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/flurry/sdk/cb;->e:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method public final initLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 79
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/cb;->a:Ljava/lang/String;

    const-string v2, "GMS AdView initLayout."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/flurry/sdk/cb;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 81
    invoke-virtual {p0}, Lcom/flurry/sdk/cb;->getAdCreative()Lcom/flurry/android/AdCreative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdCreative;->getWidth()I

    move-result v3

    .line 82
    invoke-virtual {p0}, Lcom/flurry/sdk/cb;->getAdCreative()Lcom/flurry/android/AdCreative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdCreative;->getHeight()I

    move-result v1

    .line 3126
    invoke-static {}, Lcom/flurry/sdk/lw;->b()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 2155
    invoke-static {v0}, Lcom/flurry/sdk/lw;->a(I)I

    move-result v0

    .line 4122
    invoke-static {}, Lcom/flurry/sdk/lw;->b()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 3151
    invoke-static {v2}, Lcom/flurry/sdk/lw;->a(I)I

    move-result v2

    .line 1152
    if-lez v3, :cond_0

    if-le v3, v2, :cond_2

    .line 1153
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    if-le v1, v0, :cond_3

    .line 5063
    :cond_1
    :goto_1
    const/16 v5, 0x2d8

    if-lt v2, v5, :cond_4

    const/16 v5, 0x5a

    if-lt v0, v5, :cond_4

    .line 5064
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    .line 84
    :goto_2
    if-nez v0, :cond_8

    .line 85
    const/4 v0, 0x6

    sget-object v2, Lcom/flurry/sdk/cb;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not find GMS AdSize that matches {width = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_3
    return-void

    :cond_2
    move v2, v3

    .line 1152
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1153
    goto :goto_1

    .line 5065
    :cond_4
    const/16 v5, 0x1d4

    if-lt v2, v5, :cond_5

    const/16 v5, 0x3c

    if-lt v0, v5, :cond_5

    .line 5066
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_2

    .line 5067
    :cond_5
    const/16 v5, 0x140

    if-lt v2, v5, :cond_6

    const/16 v5, 0x32

    if-lt v0, v5, :cond_6

    .line 5068
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_2

    .line 5069
    :cond_6
    const/16 v5, 0x12c

    if-lt v2, v5, :cond_7

    const/16 v2, 0xfa

    if-lt v0, v2, :cond_7

    .line 5070
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    goto :goto_2

    .line 5072
    :cond_7
    sget-object v0, Lcom/flurry/sdk/cb;->a:Ljava/lang/String;

    const-string v2, "Could not find GMS AdSize that matches size"

    invoke-static {v7, v0, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 5073
    const/4 v0, 0x0

    goto :goto_2

    .line 90
    :cond_8
    sget-object v2, Lcom/flurry/sdk/cb;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Determined GMS AdSize as "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " that best matches {width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", height = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v2, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v1, Lcom/flurry/sdk/cb$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/flurry/sdk/cb$a;-><init>(Lcom/flurry/sdk/cb;B)V

    iput-object v1, p0, Lcom/flurry/sdk/cb;->f:Lcom/google/android/gms/ads/AdListener;

    .line 94
    new-instance v1, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v1, v4}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/sdk/cb;->e:Lcom/google/android/gms/ads/AdView;

    .line 95
    iget-object v1, p0, Lcom/flurry/sdk/cb;->e:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 96
    iget-object v1, p0, Lcom/flurry/sdk/cb;->e:Lcom/google/android/gms/ads/AdView;

    iget-object v2, p0, Lcom/flurry/sdk/cb;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/flurry/sdk/cb;->e:Lcom/google/android/gms/ads/AdView;

    iget-object v2, p0, Lcom/flurry/sdk/cb;->f:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 99
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/cb;->setGravity(I)V

    .line 100
    iget-object v1, p0, Lcom/flurry/sdk/cb;->e:Lcom/google/android/gms/ads/AdView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 101
    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v3

    .line 102
    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 100
    invoke-virtual {p0, v1, v2}, Lcom/flurry/sdk/cb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 105
    iget-boolean v1, p0, Lcom/flurry/sdk/cb;->d:Z

    if-eqz v1, :cond_9

    .line 106
    sget-object v1, Lcom/flurry/sdk/cb;->a:Ljava/lang/String;

    const-string v2, "GMS AdView set to Test Mode."

    invoke-static {v7, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v1, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 109
    iget-object v1, p0, Lcom/flurry/sdk/cb;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 110
    iget-object v1, p0, Lcom/flurry/sdk/cb;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 114
    :cond_9
    iget-object v1, p0, Lcom/flurry/sdk/cb;->e:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto/16 :goto_3
.end method

.method public final onActivityDestroy()V
    .locals 3

    .prologue
    .line 160
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/cb;->a:Ljava/lang/String;

    const-string v2, "GMS AdView onDestroy."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/flurry/sdk/cb;->e:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/flurry/sdk/cb;->e:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/cb;->e:Lcom/google/android/gms/ads/AdView;

    .line 165
    :cond_0
    invoke-super {p0}, Lcom/flurry/android/AdNetworkView;->onActivityDestroy()V

    .line 166
    return-void
.end method

.class public final Lcom/flurry/sdk/cj;
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
        Lcom/flurry/sdk/cj$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Lcom/millennialmedia/android/MMAdView;

.field private e:Lcom/millennialmedia/android/RequestListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/flurry/sdk/cj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/cj;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/android/AdNetworkView;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/android/AdCreative;)V

    .line 37
    const-string v0, "com.flurry.millennial.MYAPID"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/cj;->b:Ljava/lang/String;

    .line 38
    const-string v0, "com.flurry.millennial.MYAPIDRECTANGLE"

    .line 39
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/cj;->c:Ljava/lang/String;

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/cj;->setFocusable(Z)V

    .line 41
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/flurry/sdk/cj;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final getAdListener()Lcom/millennialmedia/android/RequestListener;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/flurry/sdk/cj;->e:Lcom/millennialmedia/android/RequestListener;

    return-object v0
.end method

.method final getAdView()Lcom/millennialmedia/android/MMAdView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/flurry/sdk/cj;->d:Lcom/millennialmedia/android/MMAdView;

    return-object v0
.end method

.method public final initLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    .line 63
    sget-object v0, Lcom/flurry/sdk/cj;->a:Ljava/lang/String;

    const-string v1, "Millennial initLayout"

    invoke-static {v6, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/flurry/sdk/cj;->getAdCreative()Lcom/flurry/android/AdCreative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdCreative;->getWidth()I

    move-result v0

    .line 65
    invoke-virtual {p0}, Lcom/flurry/sdk/cj;->getAdCreative()Lcom/flurry/android/AdCreative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/AdCreative;->getHeight()I

    move-result v1

    .line 67
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v2}, Lcom/flurry/sdk/ck;->a(Landroid/graphics/Point;)I

    move-result v2

    .line 69
    const/4 v3, -0x1

    if-ne v3, v2, :cond_0

    .line 70
    sget-object v2, Lcom/flurry/sdk/cj;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not find Millennial AdSize that matches size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v2, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/flurry/sdk/cj;->a:Ljava/lang/String;

    const-string v1, "Could not load Millennial Ad"

    invoke-static {v6, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-static {v2}, Lcom/flurry/sdk/ck;->a(I)Landroid/graphics/Point;

    move-result-object v3

    .line 77
    if-nez v3, :cond_1

    .line 78
    sget-object v2, Lcom/flurry/sdk/cj;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not find Millennial AdSize that matches size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v2, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/flurry/sdk/cj;->a:Ljava/lang/String;

    const-string v1, "Could not load Millennial Ad"

    invoke-static {v6, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_1
    iget v1, v3, Landroid/graphics/Point;->x:I

    .line 85
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 87
    sget-object v0, Lcom/flurry/sdk/cj;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Determined Millennial AdSize as "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v0, v4}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v4, Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {p0}, Lcom/flurry/sdk/cj;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v4, v0}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/flurry/sdk/cj;->d:Lcom/millennialmedia/android/MMAdView;

    .line 92
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->getDefaultAdId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/cj;->setId(I)V

    .line 93
    iget-object v0, p0, Lcom/flurry/sdk/cj;->d:Lcom/millennialmedia/android/MMAdView;

    iget-object v4, p0, Lcom/flurry/sdk/cj;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/millennialmedia/android/MMAdView;->setApid(Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x2

    if-ne v0, v2, :cond_2

    .line 95
    iget-object v0, p0, Lcom/flurry/sdk/cj;->d:Lcom/millennialmedia/android/MMAdView;

    iget-object v2, p0, Lcom/flurry/sdk/cj;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMAdView;->setApid(Ljava/lang/String;)V

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/cj;->d:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setWidth(I)V

    .line 99
    iget-object v0, p0, Lcom/flurry/sdk/cj;->d:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0, v3}, Lcom/millennialmedia/android/MMAdView;->setHeight(I)V

    .line 101
    invoke-virtual {p0, v7}, Lcom/flurry/sdk/cj;->setHorizontalScrollBarEnabled(Z)V

    .line 102
    invoke-virtual {p0, v7}, Lcom/flurry/sdk/cj;->setVerticalScrollBarEnabled(Z)V

    .line 103
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/cj;->setGravity(I)V

    .line 106
    new-instance v0, Lcom/flurry/sdk/cj$a;

    invoke-direct {v0, p0, v7}, Lcom/flurry/sdk/cj$a;-><init>(Lcom/flurry/sdk/cj;B)V

    iput-object v0, p0, Lcom/flurry/sdk/cj;->e:Lcom/millennialmedia/android/RequestListener;

    .line 107
    iget-object v0, p0, Lcom/flurry/sdk/cj;->d:Lcom/millennialmedia/android/MMAdView;

    iget-object v1, p0, Lcom/flurry/sdk/cj;->e:Lcom/millennialmedia/android/RequestListener;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 109
    iget-object v0, p0, Lcom/flurry/sdk/cj;->d:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/cj;->addView(Landroid/view/View;)V

    .line 110
    iget-object v0, p0, Lcom/flurry/sdk/cj;->d:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getAd()V

    goto/16 :goto_0
.end method

.method public final onActivityDestroy()V
    .locals 3

    .prologue
    .line 152
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/cj;->a:Ljava/lang/String;

    const-string v2, "Millennial onDestroy"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/flurry/sdk/cj;->d:Lcom/millennialmedia/android/MMAdView;

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/cj;->d:Lcom/millennialmedia/android/MMAdView;

    .line 156
    :cond_0
    invoke-super {p0}, Lcom/flurry/android/AdNetworkView;->onActivityDestroy()V

    .line 157
    return-void
.end method

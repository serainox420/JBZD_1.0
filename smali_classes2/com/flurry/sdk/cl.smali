.class public final Lcom/flurry/sdk/cl;
.super Lcom/flurry/sdk/bm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/cl$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Z

.field private final e:Ljava/lang/String;

.field private f:Lcom/millennialmedia/android/MMInterstitial;

.field private g:Lcom/millennialmedia/android/RequestListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/flurry/sdk/cl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/cl;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/r;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/bm;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;)V

    .line 29
    const-string v0, "com.flurry.millennial.MYAPIDINTERSTITIAL"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/cl;->e:Ljava/lang/String;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/cl;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/flurry/sdk/cl;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/flurry/sdk/cl;)Lcom/millennialmedia/android/MMInterstitial;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/flurry/sdk/cl;->f:Lcom/millennialmedia/android/MMInterstitial;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/flurry/sdk/cl;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 53
    new-instance v1, Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {p0}, Lcom/flurry/sdk/cl;->c()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/millennialmedia/android/MMInterstitial;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/sdk/cl;->f:Lcom/millennialmedia/android/MMInterstitial;

    .line 54
    iget-object v0, p0, Lcom/flurry/sdk/cl;->f:Lcom/millennialmedia/android/MMInterstitial;

    iget-object v1, p0, Lcom/flurry/sdk/cl;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMInterstitial;->setApid(Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/flurry/sdk/cl$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/sdk/cl$a;-><init>(Lcom/flurry/sdk/cl;B)V

    iput-object v0, p0, Lcom/flurry/sdk/cl;->g:Lcom/millennialmedia/android/RequestListener;

    .line 58
    iget-object v0, p0, Lcom/flurry/sdk/cl;->f:Lcom/millennialmedia/android/MMInterstitial;

    iget-object v1, p0, Lcom/flurry/sdk/cl;->g:Lcom/millennialmedia/android/RequestListener;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMInterstitial;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 62
    iget-object v0, p0, Lcom/flurry/sdk/cl;->f:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->fetch()V

    .line 63
    iget-object v0, p0, Lcom/flurry/sdk/cl;->f:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->display()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/cl;->d:Z

    .line 65
    iget-boolean v0, p0, Lcom/flurry/sdk/cl;->d:Z

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/flurry/sdk/cl;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Millennial MMAdView Interstitial ad displayed immediately:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flurry/sdk/cl;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 71
    :cond_0
    sget-object v0, Lcom/flurry/sdk/cl;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Millennial MMAdView Interstitial ad did not display immediately:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flurry/sdk/cl;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

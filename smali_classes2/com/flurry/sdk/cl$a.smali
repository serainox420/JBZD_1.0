.class final Lcom/flurry/sdk/cl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/android/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/cl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/cl;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/cl;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/flurry/sdk/cl$a;->a:Lcom/flurry/sdk/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/cl;B)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/flurry/sdk/cl$a;-><init>(Lcom/flurry/sdk/cl;)V

    return-void
.end method


# virtual methods
.method public final MMAdOverlayClosed(Lcom/millennialmedia/android/MMAd;)V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/flurry/sdk/cl$a;->a:Lcom/flurry/sdk/cl;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cl;->c(Ljava/util/Map;)V

    .line 110
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/cl;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Millennial MMAdView Interstitial overlay closed."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public final MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAd;)V
    .locals 6

    .prologue
    .line 97
    iget-object v0, p0, Lcom/flurry/sdk/cl$a;->a:Lcom/flurry/sdk/cl;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cl;->a(Ljava/util/Map;)V

    .line 98
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/cl;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Millennial MMAdView Interstitial overlay launched."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public final MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 3

    .prologue
    .line 104
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/cl;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Millennial MMAdView Interstitial request is caching."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public final onSingleTap(Lcom/millennialmedia/android/MMAd;)V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/flurry/sdk/cl$a;->a:Lcom/flurry/sdk/cl;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cl;->b(Ljava/util/Map;)V

    .line 116
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/cl;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Millennial MMAdView Interstitial tapped."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public final requestCompleted(Lcom/millennialmedia/android/MMAd;)V
    .locals 6

    .prologue
    .line 87
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/cl;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Millennial MMAdView returned interstitial ad: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/flurry/sdk/cl$a;->a:Lcom/flurry/sdk/cl;

    invoke-static {v0}, Lcom/flurry/sdk/cl;->a(Lcom/flurry/sdk/cl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/flurry/sdk/cl$a;->a:Lcom/flurry/sdk/cl;

    invoke-static {v0}, Lcom/flurry/sdk/cl;->b(Lcom/flurry/sdk/cl;)Lcom/millennialmedia/android/MMInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->display()Z

    .line 93
    :cond_0
    return-void
.end method

.method public final requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/flurry/sdk/cl$a;->a:Lcom/flurry/sdk/cl;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cl;->d(Ljava/util/Map;)V

    .line 82
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/cl;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Millennial MMAdView Interstitial failed to load ad."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.class final Lcom/flurry/sdk/cj$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/android/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/cj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/cj;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/cj;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/flurry/sdk/cj$a;->a:Lcom/flurry/sdk/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/cj;B)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/flurry/sdk/cj$a;-><init>(Lcom/flurry/sdk/cj;)V

    return-void
.end method


# virtual methods
.method public final MMAdOverlayClosed(Lcom/millennialmedia/android/MMAd;)V
    .locals 3

    .prologue
    .line 140
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/cj;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Millennial MMAdView banner overlay closed."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public final MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAd;)V
    .locals 3

    .prologue
    .line 130
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/cj;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Millennial MMAdView banner overlay launched."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public final MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 3

    .prologue
    .line 135
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/cj;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Millennial MMAdView banner request is caching."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public final onSingleTap(Lcom/millennialmedia/android/MMAd;)V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/flurry/sdk/cj$a;->a:Lcom/flurry/sdk/cj;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cj;->onAdClicked(Ljava/util/Map;)V

    .line 146
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/cj;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Millennial MMAdView banner tapped."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public final requestCompleted(Lcom/millennialmedia/android/MMAd;)V
    .locals 6

    .prologue
    .line 123
    iget-object v0, p0, Lcom/flurry/sdk/cj$a;->a:Lcom/flurry/sdk/cj;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cj;->onAdShown(Ljava/util/Map;)V

    .line 124
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/cj;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Millennial MMAdView returned ad."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public final requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/flurry/sdk/cj$a;->a:Lcom/flurry/sdk/cj;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cj;->onRenderFailed(Ljava/util/Map;)V

    .line 117
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/cj;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Millennial MMAdView failed to load ad with error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

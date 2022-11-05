.class Lcom/millennialmedia/NativeAd$1;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/NativeAd;->load(Landroid/content/Context;Lcom/millennialmedia/NativeAd$NativeAdMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

.field final synthetic b:Lcom/millennialmedia/NativeAd;


# direct methods
.method constructor <init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/millennialmedia/NativeAd$1;->b:Lcom/millennialmedia/NativeAd;

    iput-object p2, p0, Lcom/millennialmedia/NativeAd$1;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 493
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    invoke-static {}, Lcom/millennialmedia/NativeAd;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Play list load timed out"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$1;->b:Lcom/millennialmedia/NativeAd;

    iget-object v1, p0, Lcom/millennialmedia/NativeAd$1;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/NativeAd;->b(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    .line 497
    return-void
.end method

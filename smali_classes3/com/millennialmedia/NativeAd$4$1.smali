.class Lcom/millennialmedia/NativeAd$4$1;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/NativeAd$4;->initSucceeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/NativeAd$4;


# direct methods
.method constructor <init>(Lcom/millennialmedia/NativeAd$4;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lcom/millennialmedia/NativeAd$4$1;->a:Lcom/millennialmedia/NativeAd$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$4$1;->a:Lcom/millennialmedia/NativeAd$4;

    iget-object v0, v0, Lcom/millennialmedia/NativeAd$4;->d:Lcom/millennialmedia/NativeAd;

    iget-object v1, p0, Lcom/millennialmedia/NativeAd$4$1;->a:Lcom/millennialmedia/NativeAd$4;

    iget-object v1, v1, Lcom/millennialmedia/NativeAd$4;->b:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    invoke-static {v0, v1}, Lcom/millennialmedia/NativeAd;->a(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/adadapters/NativeAdapter;)Z

    move-result v0

    .line 636
    new-instance v1, Lcom/millennialmedia/NativeAd$4$1$1;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/NativeAd$4$1$1;-><init>(Lcom/millennialmedia/NativeAd$4$1;Z)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 655
    return-void
.end method

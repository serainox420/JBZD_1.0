.class Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;
.super Ljava/lang/Object;
.source "NativeNativeAdapter.java"

# interfaces
.implements Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initFailed(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->b(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;)Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;->initFailed(Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method

.method public initSucceeded()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1$1;-><init>(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

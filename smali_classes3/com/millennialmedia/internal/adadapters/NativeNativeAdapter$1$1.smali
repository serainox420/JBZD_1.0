.class Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1$1;
.super Ljava/lang/Object;
.source "NativeNativeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;->initSucceeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1$1;->a:Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1$1;->a:Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->a(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1$1;->a:Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->b(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;)Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;->initSucceeded()V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1$1;->a:Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->b(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;)Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Component info not loaded"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;->initFailed(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

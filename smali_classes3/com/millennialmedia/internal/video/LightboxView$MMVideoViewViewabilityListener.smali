.class Lcom/millennialmedia/internal/video/LightboxView$MMVideoViewViewabilityListener;
.super Ljava/lang/Object;
.source "LightboxView.java"

# interfaces
.implements Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/LightboxView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MMVideoViewViewabilityListener"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/internal/video/LightboxView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;)V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$MMVideoViewViewabilityListener;->a:Ljava/lang/ref/WeakReference;

    .line 103
    return-void
.end method


# virtual methods
.method public onViewableChanged(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$MMVideoViewViewabilityListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/LightboxView;

    .line 110
    if-nez v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->a(Lcom/millennialmedia/internal/video/LightboxView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    if-eqz p2, :cond_2

    .line 116
    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->b(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->start()V

    goto :goto_0

    .line 118
    :cond_2
    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->b(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->pause()V

    goto :goto_0
.end method

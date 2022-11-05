.class Lcom/millennialmedia/internal/video/LightboxView$4;
.super Ljava/lang/Object;
.source "LightboxView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;->onComplete(Lcom/millennialmedia/internal/video/MMVideoView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/LightboxView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$4;->a:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 338
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$4;->a:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->e(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$4;->a:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->g(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$4;->a:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->g(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$4;->a:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->d(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 343
    return-void
.end method

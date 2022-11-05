.class Lcom/millennialmedia/internal/video/LightboxView$15;
.super Ljava/lang/Object;
.source "LightboxView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;->a(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/millennialmedia/internal/video/LightboxView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;J)V
    .locals 0

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$15;->b:Lcom/millennialmedia/internal/video/LightboxView;

    iput-wide p2, p0, Lcom/millennialmedia/internal/video/LightboxView$15;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$15;->b:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->a(Lcom/millennialmedia/internal/video/LightboxView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$15;->b:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->g(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v2, p0, Lcom/millennialmedia/internal/video/LightboxView$15;->a:J

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/millennialmedia/internal/video/LightboxView$15$1;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/LightboxView$15$1;-><init>(Lcom/millennialmedia/internal/video/LightboxView$15;)V

    .line 1222
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1246
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1248
    :cond_0
    return-void
.end method

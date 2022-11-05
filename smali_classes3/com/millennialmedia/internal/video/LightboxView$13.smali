.class Lcom/millennialmedia/internal/video/LightboxView$13;
.super Ljava/lang/Object;
.source "LightboxView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;->c()V
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
    .line 1091
    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->a:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 1111
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->a:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->f(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1102
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->a:Lcom/millennialmedia/internal/video/LightboxView;

    const-wide/16 v2, 0x9c4

    const-wide/16 v4, 0x1f4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/millennialmedia/internal/video/LightboxView;->a(Lcom/millennialmedia/internal/video/LightboxView;JJ)V

    .line 1104
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->a:Lcom/millennialmedia/internal/video/LightboxView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->b(Lcom/millennialmedia/internal/video/LightboxView;Z)Z

    .line 1105
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 1117
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 1095
    return-void
.end method

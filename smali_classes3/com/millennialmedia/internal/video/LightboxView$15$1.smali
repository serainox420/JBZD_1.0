.class Lcom/millennialmedia/internal/video/LightboxView$15$1;
.super Ljava/lang/Object;
.source "LightboxView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/LightboxView$15;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/LightboxView$15;)V
    .locals 0

    .prologue
    .line 1222
    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$15$1;->a:Lcom/millennialmedia/internal/video/LightboxView$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 1239
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$15$1;->a:Lcom/millennialmedia/internal/video/LightboxView$15;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/LightboxView$15;->b:Lcom/millennialmedia/internal/video/LightboxView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->a(Lcom/millennialmedia/internal/video/LightboxView;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 1233
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 1245
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 1226
    return-void
.end method

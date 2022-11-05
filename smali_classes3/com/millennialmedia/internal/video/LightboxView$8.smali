.class Lcom/millennialmedia/internal/video/LightboxView$8;
.super Ljava/lang/Object;
.source "LightboxView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;->a(Landroid/graphics/Point;)V
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
    .line 786
    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$8;->a:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$8;->a:Lcom/millennialmedia/internal/video/LightboxView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->b(Lcom/millennialmedia/internal/video/LightboxView;Z)Z

    .line 797
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 803
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 790
    return-void
.end method

.class Lcom/millennialmedia/internal/adcontrollers/LightboxController$3;
.super Ljava/lang/Object;
.source "LightboxController.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/LightboxController;->a(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/view/View$OnAttachStateChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/LightboxView;

.field final synthetic b:Lcom/millennialmedia/internal/adcontrollers/LightboxController;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/LightboxController;Lcom/millennialmedia/internal/video/LightboxView;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$3;->b:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$3;->a:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$3;->a:Lcom/millennialmedia/internal/video/LightboxView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->animateToGone(Z)V

    .line 384
    return-void
.end method

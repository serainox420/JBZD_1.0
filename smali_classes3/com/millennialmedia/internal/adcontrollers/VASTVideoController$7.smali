.class Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$7;
.super Ljava/lang/Object;
.source "VASTVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->shutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$7;->a:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$7;->a:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->f(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VideoViewActions;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$7;->a:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->f(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VideoViewActions;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VideoViewActions;->shutdown()V

    .line 429
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$7;->a:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->a(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 431
    :cond_0
    return-void
.end method

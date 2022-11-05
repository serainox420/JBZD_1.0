.class Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;
.super Ljava/lang/Object;
.source "VASTVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->createVASTVideoView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 242
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView;

    new-instance v2, Landroid/content/MutableContextWrapper;

    iget-object v3, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v3}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->a(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v4}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->d(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3$1;

    invoke-direct {v5, p0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3$1;-><init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/millennialmedia/internal/video/VASTVideoView;-><init>(Landroid/content/Context;Lcom/millennialmedia/internal/video/VASTParser$InLineAd;Ljava/util/List;Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;)V

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->a(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 281
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->f(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Landroid/view/ViewGroup;

    move-result-object v0

    const-string v1, "mmVastVideoView"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 282
    return-void
.end method

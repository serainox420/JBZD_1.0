.class Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;
.super Ljava/lang/Object;
.source "VASTVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->createVPAIDWebView(Landroid/content/Context;)V
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
    .line 156
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;->b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 159
    new-instance v0, Lcom/millennialmedia/internal/video/VPAIDWebView;

    new-instance v1, Landroid/content/MutableContextWrapper;

    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    new-instance v3, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2$1;

    invoke-direct {v3, p0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2$1;-><init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/internal/video/VPAIDWebView;-><init>(Landroid/content/Context;ZLcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V

    .line 228
    const-string v1, "mmVpaidWebView"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/VPAIDWebView;->setTag(Ljava/lang/Object;)V

    .line 229
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;->b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v1, v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->a(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 231
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;->b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->e(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/VPAIDWebView;->setVastDocuments(Ljava/util/List;)V

    .line 232
    return-void
.end method

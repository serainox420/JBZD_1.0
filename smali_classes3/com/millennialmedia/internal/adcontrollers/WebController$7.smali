.class Lcom/millennialmedia/internal/adcontrollers/WebController$7;
.super Ljava/lang/Object;
.source "WebController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/WebController;->a(Lcom/millennialmedia/internal/MMWebView;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

.field final synthetic b:Ljava/lang/ref/WeakReference;

.field final synthetic c:Ljava/lang/ref/WeakReference;

.field final synthetic d:Lcom/millennialmedia/internal/adcontrollers/WebController;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7;->d:Lcom/millennialmedia/internal/adcontrollers/WebController;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7;->a:Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

    iput-object p3, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7;->b:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7;->c:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7;->d:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->d(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/SizableStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7;->a:Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/SizableStateManager;->showLoadingSpinner(Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)V

    .line 501
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7;->a:Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

    iget-object v0, v0, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    .line 503
    new-instance v1, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController$7;Lcom/millennialmedia/internal/utils/HttpUtils$Response;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 545
    return-void
.end method

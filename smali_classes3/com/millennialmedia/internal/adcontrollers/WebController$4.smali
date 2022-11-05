.class Lcom/millennialmedia/internal/adcontrollers/WebController$4;
.super Ljava/lang/Object;
.source "WebController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/WebController;->showExpanded(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

.field final synthetic b:Lcom/millennialmedia/internal/adcontrollers/WebController;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$4;->b:Lcom/millennialmedia/internal/adcontrollers/WebController;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$4;->a:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 198
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$4;->b:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->c(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    .line 199
    if-nez v0, :cond_1

    .line 200
    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/WebController;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MMWebView instance is null, unable to expand"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$4;->b:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->a(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->attachFailed()V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$4;->b:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/adcontrollers/WebController;->a()Lcom/millennialmedia/internal/SizableStateManager;

    move-result-object v1

    .line 208
    new-instance v2, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

    invoke-direct {v2}, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;-><init>()V

    .line 209
    iput v4, v2, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->width:I

    .line 210
    iput v4, v2, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->height:I

    .line 211
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->showCloseIndicator:Z

    .line 212
    iput v4, v2, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->orientation:I

    .line 218
    iget-object v3, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$4;->a:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-virtual {v1, v0, v2, v3}, Lcom/millennialmedia/internal/SizableStateManager;->expand(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$4;->b:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->a(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->attachFailed()V

    goto :goto_0
.end method

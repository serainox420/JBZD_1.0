.class Lcom/pubmatic/sdk/common/ui/BrowserDialog$9;
.super Ljava/lang/Object;
.source "BrowserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/common/ui/BrowserDialog;->loadSslErrorPage(Landroid/webkit/SslErrorHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/common/ui/BrowserDialog;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$9;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    iput-object p2, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$9;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackClicked()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$9;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$200(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)V

    .line 347
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$9;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$300(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$9;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->dismiss()V

    .line 349
    :cond_0
    return-void
.end method

.method public onHostNameSet()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 320
    const-string v0, "BrowserDialog"

    const-string v1, "Host name is set"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void
.end method

.method public onProceedClicked()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$9;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$200(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)V

    .line 329
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$9;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 331
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$9;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$1000(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/pubmatic/sdk/common/ui/BrowserDialog$9$1;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog$9$1;-><init>(Lcom/pubmatic/sdk/common/ui/BrowserDialog$9;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    const-string v0, "BrowserDialog"

    const-string v1, "Not able to proceed from ssl warning page."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.class Lcom/pubmatic/sdk/common/ui/BrowserDialog$6;
.super Ljava/lang/Object;
.source "BrowserDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/common/ui/BrowserDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/pubmatic/sdk/common/ui/BrowserDialog$Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$6;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$6;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$000(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$6;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$200(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)V

    .line 209
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$6;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->dismiss()V

    .line 210
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$6;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$500(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Lcom/pubmatic/sdk/common/ui/BrowserDialog$Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$6;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/common/ui/BrowserDialog$Handler;->browserDialogDismissed(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)V

    .line 211
    return-void
.end method

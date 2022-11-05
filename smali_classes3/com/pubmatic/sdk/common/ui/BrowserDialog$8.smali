.class Lcom/pubmatic/sdk/common/ui/BrowserDialog$8;
.super Ljava/lang/Object;
.source "BrowserDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/common/ui/BrowserDialog;->dismissSSLWebView()V
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
    .line 278
    iput-object p1, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$8;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$8;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$800(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$8;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v1}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$100(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 283
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$8;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$100(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$8;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$100(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 285
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$8;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$102(Lcom/pubmatic/sdk/common/ui/BrowserDialog;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 286
    return-void
.end method

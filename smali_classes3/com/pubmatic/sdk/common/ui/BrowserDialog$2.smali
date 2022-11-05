.class Lcom/pubmatic/sdk/common/ui/BrowserDialog$2;
.super Ljava/lang/Object;
.source "BrowserDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 132
    iput-object p1, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$2;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$2;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$100(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$2;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$200(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)V

    .line 138
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$2;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$300(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$2;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->dismiss()V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$2;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$000(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$2;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$000(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$2;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->dismiss()V

    goto :goto_0
.end method

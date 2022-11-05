.class Lcom/pubmatic/sdk/common/ui/BrowserDialog$1;
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
    .line 116
    iput-object p1, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$1;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$1;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$000(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$1;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->dismiss()V

    .line 121
    return-void
.end method

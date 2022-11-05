.class Lcom/pubmatic/sdk/common/ui/BrowserDialog$5;
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
    .line 184
    iput-object p1, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$5;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 187
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$5;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$400(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Ljava/lang/String;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$5;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v1}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$500(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Lcom/pubmatic/sdk/common/ui/BrowserDialog$Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$5;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3}, Lcom/pubmatic/sdk/common/ui/BrowserDialog$Handler;->browserDialogOpenUrl(Lcom/pubmatic/sdk/common/ui/BrowserDialog;Ljava/lang/String;Z)V

    .line 189
    return-void
.end method

.class Lcom/openx/dialogs/AdExpandedDialog$2;
.super Ljava/lang/Object;
.source "AdExpandedDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/dialogs/AdExpandedDialog;->renderCustomClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/dialogs/AdExpandedDialog;


# direct methods
.method constructor <init>(Lcom/openx/dialogs/AdExpandedDialog;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/openx/dialogs/AdExpandedDialog$2;->this$0:Lcom/openx/dialogs/AdExpandedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 73
    new-instance v0, Lcom/openx/view/mraid/methods/Close;

    iget-object v1, p0, Lcom/openx/dialogs/AdExpandedDialog$2;->this$0:Lcom/openx/dialogs/AdExpandedDialog;

    iget-object v1, v1, Lcom/openx/dialogs/AdExpandedDialog;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/openx/dialogs/AdExpandedDialog$2;->this$0:Lcom/openx/dialogs/AdExpandedDialog;

    iget-object v2, v2, Lcom/openx/dialogs/AdExpandedDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v2}, Lcom/openx/view/WebViewBase;->getMRAID()Lcom/openx/view/mraid/BaseJSInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/openx/dialogs/AdExpandedDialog$2;->this$0:Lcom/openx/dialogs/AdExpandedDialog;

    iget-object v3, v3, Lcom/openx/dialogs/AdExpandedDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-direct {v0, v1, v2, v3}, Lcom/openx/view/mraid/methods/Close;-><init>(Landroid/content/Context;Lcom/openx/view/mraid/BaseJSInterface;Lcom/openx/view/WebViewBase;)V

    .line 74
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/openx/view/mraid/methods/Close;->closeThroughJS(Z)V

    .line 76
    return-void
.end method

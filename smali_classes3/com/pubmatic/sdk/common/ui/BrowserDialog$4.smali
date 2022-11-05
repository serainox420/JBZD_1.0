.class Lcom/pubmatic/sdk/common/ui/BrowserDialog$4;
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
    .line 170
    iput-object p1, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$4;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$4;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$000(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 174
    return-void
.end method

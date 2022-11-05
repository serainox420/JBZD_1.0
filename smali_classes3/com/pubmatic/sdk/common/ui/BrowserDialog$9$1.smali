.class Lcom/pubmatic/sdk/common/ui/BrowserDialog$9$1;
.super Ljava/lang/Object;
.source "BrowserDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/common/ui/BrowserDialog$9;->onProceedClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pubmatic/sdk/common/ui/BrowserDialog$9;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/common/ui/BrowserDialog$9;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$9$1;->this$1:Lcom/pubmatic/sdk/common/ui/BrowserDialog$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$9$1;->this$1:Lcom/pubmatic/sdk/common/ui/BrowserDialog$9;

    iget-object v0, v0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$9;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$900(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 336
    return-void
.end method

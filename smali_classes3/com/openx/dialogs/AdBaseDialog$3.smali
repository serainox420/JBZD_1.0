.class Lcom/openx/dialogs/AdBaseDialog$3;
.super Landroid/os/Handler;
.source "AdBaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/dialogs/AdBaseDialog;->MRAIDGetExpandProperties()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/dialogs/AdBaseDialog;


# direct methods
.method constructor <init>(Lcom/openx/dialogs/AdBaseDialog;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/openx/dialogs/AdBaseDialog$3;->this$0:Lcom/openx/dialogs/AdBaseDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 186
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog$3;->this$0:Lcom/openx/dialogs/AdBaseDialog;

    iget-object v0, v0, Lcom/openx/dialogs/AdBaseDialog;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/openx/dialogs/AdBaseDialog$3$1;

    invoke-direct {v1, p0, p1}, Lcom/openx/dialogs/AdBaseDialog$3$1;-><init>(Lcom/openx/dialogs/AdBaseDialog$3;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 226
    return-void
.end method

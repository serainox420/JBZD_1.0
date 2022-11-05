.class Lcom/intentsoftware/addapptr/c$4;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/c;->showDebugDialogInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/c;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/c;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/intentsoftware/addapptr/c$4;->this$0:Lcom/intentsoftware/addapptr/c;

    iput-object p2, p0, Lcom/intentsoftware/addapptr/c$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c$4;->val$view:Landroid/view/View;

    sget v1, Lcom/intentsoftware/addapptr/R$id;->doNotShowAgainCheckbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 498
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c$4;->this$0:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c;->disableDebugScreen()V

    .line 502
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 503
    return-void
.end method

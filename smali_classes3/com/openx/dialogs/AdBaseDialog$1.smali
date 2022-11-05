.class Lcom/openx/dialogs/AdBaseDialog$1;
.super Ljava/lang/Object;
.source "AdBaseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/dialogs/AdBaseDialog;-><init>(Landroid/content/Context;Lcom/openx/view/WebViewBase;)V
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
    .line 70
    iput-object p1, p0, Lcom/openx/dialogs/AdBaseDialog$1;->this$0:Lcom/openx/dialogs/AdBaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 76
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog$1;->this$0:Lcom/openx/dialogs/AdBaseDialog;

    iget-object v1, p0, Lcom/openx/dialogs/AdBaseDialog$1;->this$0:Lcom/openx/dialogs/AdBaseDialog;

    iget-object v1, v1, Lcom/openx/dialogs/AdBaseDialog;->container:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/openx/dialogs/AdBaseDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    return-void
.end method

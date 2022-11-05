.class Lcom/openx/dialogs/AdBaseDialog$2;
.super Ljava/lang/Object;
.source "AdBaseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 81
    iput-object p1, p0, Lcom/openx/dialogs/AdBaseDialog$2;->this$0:Lcom/openx/dialogs/AdBaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class final Lcom/flurry/sdk/gy$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/gy$a;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gy$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gy$a;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lcom/flurry/sdk/gy$a$2;->a:Lcom/flurry/sdk/gy$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/flurry/sdk/gy$a$2;->a:Lcom/flurry/sdk/gy$a;

    iget-object v0, v0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->x(Lcom/flurry/sdk/gy;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/flurry/sdk/gy$a$2;->a:Lcom/flurry/sdk/gy$a;

    iget-object v0, v0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->x(Lcom/flurry/sdk/gy;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 662
    :cond_0
    return-void
.end method

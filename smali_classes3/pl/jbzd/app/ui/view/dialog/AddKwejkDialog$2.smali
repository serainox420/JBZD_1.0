.class Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$2;
.super Ljava/lang/Object;
.source "AddKwejkDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;


# direct methods
.method constructor <init>(Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$2;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$2;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->b(Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;)Lcom/mobsandgeeks/saripaar/Validator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobsandgeeks/saripaar/Validator;->validate()V

    .line 160
    return-void
.end method

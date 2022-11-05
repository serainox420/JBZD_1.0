.class Lpl/jbzd/app/ui/view/dialog/SignUpDialog$1;
.super Ljava/lang/Object;
.source "SignUpDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/dialog/SignUpDialog;


# direct methods
.method constructor <init>(Lpl/jbzd/app/ui/view/dialog/SignUpDialog;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/SignUpDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/SignUpDialog;

    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/SignUpDialog;

    iget-object v1, v1, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->btnSignup:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v1}, Lpl/jbzd/core/ui/view/TextView;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->a(Lpl/jbzd/app/ui/view/dialog/SignUpDialog;I)I

    .line 104
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/SignUpDialog;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->a(Lpl/jbzd/app/ui/view/dialog/SignUpDialog;)Lcom/mobsandgeeks/saripaar/Validator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobsandgeeks/saripaar/Validator;->validate()V

    .line 105
    return-void
.end method

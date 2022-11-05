.class Lpl/jbzd/app/ui/view/dialog/SignInDialog$1;
.super Ljava/lang/Object;
.source "SignInDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/ui/view/dialog/SignInDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/dialog/SignInDialog;


# direct methods
.method constructor <init>(Lpl/jbzd/app/ui/view/dialog/SignInDialog;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lpl/jbzd/app/ui/view/dialog/SignInDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignInDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->a(Lpl/jbzd/app/ui/view/dialog/SignInDialog;)Lcom/mobsandgeeks/saripaar/Validator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobsandgeeks/saripaar/Validator;->validate()V

    .line 102
    return-void
.end method

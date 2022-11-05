.class Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog$1;
.super Ljava/lang/Object;
.source "RestorePasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;


# direct methods
.method constructor <init>(Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->a(Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;)Lcom/mobsandgeeks/saripaar/Validator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobsandgeeks/saripaar/Validator;->validate()V

    .line 84
    return-void
.end method

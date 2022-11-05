.class Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog$5;
.super Ljava/lang/Object;
.source "ShareMenuDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;


# direct methods
.method constructor <init>(Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog$5;->a:Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog$5;->a:Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->dismissAllowingStateLoss()V

    .line 141
    return-void
.end method

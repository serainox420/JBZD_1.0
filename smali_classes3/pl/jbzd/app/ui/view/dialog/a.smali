.class public abstract Lpl/jbzd/app/ui/view/dialog/a;
.super Landroid/app/DialogFragment;
.source "LoadingDialog.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lpl/jbzd/app/ui/view/dialog/a;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lpl/jbzd/app/ui/view/dialog/a;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 15
    iput p1, p0, Lpl/jbzd/app/ui/view/dialog/a;->a:I

    .line 16
    return-void
.end method

.method public abstract a(Z)V
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lpl/jbzd/app/ui/view/dialog/a;->a:I

    .line 25
    invoke-super {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 26
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lpl/jbzd/app/ui/view/dialog/a;->a:I

    .line 31
    invoke-super {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 32
    return-void
.end method

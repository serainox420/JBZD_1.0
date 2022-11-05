.class public abstract Lpl/jbzd/core/MvpBaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MvpBaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lpl/jbzd/core/MvpBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/MvpApplication;

    invoke-virtual {v0, p0}, Lpl/jbzd/core/MvpApplication;->a(Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V

    .line 24
    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 25
    return-void
.end method

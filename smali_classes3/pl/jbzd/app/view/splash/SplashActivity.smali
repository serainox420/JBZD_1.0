.class public Lpl/jbzd/app/view/splash/SplashActivity;
.super Lpl/jbzd/core/MvpBaseActivity;
.source "SplashActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lpl/jbzd/core/MvpBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 17
    invoke-super {p0, p1}, Lpl/jbzd/core/MvpBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lpl/jbzd/app/view/main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/splash/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 21
    invoke-virtual {p0}, Lpl/jbzd/app/view/splash/SplashActivity;->finish()V

    .line 22
    return-void
.end method

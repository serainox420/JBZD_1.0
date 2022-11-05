.class Lpl/jbzd/app/view/main/MainActivity$6;
.super Lpl/jbzd/api/callback/LoginApiCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/main/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/main/MainActivity;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/main/MainActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lpl/jbzd/app/view/main/MainActivity$6;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-direct {p0, p2}, Lpl/jbzd/api/callback/LoginApiCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lpl/jbzd/api/response/UserResponse;)V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public onError(Lpl/jbzd/api/exception/ApiException;)V
    .locals 2

    .prologue
    .line 205
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getInstance()Lpl/jbzd/api/ApiClient;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/main/MainActivity$6;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-virtual {v0, v1}, Lpl/jbzd/api/ApiClient;->logout(Landroid/content/Context;)V

    .line 206
    return-void
.end method

.method public synthetic onSuccess(Lpl/jbzd/api/response/BaseApiResponse;)V
    .locals 0

    .prologue
    .line 199
    check-cast p1, Lpl/jbzd/api/response/UserResponse;

    invoke-virtual {p0, p1}, Lpl/jbzd/app/view/main/MainActivity$6;->a(Lpl/jbzd/api/response/UserResponse;)V

    return-void
.end method

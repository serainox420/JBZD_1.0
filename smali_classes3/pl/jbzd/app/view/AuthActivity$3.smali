.class Lpl/jbzd/app/view/AuthActivity$3;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Lpl/jbzd/api/auth/LogoutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/AuthActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/AuthActivity;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/AuthActivity;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lpl/jbzd/app/view/AuthActivity$3;->a:Lpl/jbzd/app/view/AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 1

    .prologue
    .line 169
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 170
    return-void
.end method

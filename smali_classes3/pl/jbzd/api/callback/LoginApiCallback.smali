.class public abstract Lpl/jbzd/api/callback/LoginApiCallback;
.super Lpl/jbzd/api/callback/SimpleApiCallback;
.source "LoginApiCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpl/jbzd/api/callback/SimpleApiCallback",
        "<",
        "Lpl/jbzd/api/response/UserResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lpl/jbzd/api/callback/SimpleApiCallback;-><init>()V

    .line 24
    iput-object p1, p0, Lpl/jbzd/api/callback/LoginApiCallback;->context:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public bridge synthetic before(Lretrofit2/Call;Lretrofit2/Response;Lpl/jbzd/api/response/BaseApiResponse;)Z
    .locals 1

    .prologue
    .line 17
    check-cast p3, Lpl/jbzd/api/response/UserResponse;

    invoke-virtual {p0, p1, p2, p3}, Lpl/jbzd/api/callback/LoginApiCallback;->before(Lretrofit2/Call;Lretrofit2/Response;Lpl/jbzd/api/response/UserResponse;)Z

    move-result v0

    return v0
.end method

.method public before(Lretrofit2/Call;Lretrofit2/Response;Lpl/jbzd/api/response/UserResponse;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/UserResponse;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lpl/jbzd/api/response/UserResponse;",
            ">;",
            "Lpl/jbzd/api/response/UserResponse;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p3, Lpl/jbzd/api/response/UserResponse;->response:Lpl/jbzd/api/model/UserModel;

    if-eqz v0, :cond_2

    iget-object v0, p3, Lpl/jbzd/api/response/UserResponse;->response:Lpl/jbzd/api/model/UserModel;

    iget-object v0, v0, Lpl/jbzd/api/model/UserModel;->user:Lpl/jbzd/app/model/User;

    if-eqz v0, :cond_2

    iget-object v0, p3, Lpl/jbzd/api/response/UserResponse;->response:Lpl/jbzd/api/model/UserModel;

    iget-object v0, v0, Lpl/jbzd/api/model/UserModel;->user:Lpl/jbzd/app/model/User;

    iget-object v0, v0, Lpl/jbzd/app/model/User;->token:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p3, Lpl/jbzd/api/response/UserResponse;->response:Lpl/jbzd/api/model/UserModel;

    iget-object v0, v0, Lpl/jbzd/api/model/UserModel;->user:Lpl/jbzd/app/model/User;

    iget-object v0, v0, Lpl/jbzd/app/model/User;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 31
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getInstance()Lpl/jbzd/api/ApiClient;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/api/callback/LoginApiCallback;->context:Landroid/content/Context;

    iget-object v2, p3, Lpl/jbzd/api/response/UserResponse;->response:Lpl/jbzd/api/model/UserModel;

    iget-object v2, v2, Lpl/jbzd/api/model/UserModel;->user:Lpl/jbzd/app/model/User;

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/api/ApiClient;->setToken(Landroid/content/Context;Lpl/jbzd/app/model/User;)V

    .line 33
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getInstance()Lpl/jbzd/api/ApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/api/ApiClient;->getLoginCallbacks()Ljava/util/List;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/api/auth/LoginCallback;

    .line 35
    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0, p3}, Lpl/jbzd/api/auth/LoginCallback;->onSuccess(Lpl/jbzd/api/response/UserResponse;)V

    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x1

    .line 46
    :goto_1
    return v0

    .line 43
    :cond_2
    const-string v0, "Invalid token"

    iput-object v0, p0, Lpl/jbzd/api/callback/LoginApiCallback;->errorMessage:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    goto :goto_1
.end method

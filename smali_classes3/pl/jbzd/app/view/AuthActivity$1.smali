.class Lpl/jbzd/app/view/AuthActivity$1;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/AuthActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/AuthActivity;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/AuthActivity;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lpl/jbzd/app/view/AuthActivity$1;->a:Lpl/jbzd/app/view/AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/login/LoginResult;)V
    .locals 4

    .prologue
    .line 101
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    new-instance v1, Lpl/jbzd/app/view/AuthActivity$1$1;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/AuthActivity$1$1;-><init>(Lpl/jbzd/app/view/AuthActivity$1;)V

    invoke-static {v0, v1}, Lcom/facebook/GraphRequest;->newMeRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 108
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 109
    const-string v2, "fields"

    const-string v3, "id, first_name, last_name, email, gender, birthday"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, v1}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 113
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lpl/jbzd/api/ApiService;->user_auth_facebook(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lpl/jbzd/app/view/AuthActivity$1$2;

    iget-object v2, p0, Lpl/jbzd/app/view/AuthActivity$1;->a:Lpl/jbzd/app/view/AuthActivity;

    invoke-direct {v1, p0, v2}, Lpl/jbzd/app/view/AuthActivity$1$2;-><init>(Lpl/jbzd/app/view/AuthActivity$1;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 151
    return-void
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$1;->a:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$1;->a:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 163
    :cond_0
    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 97
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lpl/jbzd/app/view/AuthActivity$1;->a(Lcom/facebook/login/LoginResult;)V

    return-void
.end method

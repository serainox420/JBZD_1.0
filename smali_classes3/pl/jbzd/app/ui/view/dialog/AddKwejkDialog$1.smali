.class Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$1;
.super Lpl/jbzd/api/callback/SimpleApiCallback;
.source "AddKwejkDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpl/jbzd/api/callback/SimpleApiCallback",
        "<",
        "Lpl/jbzd/api/response/TagsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;


# direct methods
.method constructor <init>(Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-direct {p0}, Lpl/jbzd/api/callback/SimpleApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lpl/jbzd/api/response/TagsResponse;)V
    .locals 5

    .prologue
    .line 89
    if-eqz p1, :cond_2

    iget-object v0, p1, Lpl/jbzd/api/response/TagsResponse;->tags:Lpl/jbzd/api/model/TagsModel;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lpl/jbzd/api/response/TagsResponse;->tags:Lpl/jbzd/api/model/TagsModel;

    iget-object v0, v0, Lpl/jbzd/api/model/TagsModel;->tags:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lpl/jbzd/api/response/TagsResponse;->tags:Lpl/jbzd/api/model/TagsModel;

    iget-object v0, v0, Lpl/jbzd/api/model/TagsModel;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    iget-object v0, p1, Lpl/jbzd/api/response/TagsResponse;->tags:Lpl/jbzd/api/model/TagsModel;

    iget-object v0, v0, Lpl/jbzd/api/model/TagsModel;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-static {v0, v1}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->a(Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 103
    :cond_2
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->tagList:Lpl/jbzd/app/ui/view/TagGroup;

    if-eqz v0, :cond_3

    .line 106
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->tagList:Lpl/jbzd/app/ui/view/TagGroup;

    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-static {v1}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->a(Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/ui/view/TagGroup;->setTags(Ljava/util/List;)V

    .line 109
    :cond_3
    return-void
.end method

.method public onError(Lpl/jbzd/api/exception/ApiException;)V
    .locals 3

    .prologue
    .line 114
    invoke-virtual {p1}, Lpl/jbzd/api/exception/ApiException;->message()Ljava/lang/String;

    move-result-object v0

    const-string v1, "token jest nieprawid\u0142owy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getInstance()Lpl/jbzd/api/ApiClient;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-virtual {v1}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/api/ApiClient;->logout(Landroid/content/Context;)V

    .line 118
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a00c0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->dismissAllowingStateLoss()V

    .line 125
    :cond_1
    return-void
.end method

.method public synthetic onSuccess(Lpl/jbzd/api/response/BaseApiResponse;)V
    .locals 0

    .prologue
    .line 85
    check-cast p1, Lpl/jbzd/api/response/TagsResponse;

    invoke-virtual {p0, p1}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$1;->a(Lpl/jbzd/api/response/TagsResponse;)V

    return-void
.end method

.class public Lpl/jbzd/app/view/comments/CommentsActivity;
.super Lpl/jbzd/app/view/AuthActivity;
.source "CommentsActivity.java"

# interfaces
.implements Lpl/jbzd/app/ui/view/comment/CommentsAdapter$b;
.implements Lpl/jbzd/app/ui/view/comment/CommentsView$b;
.implements Lpl/jbzd/app/ui/view/comment/CommentsView$c;


# instance fields
.field commentView:Lpl/jbzd/app/ui/view/comment/CommentsView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private d:Lpl/jbzd/app/model/Media;

.field public toolbar:Landroid/support/v7/widget/Toolbar;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field public txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lpl/jbzd/app/view/AuthActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lpl/jbzd/app/view/comments/CommentsActivity;->d:Lpl/jbzd/app/model/Media;

    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 130
    const-string v2, "ARG_COMMENTS_COUNTER"

    iget-object v3, p0, Lpl/jbzd/app/view/comments/CommentsActivity;->d:Lpl/jbzd/app/model/Media;

    invoke-virtual {v3}, Lpl/jbzd/app/model/Media;->realmGet$comments_counter()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lpl/jbzd/app/view/comments/CommentsActivity;->setResult(ILandroid/content/Intent;)V

    .line 132
    invoke-virtual {p0}, Lpl/jbzd/app/view/comments/CommentsActivity;->finish()V

    .line 133
    if-eqz p1, :cond_0

    const v0, 0x7f050012

    :goto_0
    invoke-virtual {p0, v1, v0}, Lpl/jbzd/app/view/comments/CommentsActivity;->overridePendingTransition(II)V

    .line 134
    return-void

    :cond_0
    move v0, v1

    .line 133
    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 151
    invoke-virtual {p0}, Lpl/jbzd/app/view/comments/CommentsActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lpl/jbzd/app/view/comments/CommentsActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Komentarze"

    .line 153
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Dodanie komentarza"

    .line 154
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/comments/CommentsActivity;->d:Lpl/jbzd/app/model/Media;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$comments_counter()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/model/Media;->realmSet$comments_counter(I)V

    .line 159
    iget-object v0, p0, Lpl/jbzd/app/view/comments/CommentsActivity;->txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;

    const v1, 0x7f0a00b5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lpl/jbzd/app/view/comments/CommentsActivity;->d:Lpl/jbzd/app/model/Media;

    invoke-virtual {v3}, Lpl/jbzd/app/model/Media;->realmGet$comments_counter()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lpl/jbzd/app/view/comments/CommentsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {p0}, Lpl/jbzd/app/view/comments/CommentsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    const v0, 0x7f0a00ab

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 164
    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;Landroid/widget/EditText;Lpl/jbzd/app/model/Media;Z)V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public a(Landroid/view/View;Lpl/jbzd/app/model/Comment;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 182
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lpl/jbzd/app/model/Comment;->realmGet$user()Lpl/jbzd/app/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lpl/jbzd/app/model/Comment;->realmGet$user()Lpl/jbzd/app/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/model/User;->realmGet$id()I

    move-result v0

    if-lez v0, :cond_0

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lpl/jbzd/app/view/user/UserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    const-string v1, "ARG_USER_ID"

    invoke-virtual {p2}, Lpl/jbzd/app/model/Comment;->realmGet$user()Lpl/jbzd/app/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lpl/jbzd/app/model/User;->realmGet$id()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/comments/CommentsActivity;->startActivity(Landroid/content/Intent;)V

    .line 187
    invoke-virtual {p0, v3, v3}, Lpl/jbzd/app/view/comments/CommentsActivity;->overridePendingTransition(II)V

    .line 189
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Lpl/jbzd/app/model/Comment;II)V
    .locals 3

    .prologue
    .line 206
    invoke-virtual {p0}, Lpl/jbzd/app/view/comments/CommentsActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lpl/jbzd/app/view/comments/CommentsActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Vote"

    .line 208
    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    const-string v2, "Komentarze"

    .line 209
    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    const-string v0, "plus"

    .line 210
    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    .line 207
    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 213
    :cond_0
    return-void

    .line 209
    :cond_1
    const-string v0, "minus"

    goto :goto_0
.end method

.method public a(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lpl/jbzd/app/view/comments/CommentsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    if-eqz p1, :cond_1

    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 177
    :cond_0
    return-void

    .line 175
    :cond_1
    const v0, 0x7f0a00ca

    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/comments/CommentsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public a(Lpl/jbzd/api/response/CommentResponse;II)V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public a(Lpl/jbzd/app/model/Media;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/jbzd/app/model/Media;",
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/model/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public b(Landroid/view/View;Lpl/jbzd/app/model/Comment;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 194
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lpl/jbzd/app/model/Comment;->realmGet$user()Lpl/jbzd/app/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lpl/jbzd/app/model/Comment;->realmGet$user()Lpl/jbzd/app/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/model/User;->realmGet$id()I

    move-result v0

    if-lez v0, :cond_0

    .line 196
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lpl/jbzd/app/view/user/UserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    const-string v1, "ARG_USER_ID"

    invoke-virtual {p2}, Lpl/jbzd/app/model/Comment;->realmGet$user()Lpl/jbzd/app/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lpl/jbzd/app/model/User;->realmGet$id()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/comments/CommentsActivity;->startActivity(Landroid/content/Intent;)V

    .line 199
    invoke-virtual {p0, v3, v3}, Lpl/jbzd/app/view/comments/CommentsActivity;->overridePendingTransition(II)V

    .line 201
    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public c(Landroid/view/View;Lpl/jbzd/app/model/Comment;I)V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public d(Landroid/view/View;Lpl/jbzd/app/model/Comment;I)V
    .locals 3

    .prologue
    .line 228
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 230
    :cond_0
    invoke-virtual {p0}, Lpl/jbzd/app/view/comments/CommentsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v1, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    .line 231
    if-nez v0, :cond_1

    new-instance v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-direct {v0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;-><init>()V

    .line 232
    :cond_1
    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->isAdded()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lpl/jbzd/app/view/comments/CommentsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 259
    :cond_2
    :goto_0
    return-void

    .line 236
    :cond_3
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    invoke-virtual {p2}, Lpl/jbzd/app/model/Comment;->realmGet$id()I

    move-result v1

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lpl/jbzd/api/ApiService;->comment_report(ILjava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lpl/jbzd/app/view/comments/CommentsActivity$3;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/comments/CommentsActivity$3;-><init>(Lpl/jbzd/app/view/comments/CommentsActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lpl/jbzd/app/view/comments/CommentsActivity;->commentView:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lpl/jbzd/app/view/comments/CommentsActivity;->a(Z)V

    .line 125
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-super {p0, p1}, Lpl/jbzd/app/view/AuthActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f04002f

    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/comments/CommentsActivity;->setContentView(I)V

    .line 61
    const v0, 0x7f050020

    const v1, 0x7f050021

    invoke-virtual {p0, v0, v1}, Lpl/jbzd/app/view/comments/CommentsActivity;->overridePendingTransition(II)V

    .line 63
    invoke-virtual {p0}, Lpl/jbzd/app/view/comments/CommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lpl/jbzd/app/view/comments/CommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ARG_MEDIA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Media;

    iput-object v0, p0, Lpl/jbzd/app/view/comments/CommentsActivity;->d:Lpl/jbzd/app/model/Media;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    iget-object v0, p0, Lpl/jbzd/app/view/comments/CommentsActivity;->d:Lpl/jbzd/app/model/Media;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/view/comments/CommentsActivity;->d:Lpl/jbzd/app/model/Media;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$type()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 70
    :cond_1
    invoke-virtual {p0}, Lpl/jbzd/app/view/comments/CommentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00c2

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 71
    invoke-virtual {p0}, Lpl/jbzd/app/view/comments/CommentsActivity;->finish()V

    .line 74
    :cond_2
    iget-object v0, p0, Lpl/jbzd/app/view/comments/CommentsActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/comments/CommentsActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 75
    invoke-virtual {p0}, Lpl/jbzd/app/view/comments/CommentsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->c(Z)V

    .line 77
    iget-object v0, p0, Lpl/jbzd/app/view/comments/CommentsActivity;->txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->a:I

    .line 80
    iget-object v0, p0, Lpl/jbzd/app/view/comments/CommentsActivity;->txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;

    const v1, 0x7f0a00b5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lpl/jbzd/app/view/comments/CommentsActivity;->d:Lpl/jbzd/app/model/Media;

    invoke-virtual {v3}, Lpl/jbzd/app/model/Media;->realmGet$comments_counter()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lpl/jbzd/app/view/comments/CommentsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lpl/jbzd/app/view/comments/CommentsActivity;->commentView:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-virtual {v0, p0, p0, p0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->a(Lpl/jbzd/app/ui/view/comment/CommentsView$c;Lpl/jbzd/app/ui/view/comment/CommentsView$b;Lpl/jbzd/app/ui/view/comment/CommentsAdapter$b;)V

    .line 84
    iget-object v0, p0, Lpl/jbzd/app/view/comments/CommentsActivity;->commentView:Lpl/jbzd/app/ui/view/comment/CommentsView;

    iget-object v1, p0, Lpl/jbzd/app/view/comments/CommentsActivity;->d:Lpl/jbzd/app/model/Media;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/ui/view/comment/CommentsView;->setMedia(Lpl/jbzd/app/model/Media;)V

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lpl/jbzd/app/view/comments/CommentsActivity$1;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/comments/CommentsActivity$1;-><init>(Lpl/jbzd/app/view/comments/CommentsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    iget-object v0, p0, Lpl/jbzd/app/view/comments/CommentsActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lpl/jbzd/app/view/comments/CommentsActivity$2;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/comments/CommentsActivity$2;-><init>(Lpl/jbzd/app/view/comments/CommentsActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void

    .line 66
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onLatestClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public onPopularClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lpl/jbzd/app/view/AuthActivity;->onResume()V

    .line 107
    invoke-virtual {p0}, Lpl/jbzd/app/view/comments/CommentsActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lpl/jbzd/app/view/comments/CommentsActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    const-string v1, "Komentarze"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lpl/jbzd/app/view/comments/CommentsActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 111
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0, p1}, Lpl/jbzd/app/view/AuthActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 117
    return-void
.end method

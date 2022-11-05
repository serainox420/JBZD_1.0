.class final Lcom/flurry/android/tumblr/Post$1$1;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/android/tumblr/Post$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/eh;

.field final synthetic b:Lcom/flurry/android/tumblr/PostListener;

.field final synthetic c:Lcom/flurry/android/tumblr/Post$1;


# direct methods
.method constructor <init>(Lcom/flurry/android/tumblr/Post$1;Lcom/flurry/sdk/eh;Lcom/flurry/android/tumblr/PostListener;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/flurry/android/tumblr/Post$1$1;->c:Lcom/flurry/android/tumblr/Post$1;

    iput-object p2, p0, Lcom/flurry/android/tumblr/Post$1$1;->a:Lcom/flurry/sdk/eh;

    iput-object p3, p0, Lcom/flurry/android/tumblr/Post$1$1;->b:Lcom/flurry/android/tumblr/PostListener;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 56
    sget-object v0, Lcom/flurry/android/tumblr/Post$2;->a:[I

    iget-object v1, p0, Lcom/flurry/android/tumblr/Post$1$1;->a:Lcom/flurry/sdk/eh;

    iget v1, v1, Lcom/flurry/sdk/eh;->b:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 58
    :pswitch_0
    invoke-static {}, Lcom/flurry/android/tumblr/Post;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Post success for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/android/tumblr/Post$1$1;->a:Lcom/flurry/sdk/eh;

    iget v2, v2, Lcom/flurry/sdk/eh;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/flurry/android/tumblr/Post$1$1;->b:Lcom/flurry/android/tumblr/PostListener;

    iget-object v1, p0, Lcom/flurry/android/tumblr/Post$1$1;->a:Lcom/flurry/sdk/eh;

    iget-object v1, v1, Lcom/flurry/sdk/eh;->f:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lcom/flurry/android/tumblr/PostListener;->onPostSuccess(Ljava/lang/Long;)V

    .line 60
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.analytics.tumblr.TumblrEvents"

    iget-object v2, p0, Lcom/flurry/android/tumblr/Post$1$1;->c:Lcom/flurry/android/tumblr/Post$1;

    iget-object v2, v2, Lcom/flurry/android/tumblr/Post$1;->a:Lcom/flurry/android/tumblr/Post;

    invoke-static {v2}, Lcom/flurry/android/tumblr/Post;->c(Lcom/flurry/android/tumblr/Post;)Lcom/flurry/sdk/kh;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ki;->b(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 61
    invoke-static {}, Lcom/flurry/sdk/mg;->a()Lcom/flurry/sdk/mg;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/tumblr/Post$1$1;->c:Lcom/flurry/android/tumblr/Post$1;

    iget-object v1, v1, Lcom/flurry/android/tumblr/Post$1;->a:Lcom/flurry/android/tumblr/Post;

    invoke-static {v1}, Lcom/flurry/android/tumblr/Post;->a(Lcom/flurry/android/tumblr/Post;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/mg;->a(I)V

    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/android/tumblr/Post$1$1;->a:Lcom/flurry/sdk/eh;

    iget-object v0, v0, Lcom/flurry/sdk/eh;->e:Ljava/lang/String;

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const-string v0, "Internal error."

    .line 69
    :cond_0
    invoke-static {}, Lcom/flurry/android/tumblr/Post;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Post failed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/android/tumblr/Post$1$1;->a:Lcom/flurry/sdk/eh;

    iget v3, v3, Lcom/flurry/sdk/eh;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/tumblr/Post$1$1;->a:Lcom/flurry/sdk/eh;

    iget-object v3, v3, Lcom/flurry/sdk/eh;->d:Lcom/flurry/sdk/ei;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  and error message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/flurry/android/tumblr/Post$1$1;->b:Lcom/flurry/android/tumblr/PostListener;

    invoke-interface {v1, v0}, Lcom/flurry/android/tumblr/PostListener;->onPostFailure(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.analytics.tumblr.TumblrEvents"

    iget-object v2, p0, Lcom/flurry/android/tumblr/Post$1$1;->c:Lcom/flurry/android/tumblr/Post$1;

    iget-object v2, v2, Lcom/flurry/android/tumblr/Post$1;->a:Lcom/flurry/android/tumblr/Post;

    invoke-static {v2}, Lcom/flurry/android/tumblr/Post;->c(Lcom/flurry/android/tumblr/Post;)Lcom/flurry/sdk/kh;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ki;->b(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 72
    invoke-static {}, Lcom/flurry/sdk/mg;->a()Lcom/flurry/sdk/mg;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/tumblr/Post$1$1;->c:Lcom/flurry/android/tumblr/Post$1;

    iget-object v1, v1, Lcom/flurry/android/tumblr/Post$1;->a:Lcom/flurry/android/tumblr/Post;

    invoke-static {v1}, Lcom/flurry/android/tumblr/Post;->a(Lcom/flurry/android/tumblr/Post;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/mg;->a(I)V

    goto/16 :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

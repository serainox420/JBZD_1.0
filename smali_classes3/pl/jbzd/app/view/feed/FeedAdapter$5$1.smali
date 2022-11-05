.class Lpl/jbzd/app/view/feed/FeedAdapter$5$1;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/feed/FeedAdapter$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback",
        "<",
        "Lcom/commit451/youtubeextractor/YouTubeExtractionResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/model/Media;

.field final synthetic b:Lpl/jbzd/app/view/feed/a/c;

.field final synthetic c:Lpl/jbzd/app/view/feed/FeedAdapter$5;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/feed/FeedAdapter$5;Lpl/jbzd/app/model/Media;Lpl/jbzd/app/view/feed/a/c;)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5$1;->c:Lpl/jbzd/app/view/feed/FeedAdapter$5;

    iput-object p2, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5$1;->a:Lpl/jbzd/app/model/Media;

    iput-object p3, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5$1;->b:Lpl/jbzd/app/view/feed/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/commit451/youtubeextractor/YouTubeExtractionResult;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 777
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 778
    const/4 v0, -0x1

    .line 780
    instance-of v1, p2, Lcom/commit451/youtubeextractor/YouTubeExtractionException;

    if-eqz v1, :cond_0

    .line 781
    check-cast p2, Lcom/commit451/youtubeextractor/YouTubeExtractionException;

    iget v0, p2, Lcom/commit451/youtubeextractor/YouTubeExtractionException;->errorCode:I

    .line 784
    :cond_0
    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 786
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5$1;->b:Lpl/jbzd/app/view/feed/a/c;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/a/c;->c()V

    .line 788
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5$1;->c:Lpl/jbzd/app/view/feed/FeedAdapter$5;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/FeedAdapter$5;->d:Lpl/jbzd/app/view/feed/FeedAdapter;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/FeedAdapter;->d:Lpl/jbzd/app/view/BaseActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5$1;->c:Lpl/jbzd/app/view/feed/FeedAdapter$5;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/FeedAdapter$5;->d:Lpl/jbzd/app/view/feed/FeedAdapter;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/FeedAdapter;->d:Lpl/jbzd/app/view/BaseActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 789
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5$1;->c:Lpl/jbzd/app/view/feed/FeedAdapter$5;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/FeedAdapter$5;->d:Lpl/jbzd/app/view/feed/FeedAdapter;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/FeedAdapter;->d:Lpl/jbzd/app/view/BaseActivity;

    const v1, 0x7f0a00cb

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 797
    :cond_1
    :goto_0
    return-void

    .line 795
    :cond_2
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5$1;->b:Lpl/jbzd/app/view/feed/a/c;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5$1;->c:Lpl/jbzd/app/view/feed/FeedAdapter$5;

    iget-object v1, v1, Lpl/jbzd/app/view/feed/FeedAdapter$5;->a:Lpl/jbzd/app/view/feed/holders/d;

    iget-object v1, v1, Lpl/jbzd/app/view/feed/holders/d;->ytVideoPlayerContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5$1;->c:Lpl/jbzd/app/view/feed/FeedAdapter$5;

    iget-object v2, v2, Lpl/jbzd/app/view/feed/FeedAdapter$5;->b:Lpl/jbzd/b/b$a;

    iget-object v3, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5$1;->c:Lpl/jbzd/app/view/feed/FeedAdapter$5;

    iget-object v3, v3, Lpl/jbzd/app/view/feed/FeedAdapter$5;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lpl/jbzd/app/view/feed/a/c;->a(Landroid/view/ViewGroup;Lpl/jbzd/b/b$a;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/commit451/youtubeextractor/YouTubeExtractionResult;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lcom/commit451/youtubeextractor/YouTubeExtractionResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 760
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;

    invoke-virtual {v0}, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->e()Landroid/net/Uri;

    move-result-object v0

    .line 762
    :goto_0
    if-eqz v0, :cond_0

    .line 763
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5$1;->a:Lpl/jbzd/app/model/Media;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lpl/jbzd/app/model/Media;->realmSet$movie(Ljava/lang/String;)V

    .line 766
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5$1;->c:Lpl/jbzd/app/view/feed/FeedAdapter$5;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/FeedAdapter$5;->a:Lpl/jbzd/app/view/feed/holders/d;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/d;->ytVideoPlayerContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5$1;->c:Lpl/jbzd/app/view/feed/FeedAdapter$5;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/FeedAdapter$5;->a:Lpl/jbzd/app/view/feed/holders/d;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/d;->ytVideoPlayerContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 771
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5$1;->b:Lpl/jbzd/app/view/feed/a/c;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5$1;->c:Lpl/jbzd/app/view/feed/FeedAdapter$5;

    iget-object v1, v1, Lpl/jbzd/app/view/feed/FeedAdapter$5;->a:Lpl/jbzd/app/view/feed/holders/d;

    iget-object v1, v1, Lpl/jbzd/app/view/feed/holders/d;->ytVideoPlayerContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5$1;->c:Lpl/jbzd/app/view/feed/FeedAdapter$5;

    iget-object v2, v2, Lpl/jbzd/app/view/feed/FeedAdapter$5;->b:Lpl/jbzd/b/b$a;

    iget-object v3, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5$1;->c:Lpl/jbzd/app/view/feed/FeedAdapter$5;

    iget-object v3, v3, Lpl/jbzd/app/view/feed/FeedAdapter$5;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lpl/jbzd/app/view/feed/a/c;->a(Landroid/view/ViewGroup;Lpl/jbzd/b/b$a;Landroid/view/View$OnClickListener;)V

    .line 772
    return-void

    .line 760
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

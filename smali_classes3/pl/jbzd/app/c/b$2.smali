.class final Lpl/jbzd/app/c/b$2;
.super Ljava/lang/Object;
.source "DownloadUtils.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/c/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lpl/jbzd/app/c/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lpl/jbzd/app/c/b$a;

.field final synthetic c:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Lpl/jbzd/app/c/b$a;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lpl/jbzd/app/c/b$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lpl/jbzd/app/c/b$2;->b:Lpl/jbzd/app/c/b$a;

    iput-object p3, p0, Lpl/jbzd/app/c/b$2;->c:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 3
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
    .line 140
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    iget-object v0, p0, Lpl/jbzd/app/c/b$2;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/c/b$2;->b:Lpl/jbzd/app/c/b$a;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lpl/jbzd/app/c/b$2;->b:Lpl/jbzd/app/c/b$a;

    iget-object v1, p0, Lpl/jbzd/app/c/b$2;->a:Landroid/content/Context;

    const v2, 0x7f0a00c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lpl/jbzd/app/c/b$a;->a(Ljava/lang/String;)V

    .line 145
    :cond_0
    return-void
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
    .line 123
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;

    invoke-virtual {v0}, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->e()Landroid/net/Uri;

    move-result-object v0

    .line 125
    if-nez v0, :cond_1

    .line 127
    iget-object v0, p0, Lpl/jbzd/app/c/b$2;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/c/b$2;->b:Lpl/jbzd/app/c/b$a;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lpl/jbzd/app/c/b$2;->b:Lpl/jbzd/app/c/b$a;

    iget-object v1, p0, Lpl/jbzd/app/c/b$2;->a:Landroid/content/Context;

    const v2, 0x7f0a00c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lpl/jbzd/app/c/b$a;->a(Ljava/lang/String;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v1, p0, Lpl/jbzd/app/c/b$2;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lpl/jbzd/app/c/b$2;->c:Ljava/io/File;

    iget-object v3, p0, Lpl/jbzd/app/c/b$2;->b:Lpl/jbzd/app/c/b$a;

    invoke-static {v1, v0, v2, v3}, Lpl/jbzd/app/c/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lpl/jbzd/app/c/b$a;)V

    goto :goto_0
.end method

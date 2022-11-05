.class abstract Lpl/jbzd/app/c/b$b;
.super Landroid/os/AsyncTask;
.source "DownloadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/app/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Lpl/jbzd/app/c/b$a;

.field protected final b:Landroid/content/Context;

.field protected final c:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Lpl/jbzd/app/c/b$a;)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 261
    iput-object p1, p0, Lpl/jbzd/app/c/b$b;->b:Landroid/content/Context;

    .line 262
    iput-object p3, p0, Lpl/jbzd/app/c/b$b;->a:Lpl/jbzd/app/c/b$a;

    .line 263
    iput-object p2, p0, Lpl/jbzd/app/c/b$b;->c:Ljava/io/File;

    .line 264
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
.end method

.method protected varargs a([Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lpl/jbzd/app/c/b$b;->c:Ljava/io/File;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v0, v1}, Lpl/jbzd/app/c/b$b;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 293
    iget-object v0, p0, Lpl/jbzd/app/c/b$b;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/c/b$b;->a:Lpl/jbzd/app/c/b$a;

    if-eqz v0, :cond_0

    .line 295
    if-nez p1, :cond_1

    .line 296
    iget-object v0, p0, Lpl/jbzd/app/c/b$b;->a:Lpl/jbzd/app/c/b$a;

    iget-object v1, p0, Lpl/jbzd/app/c/b$b;->b:Landroid/content/Context;

    const v2, 0x7f0a00c7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lpl/jbzd/app/c/b$a;->a(Ljava/lang/String;)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/c/b$b;->a:Lpl/jbzd/app/c/b$a;

    invoke-interface {v0, p1}, Lpl/jbzd/app/c/b$a;->a(Ljava/io/File;)V

    goto :goto_0
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 254
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lpl/jbzd/app/c/b$b;->a([Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lpl/jbzd/app/c/b$b;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/c/b$b;->a:Lpl/jbzd/app/c/b$a;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lpl/jbzd/app/c/b$b;->a:Lpl/jbzd/app/c/b$a;

    iget-object v1, p0, Lpl/jbzd/app/c/b$b;->b:Landroid/content/Context;

    const v2, 0x7f0a00c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lpl/jbzd/app/c/b$a;->a(Ljava/lang/String;)V

    .line 277
    :cond_0
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 254
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lpl/jbzd/app/c/b$b;->a(Ljava/io/File;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 268
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 269
    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 254
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lpl/jbzd/app/c/b$b;->a([Ljava/lang/Integer;)V

    return-void
.end method

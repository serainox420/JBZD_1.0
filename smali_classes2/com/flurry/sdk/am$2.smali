.class final Lcom/flurry/sdk/am$2;
.super Lcom/flurry/sdk/ku$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/am;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/am;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/am;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/flurry/sdk/am$2;->a:Lcom/flurry/sdk/am;

    invoke-direct {p0}, Lcom/flurry/sdk/ku$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/flurry/sdk/ku;)V
    .locals 5

    .prologue
    .line 152
    iget-object v0, p0, Lcom/flurry/sdk/am$2;->a:Lcom/flurry/sdk/am;

    .line 2084
    iget-boolean v0, v0, Lcom/flurry/sdk/am;->g:Z

    .line 152
    if-eqz v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 2220
    :cond_0
    iget v0, p1, Lcom/flurry/sdk/ku;->p:I

    .line 157
    const/4 v1, 0x3

    invoke-static {}, Lcom/flurry/sdk/am;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Downloader: Download status code is:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " for url: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/flurry/sdk/am$2;->a:Lcom/flurry/sdk/am;

    invoke-static {v3}, Lcom/flurry/sdk/am;->f(Lcom/flurry/sdk/am;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/flurry/sdk/am$2;->a:Lcom/flurry/sdk/am;

    invoke-virtual {p1}, Lcom/flurry/sdk/ku;->c()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/am;->a(Lcom/flurry/sdk/am;Z)Z

    .line 163
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/am$2$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/am$2$1;-><init>(Lcom/flurry/sdk/am$2;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lcom/flurry/sdk/ku;Ljava/io/InputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/flurry/sdk/am$2;->a:Lcom/flurry/sdk/am;

    .line 1084
    iget-boolean v0, v0, Lcom/flurry/sdk/am;->g:Z

    .line 127
    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Downloader: request cancelled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/am$2;->a:Lcom/flurry/sdk/am;

    iget-object v1, p0, Lcom/flurry/sdk/am$2;->a:Lcom/flurry/sdk/am;

    invoke-static {v1, p1}, Lcom/flurry/sdk/am;->a(Lcom/flurry/sdk/am;Lcom/flurry/sdk/ku;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/am;->a(Lcom/flurry/sdk/am;J)J

    .line 133
    iget-object v0, p0, Lcom/flurry/sdk/am$2;->a:Lcom/flurry/sdk/am;

    invoke-static {v0}, Lcom/flurry/sdk/am;->d(Lcom/flurry/sdk/am;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/flurry/sdk/am$2;->a:Lcom/flurry/sdk/am;

    invoke-static {v2}, Lcom/flurry/sdk/am;->e(Lcom/flurry/sdk/am;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 134
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Downloader: content length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/am$2;->a:Lcom/flurry/sdk/am;

    invoke-static {v2}, Lcom/flurry/sdk/am;->d(Lcom/flurry/sdk/am;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exceeds size limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/am$2;->a:Lcom/flurry/sdk/am;

    invoke-static {v2}, Lcom/flurry/sdk/am;->e(Lcom/flurry/sdk/am;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    const/4 v2, 0x0

    .line 139
    :try_start_0
    new-instance v1, Lcom/flurry/sdk/at;

    iget-object v0, p0, Lcom/flurry/sdk/am$2;->a:Lcom/flurry/sdk/am;

    invoke-static {v0}, Lcom/flurry/sdk/am;->e(Lcom/flurry/sdk/am;)J

    move-result-wide v4

    invoke-direct {v1, p2, v4, v5}, Lcom/flurry/sdk/at;-><init>(Ljava/io/InputStream;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/am$2;->a:Lcom/flurry/sdk/am;

    invoke-virtual {v0}, Lcom/flurry/sdk/am;->c()Ljava/io/OutputStream;

    move-result-object v0

    .line 142
    invoke-static {v1, v0}, Lcom/flurry/sdk/ly;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    iget-object v0, p0, Lcom/flurry/sdk/am$2;->a:Lcom/flurry/sdk/am;

    invoke-virtual {v0}, Lcom/flurry/sdk/am;->d()V

    .line 145
    invoke-static {v1}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    .line 146
    return-void

    .line 144
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    iget-object v2, p0, Lcom/flurry/sdk/am$2;->a:Lcom/flurry/sdk/am;

    invoke-virtual {v2}, Lcom/flurry/sdk/am;->d()V

    .line 145
    invoke-static {v1}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    throw v0

    .line 144
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

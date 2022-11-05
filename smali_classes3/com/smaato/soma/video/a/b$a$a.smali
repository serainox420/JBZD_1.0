.class Lcom/smaato/soma/video/a/b$a$a;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/video/a/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/video/a/b$a;


# direct methods
.method private constructor <init>(Lcom/smaato/soma/video/a/b$a;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 822
    iput-object p1, p0, Lcom/smaato/soma/video/a/b$a$a;->a:Lcom/smaato/soma/video/a/b$a;

    .line 823
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 824
    return-void
.end method

.method synthetic constructor <init>(Lcom/smaato/soma/video/a/b$a;Ljava/io/OutputStream;Lcom/smaato/soma/video/a/b$1;)V
    .locals 0

    .prologue
    .line 821
    invoke-direct {p0, p1, p2}, Lcom/smaato/soma/video/a/b$a$a;-><init>(Lcom/smaato/soma/video/a/b$a;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 844
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/video/a/b$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    :goto_0
    return-void

    .line 845
    :catch_0
    move-exception v0

    .line 846
    iget-object v0, p0, Lcom/smaato/soma/video/a/b$a$a;->a:Lcom/smaato/soma/video/a/b$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smaato/soma/video/a/b$a;->a(Lcom/smaato/soma/video/a/b$a;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 852
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/video/a/b$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    :goto_0
    return-void

    .line 853
    :catch_0
    move-exception v0

    .line 854
    iget-object v0, p0, Lcom/smaato/soma/video/a/b$a$a;->a:Lcom/smaato/soma/video/a/b$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smaato/soma/video/a/b$a;->a(Lcom/smaato/soma/video/a/b$a;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 2

    .prologue
    .line 828
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/video/a/b$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    :goto_0
    return-void

    .line 829
    :catch_0
    move-exception v0

    .line 830
    iget-object v0, p0, Lcom/smaato/soma/video/a/b$a$a;->a:Lcom/smaato/soma/video/a/b$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smaato/soma/video/a/b$a;->a(Lcom/smaato/soma/video/a/b$a;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2

    .prologue
    .line 836
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/video/a/b$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    :goto_0
    return-void

    .line 837
    :catch_0
    move-exception v0

    .line 838
    iget-object v0, p0, Lcom/smaato/soma/video/a/b$a$a;->a:Lcom/smaato/soma/video/a/b$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smaato/soma/video/a/b$a;->a(Lcom/smaato/soma/video/a/b$a;Z)Z

    goto :goto_0
.end method

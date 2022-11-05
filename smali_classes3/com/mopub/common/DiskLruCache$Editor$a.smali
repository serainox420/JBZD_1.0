.class Lcom/mopub/common/DiskLruCache$Editor$a;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/common/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcom/mopub/common/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 839
    iput-object p1, p0, Lcom/mopub/common/DiskLruCache$Editor$a;->a:Lcom/mopub/common/DiskLruCache$Editor;

    .line 840
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 841
    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/common/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/mopub/common/DiskLruCache$1;)V
    .locals 0

    .prologue
    .line 838
    invoke-direct {p0, p1, p2}, Lcom/mopub/common/DiskLruCache$Editor$a;-><init>(Lcom/mopub/common/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 861
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    :goto_0
    return-void

    .line 862
    :catch_0
    move-exception v0

    .line 863
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor$a;->a:Lcom/mopub/common/DiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mopub/common/DiskLruCache$Editor;->a(Lcom/mopub/common/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 869
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    :goto_0
    return-void

    .line 870
    :catch_0
    move-exception v0

    .line 871
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor$a;->a:Lcom/mopub/common/DiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mopub/common/DiskLruCache$Editor;->a(Lcom/mopub/common/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 2

    .prologue
    .line 845
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :goto_0
    return-void

    .line 846
    :catch_0
    move-exception v0

    .line 847
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor$a;->a:Lcom/mopub/common/DiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mopub/common/DiskLruCache$Editor;->a(Lcom/mopub/common/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2

    .prologue
    .line 853
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    :goto_0
    return-void

    .line 854
    :catch_0
    move-exception v0

    .line 855
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor$a;->a:Lcom/mopub/common/DiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mopub/common/DiskLruCache$Editor;->a(Lcom/mopub/common/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

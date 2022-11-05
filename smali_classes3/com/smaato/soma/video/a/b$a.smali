.class public final Lcom/smaato/soma/video/a/b$a;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/video/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/video/a/b$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/video/a/b;

.field private final b:Lcom/smaato/soma/video/a/b$b;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/smaato/soma/video/a/b;Lcom/smaato/soma/video/a/b$b;)V
    .locals 1

    .prologue
    .line 712
    iput-object p1, p0, Lcom/smaato/soma/video/a/b$a;->a:Lcom/smaato/soma/video/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 713
    iput-object p2, p0, Lcom/smaato/soma/video/a/b$a;->b:Lcom/smaato/soma/video/a/b$b;

    .line 714
    invoke-static {p2}, Lcom/smaato/soma/video/a/b$b;->d(Lcom/smaato/soma/video/a/b$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/smaato/soma/video/a/b$a;->c:[Z

    .line 715
    return-void

    .line 714
    :cond_0
    invoke-static {p1}, Lcom/smaato/soma/video/a/b;->e(Lcom/smaato/soma/video/a/b;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/smaato/soma/video/a/b;Lcom/smaato/soma/video/a/b$b;Lcom/smaato/soma/video/a/b$1;)V
    .locals 0

    .prologue
    .line 706
    invoke-direct {p0, p1, p2}, Lcom/smaato/soma/video/a/b$a;-><init>(Lcom/smaato/soma/video/a/b;Lcom/smaato/soma/video/a/b$b;)V

    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/video/a/b$a;)Lcom/smaato/soma/video/a/b$b;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/smaato/soma/video/a/b$a;->b:Lcom/smaato/soma/video/a/b$b;

    return-object v0
.end method

.method static synthetic a(Lcom/smaato/soma/video/a/b$a;Z)Z
    .locals 0

    .prologue
    .line 706
    iput-boolean p1, p0, Lcom/smaato/soma/video/a/b$a;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/smaato/soma/video/a/b$a;)[Z
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/smaato/soma/video/a/b$a;->c:[Z

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 754
    iget-object v2, p0, Lcom/smaato/soma/video/a/b$a;->a:Lcom/smaato/soma/video/a/b;

    monitor-enter v2

    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/video/a/b$a;->b:Lcom/smaato/soma/video/a/b$b;

    invoke-static {v0}, Lcom/smaato/soma/video/a/b$b;->a(Lcom/smaato/soma/video/a/b$b;)Lcom/smaato/soma/video/a/b$a;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 756
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 776
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 758
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/smaato/soma/video/a/b$a;->b:Lcom/smaato/soma/video/a/b$b;

    invoke-static {v0}, Lcom/smaato/soma/video/a/b$b;->d(Lcom/smaato/soma/video/a/b$b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 759
    iget-object v0, p0, Lcom/smaato/soma/video/a/b$a;->c:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 761
    :cond_1
    iget-object v0, p0, Lcom/smaato/soma/video/a/b$a;->b:Lcom/smaato/soma/video/a/b$b;

    invoke-virtual {v0, p1}, Lcom/smaato/soma/video/a/b$b;->b(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 764
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 775
    :goto_0
    :try_start_3
    new-instance v0, Lcom/smaato/soma/video/a/b$a$a;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/smaato/soma/video/a/b$a$a;-><init>(Lcom/smaato/soma/video/a/b$a;Ljava/io/OutputStream;Lcom/smaato/soma/video/a/b$1;)V

    monitor-exit v2

    :goto_1
    return-object v0

    .line 765
    :catch_0
    move-exception v0

    .line 767
    iget-object v0, p0, Lcom/smaato/soma/video/a/b$a;->a:Lcom/smaato/soma/video/a/b;

    invoke-static {v0}, Lcom/smaato/soma/video/a/b;->f(Lcom/smaato/soma/video/a/b;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 769
    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v0

    .line 773
    goto :goto_0

    .line 770
    :catch_1
    move-exception v0

    .line 772
    :try_start_5
    invoke-static {}, Lcom/smaato/soma/video/a/b;->d()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 795
    iget-boolean v0, p0, Lcom/smaato/soma/video/a/b$a;->d:Z

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/smaato/soma/video/a/b$a;->a:Lcom/smaato/soma/video/a/b;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/smaato/soma/video/a/b;->a(Lcom/smaato/soma/video/a/b;Lcom/smaato/soma/video/a/b$a;Z)V

    .line 797
    iget-object v0, p0, Lcom/smaato/soma/video/a/b$a;->a:Lcom/smaato/soma/video/a/b;

    iget-object v1, p0, Lcom/smaato/soma/video/a/b$a;->b:Lcom/smaato/soma/video/a/b$b;

    invoke-static {v1}, Lcom/smaato/soma/video/a/b$b;->c(Lcom/smaato/soma/video/a/b$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/video/a/b;->c(Ljava/lang/String;)Z

    .line 801
    :goto_0
    iput-boolean v2, p0, Lcom/smaato/soma/video/a/b$a;->e:Z

    .line 802
    return-void

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/video/a/b$a;->a:Lcom/smaato/soma/video/a/b;

    invoke-static {v0, p0, v2}, Lcom/smaato/soma/video/a/b;->a(Lcom/smaato/soma/video/a/b;Lcom/smaato/soma/video/a/b$a;Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 809
    iget-object v0, p0, Lcom/smaato/soma/video/a/b$a;->a:Lcom/smaato/soma/video/a/b;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/smaato/soma/video/a/b;->a(Lcom/smaato/soma/video/a/b;Lcom/smaato/soma/video/a/b$a;Z)V

    .line 810
    return-void
.end method

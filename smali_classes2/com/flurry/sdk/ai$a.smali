.class public final Lcom/flurry/sdk/ai$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ai$a$a;
    }
.end annotation


# instance fields
.field final a:Lcom/flurry/sdk/ai$b;

.field final b:[Z

.field c:Z

.field d:Z

.field final synthetic e:Lcom/flurry/sdk/ai;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/ai;Lcom/flurry/sdk/ai$b;)V
    .locals 1

    .prologue
    .line 727
    iput-object p1, p0, Lcom/flurry/sdk/ai$a;->e:Lcom/flurry/sdk/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    iput-object p2, p0, Lcom/flurry/sdk/ai$a;->a:Lcom/flurry/sdk/ai$b;

    .line 1875
    iget-boolean v0, p2, Lcom/flurry/sdk/ai$b;->c:Z

    .line 729
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/flurry/sdk/ai$a;->b:[Z

    .line 730
    return-void

    .line 729
    :cond_0
    invoke-static {p1}, Lcom/flurry/sdk/ai;->f(Lcom/flurry/sdk/ai;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/ai;Lcom/flurry/sdk/ai$b;B)V
    .locals 0

    .prologue
    .line 721
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/ai$a;-><init>(Lcom/flurry/sdk/ai;Lcom/flurry/sdk/ai$b;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 769
    iget-object v2, p0, Lcom/flurry/sdk/ai$a;->e:Lcom/flurry/sdk/ai;

    monitor-enter v2

    .line 770
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ai$a;->a:Lcom/flurry/sdk/ai$b;

    .line 2875
    iget-object v0, v0, Lcom/flurry/sdk/ai$b;->d:Lcom/flurry/sdk/ai$a;

    .line 770
    if-eq v0, p0, :cond_0

    .line 771
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 791
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 773
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/ai$a;->a:Lcom/flurry/sdk/ai$b;

    .line 3875
    iget-boolean v0, v0, Lcom/flurry/sdk/ai$b;->c:Z

    .line 773
    if-nez v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/flurry/sdk/ai$a;->b:[Z

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v1

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/ai$a;->a:Lcom/flurry/sdk/ai$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ai$b;->b(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 779
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 790
    :goto_0
    :try_start_3
    new-instance v0, Lcom/flurry/sdk/ai$a$a;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/flurry/sdk/ai$a$a;-><init>(Lcom/flurry/sdk/ai$a;Ljava/io/OutputStream;B)V

    monitor-exit v2

    :goto_1
    return-object v0

    .line 782
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/flurry/sdk/ai$a;->e:Lcom/flurry/sdk/ai;

    invoke-static {v0}, Lcom/flurry/sdk/ai;->g(Lcom/flurry/sdk/ai;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 784
    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v0

    .line 788
    goto :goto_0

    .line 787
    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/flurry/sdk/ai;->a()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public final b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 824
    iget-object v0, p0, Lcom/flurry/sdk/ai$a;->e:Lcom/flurry/sdk/ai;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/flurry/sdk/ai;->a(Lcom/flurry/sdk/ai;Lcom/flurry/sdk/ai$a;Z)V

    .line 825
    return-void
.end method

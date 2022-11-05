.class public final Lcom/smaato/soma/video/a/b;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/video/a/b$b;,
        Lcom/smaato/soma/video/a/b$a;,
        Lcom/smaato/soma/video/a/b$c;
    }
.end annotation


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field private static final p:Ljava/io/OutputStream;


# instance fields
.field final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private final f:Ljava/io/File;

.field private final g:I

.field private h:J

.field private final i:I

.field private j:J

.field private k:Ljava/io/Writer;

.field private final l:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/smaato/soma/video/a/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:J

.field private final o:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-string v0, "[a-z0-9_-]{1,64}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/smaato/soma/video/a/b;->a:Ljava/util/regex/Pattern;

    .line 698
    new-instance v0, Lcom/smaato/soma/video/a/b$2;

    invoke-direct {v0}, Lcom/smaato/soma/video/a/b$2;-><init>()V

    sput-object v0, Lcom/smaato/soma/video/a/b;->p:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-wide v4, p0, Lcom/smaato/soma/video/a/b;->j:J

    .line 135
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/smaato/soma/video/a/b;->l:Ljava/util/LinkedHashMap;

    .line 144
    iput-wide v4, p0, Lcom/smaato/soma/video/a/b;->n:J

    .line 147
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/smaato/soma/video/a/b;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 149
    new-instance v0, Lcom/smaato/soma/video/a/b$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/video/a/b$1;-><init>(Lcom/smaato/soma/video/a/b;)V

    iput-object v0, p0, Lcom/smaato/soma/video/a/b;->o:Ljava/util/concurrent/Callable;

    .line 166
    iput-object p1, p0, Lcom/smaato/soma/video/a/b;->c:Ljava/io/File;

    .line 167
    iput p2, p0, Lcom/smaato/soma/video/a/b;->g:I

    .line 168
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smaato/soma/video/a/b;->d:Ljava/io/File;

    .line 169
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smaato/soma/video/a/b;->e:Ljava/io/File;

    .line 170
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smaato/soma/video/a/b;->f:Ljava/io/File;

    .line 171
    iput p3, p0, Lcom/smaato/soma/video/a/b;->i:I

    .line 172
    iput-wide p4, p0, Lcom/smaato/soma/video/a/b;->h:J

    .line 173
    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/video/a/b;I)I
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/smaato/soma/video/a/b;->m:I

    return p1
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/smaato/soma/video/a/b$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 439
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/smaato/soma/video/a/b;->i()V

    .line 440
    invoke-direct {p0, p1}, Lcom/smaato/soma/video/a/b;->e(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/video/a/b$b;

    .line 442
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    .line 443
    invoke-static {v0}, Lcom/smaato/soma/video/a/b$b;->e(Lcom/smaato/soma/video/a/b$b;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 459
    :goto_0
    monitor-exit p0

    return-object v0

    .line 446
    :cond_1
    if-nez v0, :cond_2

    .line 447
    :try_start_1
    new-instance v0, Lcom/smaato/soma/video/a/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/smaato/soma/video/a/b$b;-><init>(Lcom/smaato/soma/video/a/b;Ljava/lang/String;Lcom/smaato/soma/video/a/b$1;)V

    .line 448
    iget-object v1, p0, Lcom/smaato/soma/video/a/b;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 453
    :goto_1
    new-instance v0, Lcom/smaato/soma/video/a/b$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/smaato/soma/video/a/b$a;-><init>(Lcom/smaato/soma/video/a/b;Lcom/smaato/soma/video/a/b$b;Lcom/smaato/soma/video/a/b$1;)V

    .line 454
    invoke-static {v1, v0}, Lcom/smaato/soma/video/a/b$b;->a(Lcom/smaato/soma/video/a/b$b;Lcom/smaato/soma/video/a/b$a;)Lcom/smaato/soma/video/a/b$a;

    .line 457
    iget-object v1, p0, Lcom/smaato/soma/video/a/b;->k:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DIRTY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 458
    iget-object v1, p0, Lcom/smaato/soma/video/a/b;->k:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 449
    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/smaato/soma/video/a/b$b;->a(Lcom/smaato/soma/video/a/b$b;)Lcom/smaato/soma/video/a/b$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 450
    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public static a(Ljava/io/File;IIJ)Lcom/smaato/soma/video/a/b;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    if-gtz p2, :cond_1

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 206
    :cond_2
    :goto_0
    new-instance v0, Lcom/smaato/soma/video/a/b;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/smaato/soma/video/a/b;-><init>(Ljava/io/File;IIJ)V

    .line 207
    iget-object v1, v0, Lcom/smaato/soma/video/a/b;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 209
    :try_start_0
    invoke-direct {v0}, Lcom/smaato/soma/video/a/b;->e()V

    .line 210
    invoke-direct {v0}, Lcom/smaato/soma/video/a/b;->f()V

    .line 211
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/smaato/soma/video/a/b;->d:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/smaato/soma/video/a/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/smaato/soma/video/a/b;->k:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_1
    return-object v0

    .line 201
    :cond_3
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/smaato/soma/video/a/b;->a(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 219
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", removing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0}, Lcom/smaato/soma/video/a/b;->c()V

    .line 226
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 227
    new-instance v0, Lcom/smaato/soma/video/a/b;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/smaato/soma/video/a/b;-><init>(Ljava/io/File;IIJ)V

    .line 228
    invoke-direct {v0}, Lcom/smaato/soma/video/a/b;->g()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/smaato/soma/video/a/b;)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->k:Ljava/io/Writer;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/smaato/soma/video/a/b$a;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 494
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/smaato/soma/video/a/b$a;->a(Lcom/smaato/soma/video/a/b$a;)Lcom/smaato/soma/video/a/b$b;

    move-result-object v2

    .line 495
    invoke-static {v2}, Lcom/smaato/soma/video/a/b$b;->a(Lcom/smaato/soma/video/a/b$b;)Lcom/smaato/soma/video/a/b$a;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 496
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 500
    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    invoke-static {v2}, Lcom/smaato/soma/video/a/b$b;->d(Lcom/smaato/soma/video/a/b$b;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v0

    .line 501
    :goto_0
    iget v3, p0, Lcom/smaato/soma/video/a/b;->i:I

    if-ge v1, v3, :cond_4

    .line 502
    invoke-static {p1}, Lcom/smaato/soma/video/a/b$a;->b(Lcom/smaato/soma/video/a/b$a;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-nez v3, :cond_1

    .line 503
    invoke-virtual {p1}, Lcom/smaato/soma/video/a/b$a;->b()V

    .line 504
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Newly created entry didn\'t create value for index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_1
    invoke-virtual {v2, v1}, Lcom/smaato/soma/video/a/b$b;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 507
    invoke-virtual {p1}, Lcom/smaato/soma/video/a/b$a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 501
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 513
    :cond_4
    :goto_2
    :try_start_2
    iget v1, p0, Lcom/smaato/soma/video/a/b;->i:I

    if-ge v0, v1, :cond_7

    .line 514
    invoke-virtual {v2, v0}, Lcom/smaato/soma/video/a/b$b;->b(I)Ljava/io/File;

    move-result-object v1

    .line 515
    if-eqz p2, :cond_6

    .line 516
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 517
    invoke-virtual {v2, v0}, Lcom/smaato/soma/video/a/b$b;->a(I)Ljava/io/File;

    move-result-object v3

    .line 518
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 519
    invoke-static {v2}, Lcom/smaato/soma/video/a/b$b;->b(Lcom/smaato/soma/video/a/b$b;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    .line 520
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 521
    invoke-static {v2}, Lcom/smaato/soma/video/a/b$b;->b(Lcom/smaato/soma/video/a/b$b;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    .line 522
    iget-wide v8, p0, Lcom/smaato/soma/video/a/b;->j:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/smaato/soma/video/a/b;->j:J

    .line 513
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 525
    :cond_6
    invoke-static {v1}, Lcom/smaato/soma/video/a/b;->a(Ljava/io/File;)V

    goto :goto_3

    .line 529
    :cond_7
    iget v0, p0, Lcom/smaato/soma/video/a/b;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/smaato/soma/video/a/b;->m:I

    .line 530
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/smaato/soma/video/a/b$b;->a(Lcom/smaato/soma/video/a/b$b;Lcom/smaato/soma/video/a/b$a;)Lcom/smaato/soma/video/a/b$a;

    .line 531
    invoke-static {v2}, Lcom/smaato/soma/video/a/b$b;->d(Lcom/smaato/soma/video/a/b$b;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_a

    .line 532
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/smaato/soma/video/a/b$b;->a(Lcom/smaato/soma/video/a/b$b;Z)Z

    .line 533
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->k:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLEAN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/smaato/soma/video/a/b$b;->c(Lcom/smaato/soma/video/a/b$b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/smaato/soma/video/a/b$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 534
    if-eqz p2, :cond_8

    .line 535
    iget-wide v0, p0, Lcom/smaato/soma/video/a/b;->n:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/smaato/soma/video/a/b;->n:J

    invoke-static {v2, v0, v1}, Lcom/smaato/soma/video/a/b$b;->a(Lcom/smaato/soma/video/a/b$b;J)J

    .line 541
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 543
    iget-wide v0, p0, Lcom/smaato/soma/video/a/b;->j:J

    iget-wide v2, p0, Lcom/smaato/soma/video/a/b;->h:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    invoke-direct {p0}, Lcom/smaato/soma/video/a/b;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 544
    :cond_9
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/smaato/soma/video/a/b;->o:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1

    .line 538
    :cond_a
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->l:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/smaato/soma/video/a/b$b;->c(Lcom/smaato/soma/video/a/b$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->k:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOVE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/smaato/soma/video/a/b$b;->c(Lcom/smaato/soma/video/a/b$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method static synthetic a(Lcom/smaato/soma/video/a/b;Lcom/smaato/soma/video/a/b$a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/smaato/soma/video/a/b;->a(Lcom/smaato/soma/video/a/b$a;Z)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 373
    :cond_0
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    if-eqz p2, :cond_0

    .line 377
    invoke-static {p1}, Lcom/smaato/soma/video/a/b;->a(Ljava/io/File;)V

    .line 379
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 382
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/smaato/soma/video/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/smaato/soma/video/a/b;->j()V

    return-void
.end method

.method static synthetic c(Lcom/smaato/soma/video/a/b;)Z
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/smaato/soma/video/a/b;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic d()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/smaato/soma/video/a/b;->p:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic d(Lcom/smaato/soma/video/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/smaato/soma/video/a/b;->g()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x20

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 265
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 266
    if-ne v2, v5, :cond_0

    .line 267
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    add-int/lit8 v0, v2, 0x1

    .line 271
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 273
    if-ne v3, v5, :cond_2

    .line 274
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    const-string v1, "REMOVE"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_7

    const-string v1, "REMOVE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 276
    iget-object v1, p0, Lcom/smaato/soma/video/a/b;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_1
    :goto_0
    return-void

    .line 280
    :cond_2
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 283
    :goto_1
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/video/a/b$b;

    .line 284
    if-nez v0, :cond_3

    .line 285
    new-instance v0, Lcom/smaato/soma/video/a/b$b;

    invoke-direct {v0, p0, v1, v6}, Lcom/smaato/soma/video/a/b$b;-><init>(Lcom/smaato/soma/video/a/b;Ljava/lang/String;Lcom/smaato/soma/video/a/b$1;)V

    .line 286
    iget-object v4, p0, Lcom/smaato/soma/video/a/b;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_3
    if-eq v3, v5, :cond_4

    const-string v1, "CLEAN"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_4

    const-string v1, "CLEAN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 290
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 291
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/smaato/soma/video/a/b$b;->a(Lcom/smaato/soma/video/a/b$b;Z)Z

    .line 292
    invoke-static {v0, v6}, Lcom/smaato/soma/video/a/b$b;->a(Lcom/smaato/soma/video/a/b$b;Lcom/smaato/soma/video/a/b$a;)Lcom/smaato/soma/video/a/b$a;

    .line 293
    invoke-static {v0, v1}, Lcom/smaato/soma/video/a/b$b;->a(Lcom/smaato/soma/video/a/b$b;[Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_4
    if-ne v3, v5, :cond_5

    const-string v1, "DIRTY"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_5

    const-string v1, "DIRTY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 295
    new-instance v1, Lcom/smaato/soma/video/a/b$a;

    invoke-direct {v1, p0, v0, v6}, Lcom/smaato/soma/video/a/b$a;-><init>(Lcom/smaato/soma/video/a/b;Lcom/smaato/soma/video/a/b$b;Lcom/smaato/soma/video/a/b$1;)V

    invoke-static {v0, v1}, Lcom/smaato/soma/video/a/b$b;->a(Lcom/smaato/soma/video/a/b$b;Lcom/smaato/soma/video/a/b$a;)Lcom/smaato/soma/video/a/b$a;

    goto :goto_0

    .line 296
    :cond_5
    if-ne v3, v5, :cond_6

    const-string v0, "READ"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v2, v0, :cond_6

    const-string v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v1, v0

    goto/16 :goto_1
.end method

.method static synthetic e(Lcom/smaato/soma/video/a/b;)I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/smaato/soma/video/a/b;->i:I

    return v0
.end method

.method private e()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    new-instance v1, Lcom/smaato/soma/video/a/c;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/smaato/soma/video/a/b;->d:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Lcom/smaato/soma/video/a/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Lcom/smaato/soma/video/a/c;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 235
    :try_start_0
    invoke-virtual {v1}, Lcom/smaato/soma/video/a/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {v1}, Lcom/smaato/soma/video/a/c;->a()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-virtual {v1}, Lcom/smaato/soma/video/a/c;->a()Ljava/lang/String;

    move-result-object v3

    .line 238
    invoke-virtual {v1}, Lcom/smaato/soma/video/a/c;->a()Ljava/lang/String;

    move-result-object v4

    .line 239
    invoke-virtual {v1}, Lcom/smaato/soma/video/a/c;->a()Ljava/lang/String;

    move-result-object v5

    .line 240
    const-string v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    .line 241
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/smaato/soma/video/a/b;->g:I

    .line 242
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/smaato/soma/video/a/b;->i:I

    .line 243
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    .line 244
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 245
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected journal header: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/smaato/soma/video/a/d;->a(Ljava/io/Closeable;)V

    throw v0

    .line 249
    :cond_1
    const/4 v0, 0x0

    .line 252
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/smaato/soma/video/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/smaato/soma/video/a/b;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :catch_0
    move-exception v2

    .line 258
    :try_start_2
    iget-object v2, p0, Lcom/smaato/soma/video/a/b;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/smaato/soma/video/a/b;->m:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    invoke-static {v1}, Lcom/smaato/soma/video/a/d;->a(Ljava/io/Closeable;)V

    .line 262
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 643
    sget-object v0, Lcom/smaato/soma/video/a/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 644
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must match regex [a-z0-9_-]{1,64}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/smaato/soma/video/a/b;)Ljava/io/File;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->c:Ljava/io/File;

    return-object v0
.end method

.method private f()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 308
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->e:Ljava/io/File;

    invoke-static {v0}, Lcom/smaato/soma/video/a/b;->a(Ljava/io/File;)V

    .line 309
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 310
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/video/a/b$b;

    .line 311
    invoke-static {v0}, Lcom/smaato/soma/video/a/b$b;->a(Lcom/smaato/soma/video/a/b$b;)Lcom/smaato/soma/video/a/b$a;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    .line 312
    :goto_1
    iget v4, p0, Lcom/smaato/soma/video/a/b;->i:I

    if-ge v1, v4, :cond_0

    .line 313
    iget-wide v4, p0, Lcom/smaato/soma/video/a/b;->j:J

    invoke-static {v0}, Lcom/smaato/soma/video/a/b$b;->b(Lcom/smaato/soma/video/a/b$b;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/smaato/soma/video/a/b;->j:J

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 316
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smaato/soma/video/a/b$b;->a(Lcom/smaato/soma/video/a/b$b;Lcom/smaato/soma/video/a/b$a;)Lcom/smaato/soma/video/a/b$a;

    move v1, v2

    .line 317
    :goto_2
    iget v4, p0, Lcom/smaato/soma/video/a/b;->i:I

    if-ge v1, v4, :cond_2

    .line 318
    invoke-virtual {v0, v1}, Lcom/smaato/soma/video/a/b$b;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/smaato/soma/video/a/b;->a(Ljava/io/File;)V

    .line 319
    invoke-virtual {v0, v1}, Lcom/smaato/soma/video/a/b$b;->b(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/smaato/soma/video/a/b;->a(Ljava/io/File;)V

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 321
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 324
    :cond_3
    return-void
.end method

.method private declared-synchronized g()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->k:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 335
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/smaato/soma/video/a/b;->e:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/smaato/soma/video/a/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 338
    :try_start_1
    const-string v0, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 339
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 340
    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 341
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 342
    iget v0, p0, Lcom/smaato/soma/video/a/b;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 343
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 344
    iget v0, p0, Lcom/smaato/soma/video/a/b;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 345
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 346
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/video/a/b$b;

    .line 349
    invoke-static {v0}, Lcom/smaato/soma/video/a/b$b;->a(Lcom/smaato/soma/video/a/b$b;)Lcom/smaato/soma/video/a/b$a;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/smaato/soma/video/a/b$b;->c(Lcom/smaato/soma/video/a/b$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 356
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 331
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 352
    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/smaato/soma/video/a/b$b;->c(Lcom/smaato/soma/video/a/b$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/smaato/soma/video/a/b$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 356
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 359
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 360
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/smaato/soma/video/a/b;->f:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/smaato/soma/video/a/b;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 362
    :cond_3
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->e:Ljava/io/File;

    iget-object v1, p0, Lcom/smaato/soma/video/a/b;->d:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/smaato/soma/video/a/b;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 363
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 365
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/smaato/soma/video/a/b;->d:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lcom/smaato/soma/video/a/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/smaato/soma/video/a/b;->k:Ljava/io/Writer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 367
    monitor-exit p0

    return-void
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 553
    .line 554
    iget v0, p0, Lcom/smaato/soma/video/a/b;->m:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/smaato/soma/video/a/b;->m:I

    iget-object v1, p0, Lcom/smaato/soma/video/a/b;->l:Ljava/util/LinkedHashMap;

    .line 555
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 554
    :goto_0
    return v0

    .line 555
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->k:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 599
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_0
    return-void
.end method

.method private j()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 626
    :goto_0
    iget-wide v0, p0, Lcom/smaato/soma/video/a/b;->j:J

    iget-wide v2, p0, Lcom/smaato/soma/video/a/b;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 628
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/smaato/soma/video/a/b;->c(Ljava/lang/String;)Z

    goto :goto_0

    .line 630
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/smaato/soma/video/a/b$c;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 390
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/smaato/soma/video/a/b;->i()V

    .line 391
    invoke-direct {p0, p1}, Lcom/smaato/soma/video/a/b;->e(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/video/a/b$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    if-nez v0, :cond_1

    .line 427
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 397
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/smaato/soma/video/a/b$b;->d(Lcom/smaato/soma/video/a/b$b;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 404
    iget v3, p0, Lcom/smaato/soma/video/a/b;->i:I

    new-array v6, v3, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v2

    .line 406
    :goto_1
    :try_start_2
    iget v4, p0, Lcom/smaato/soma/video/a/b;->i:I

    if-ge v3, v4, :cond_2

    .line 407
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v0, v3}, Lcom/smaato/soma/video/a/b$b;->a(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v6, v3
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 406
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 409
    :catch_0
    move-exception v0

    move v0, v2

    .line 411
    :goto_2
    :try_start_3
    iget v2, p0, Lcom/smaato/soma/video/a/b;->i:I

    if-ge v0, v2, :cond_0

    .line 412
    aget-object v2, v6, v0

    if-eqz v2, :cond_0

    .line 413
    aget-object v2, v6, v0

    invoke-static {v2}, Lcom/smaato/soma/video/a/d;->a(Ljava/io/Closeable;)V

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 421
    :cond_2
    iget v1, p0, Lcom/smaato/soma/video/a/b;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/smaato/soma/video/a/b;->m:I

    .line 422
    iget-object v1, p0, Lcom/smaato/soma/video/a/b;->k:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "READ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 423
    invoke-direct {p0}, Lcom/smaato/soma/video/a/b;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 424
    iget-object v1, p0, Lcom/smaato/soma/video/a/b;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/smaato/soma/video/a/b;->o:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 427
    :cond_3
    new-instance v1, Lcom/smaato/soma/video/a/b$c;

    invoke-static {v0}, Lcom/smaato/soma/video/a/b$b;->e(Lcom/smaato/soma/video/a/b$b;)J

    move-result-wide v4

    invoke-static {v0}, Lcom/smaato/soma/video/a/b$b;->b(Lcom/smaato/soma/video/a/b$b;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/smaato/soma/video/a/b$c;-><init>(Lcom/smaato/soma/video/a/b;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/smaato/soma/video/a/b$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Ljava/io/File;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->c:Ljava/io/File;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/smaato/soma/video/a/b$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 435
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/smaato/soma/video/a/b;->a(Ljava/lang/String;J)Lcom/smaato/soma/video/a/b$a;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 605
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/smaato/soma/video/a/b;->i()V

    .line 606
    invoke-direct {p0}, Lcom/smaato/soma/video/a/b;->j()V

    .line 607
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    monitor-exit p0

    return-void

    .line 605
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/smaato/soma/video/a/b;->close()V

    .line 639
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->c:Ljava/io/File;

    invoke-static {v0}, Lcom/smaato/soma/video/a/d;->a(Ljava/io/File;)V

    .line 640
    return-void
.end method

.method public declared-synchronized c(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 565
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/smaato/soma/video/a/b;->i()V

    .line 566
    invoke-direct {p0, p1}, Lcom/smaato/soma/video/a/b;->e(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/video/a/b$b;

    .line 568
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/smaato/soma/video/a/b$b;->a(Lcom/smaato/soma/video/a/b$b;)Lcom/smaato/soma/video/a/b$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 589
    :goto_0
    monitor-exit p0

    return v0

    .line 577
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/smaato/soma/video/a/b;->j:J

    invoke-static {v0}, Lcom/smaato/soma/video/a/b$b;->b(Lcom/smaato/soma/video/a/b$b;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/smaato/soma/video/a/b;->j:J

    .line 578
    invoke-static {v0}, Lcom/smaato/soma/video/a/b$b;->b(Lcom/smaato/soma/video/a/b$b;)[J

    move-result-object v2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    .line 572
    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget v2, p0, Lcom/smaato/soma/video/a/b;->i:I

    if-ge v1, v2, :cond_3

    .line 573
    invoke-virtual {v0, v1}, Lcom/smaato/soma/video/a/b$b;->a(I)Ljava/io/File;

    move-result-object v2

    .line 574
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 575
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to delete "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 581
    :cond_3
    :try_start_2
    iget v0, p0, Lcom/smaato/soma/video/a/b;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/smaato/soma/video/a/b;->m:I

    .line 582
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->k:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REMOVE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 583
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    invoke-direct {p0}, Lcom/smaato/soma/video/a/b;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 586
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/smaato/soma/video/a/b;->o:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 589
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 612
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->k:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 623
    :goto_0
    monitor-exit p0

    return-void

    .line 615
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/smaato/soma/video/a/b;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/video/a/b$b;

    .line 616
    invoke-static {v0}, Lcom/smaato/soma/video/a/b$b;->a(Lcom/smaato/soma/video/a/b$b;)Lcom/smaato/soma/video/a/b$a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 617
    invoke-static {v0}, Lcom/smaato/soma/video/a/b$b;->a(Lcom/smaato/soma/video/a/b$b;)Lcom/smaato/soma/video/a/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/video/a/b$a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 620
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/smaato/soma/video/a/b;->j()V

    .line 621
    iget-object v0, p0, Lcom/smaato/soma/video/a/b;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 622
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smaato/soma/video/a/b;->k:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

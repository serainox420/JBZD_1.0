.class public abstract Lcom/flurry/sdk/am;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/am$a;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field public a:Lcom/flurry/sdk/am$a;

.field public b:Ljava/lang/String;

.field public c:I

.field d:Lcom/flurry/sdk/aq;

.field e:J

.field public f:Z

.field g:Z

.field private i:J

.field private j:Z

.field private k:I

.field private l:J

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/flurry/sdk/am;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/am;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/flurry/sdk/am;->i:J

    .line 55
    const v0, 0x9c40

    iput v0, p0, Lcom/flurry/sdk/am;->c:I

    .line 56
    const-wide/32 v0, 0x19000

    iput-wide v0, p0, Lcom/flurry/sdk/am;->l:J

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/am;I)I
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/flurry/sdk/am;->k:I

    return p1
.end method

.method static synthetic a(Lcom/flurry/sdk/am;J)J
    .locals 1

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/flurry/sdk/am;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/flurry/sdk/am;Lcom/flurry/sdk/ku;)J
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/flurry/sdk/am;->a(Lcom/flurry/sdk/ku;)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Lcom/flurry/sdk/ku;)J
    .locals 6

    .prologue
    .line 471
    const-wide/16 v2, -0x1

    .line 474
    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 477
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 483
    :goto_0
    return-wide v0

    .line 479
    :catch_0
    move-exception v0

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/am;->h:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Downloader: could not determine content length for url: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/flurry/sdk/am;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method private a(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 463
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s__%03d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/flurry/sdk/am;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/am;)Z
    .locals 1

    .prologue
    .line 19
    .line 8455
    iget-object v0, p0, Lcom/flurry/sdk/am;->d:Lcom/flurry/sdk/aq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/am;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/flurry/sdk/am;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/am;)V
    .locals 5

    .prologue
    .line 19
    .line 10084
    iget-boolean v0, p0, Lcom/flurry/sdk/am;->g:Z

    .line 9180
    if-nez v0, :cond_0

    .line 9185
    new-instance v0, Lcom/flurry/sdk/ks;

    invoke-direct {v0}, Lcom/flurry/sdk/ks;-><init>()V

    .line 9186
    iget-object v1, p0, Lcom/flurry/sdk/am;->b:Ljava/lang/String;

    .line 10136
    iput-object v1, v0, Lcom/flurry/sdk/ku;->f:Ljava/lang/String;

    .line 9187
    sget-object v1, Lcom/flurry/sdk/ku$a;->f:Lcom/flurry/sdk/ku$a;

    .line 10144
    iput-object v1, v0, Lcom/flurry/sdk/ku;->g:Lcom/flurry/sdk/ku$a;

    .line 9188
    new-instance v1, Lcom/flurry/sdk/am$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/am$3;-><init>(Lcom/flurry/sdk/am;)V

    .line 11049
    iput-object v1, v0, Lcom/flurry/sdk/ks;->a:Lcom/flurry/sdk/ks$a;

    .line 9243
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/am;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Downloader: requesting HTTP HEAD for url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/flurry/sdk/am;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 9244
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;Lcom/flurry/sdk/mb;)V

    .line 19
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/am;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/flurry/sdk/am;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/flurry/sdk/am;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/flurry/sdk/am;->g()V

    return-void
.end method

.method static synthetic d(Lcom/flurry/sdk/am;)J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/flurry/sdk/am;->e:J

    return-wide v0
.end method

.method static synthetic e(Lcom/flurry/sdk/am;)J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/flurry/sdk/am;->i:J

    return-wide v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/flurry/sdk/am;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/flurry/sdk/am;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/flurry/sdk/am;->b:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 112
    .line 1084
    iget-boolean v0, p0, Lcom/flurry/sdk/am;->g:Z

    .line 112
    if-eqz v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/am;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Downloader: Requesting file from url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/am;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v0, Lcom/flurry/sdk/ku;

    invoke-direct {v0}, Lcom/flurry/sdk/ku;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/flurry/sdk/am;->b:Ljava/lang/String;

    .line 1136
    iput-object v1, v0, Lcom/flurry/sdk/ku;->f:Ljava/lang/String;

    .line 121
    sget-object v1, Lcom/flurry/sdk/ku$a;->b:Lcom/flurry/sdk/ku$a;

    .line 1144
    iput-object v1, v0, Lcom/flurry/sdk/ku;->g:Lcom/flurry/sdk/ku$a;

    .line 122
    iget v1, p0, Lcom/flurry/sdk/am;->c:I

    .line 2027
    iput v1, v0, Lcom/flurry/sdk/mb;->w:I

    .line 123
    new-instance v1, Lcom/flurry/sdk/am$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/am$2;-><init>(Lcom/flurry/sdk/am;)V

    .line 2202
    iput-object v1, v0, Lcom/flurry/sdk/ku;->k:Lcom/flurry/sdk/ku$c;

    .line 175
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;Lcom/flurry/sdk/mb;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/flurry/sdk/am;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/flurry/sdk/am;->f:Z

    return v0
.end method

.method private h()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    .line 269
    :goto_0
    iget v0, p0, Lcom/flurry/sdk/am;->m:I

    iget v1, p0, Lcom/flurry/sdk/am;->k:I

    if-ge v0, v1, :cond_2

    .line 3084
    iget-boolean v0, p0, Lcom/flurry/sdk/am;->g:Z

    .line 271
    if-eqz v0, :cond_0

    .line 375
    :goto_1
    return-void

    .line 275
    :cond_0
    iget v0, p0, Lcom/flurry/sdk/am;->m:I

    invoke-direct {p0, v0}, Lcom/flurry/sdk/am;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    iget v1, p0, Lcom/flurry/sdk/am;->m:I

    .line 3467
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s=%d-%d"

    new-array v4, v12, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "bytes"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    int-to-long v6, v1

    iget-wide v8, p0, Lcom/flurry/sdk/am;->l:J

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-wide v6, p0, Lcom/flurry/sdk/am;->e:J

    add-int/lit8 v1, v1, 0x1

    int-to-long v8, v1

    iget-wide v10, p0, Lcom/flurry/sdk/am;->l:J

    mul-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 279
    iget-object v2, p0, Lcom/flurry/sdk/am;->d:Lcom/flurry/sdk/aq;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/aq;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    sget-object v0, Lcom/flurry/sdk/am;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Downloader: Skipping chunk with range:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/am;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chunk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/flurry/sdk/am;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 282
    iget v0, p0, Lcom/flurry/sdk/am;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/am;->m:I

    goto :goto_0

    .line 287
    :cond_1
    sget-object v2, Lcom/flurry/sdk/am;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Downloader: Requesting chunk with range:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/am;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " chunk: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/flurry/sdk/am;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v2, Lcom/flurry/sdk/ku;

    invoke-direct {v2}, Lcom/flurry/sdk/ku;-><init>()V

    .line 290
    iget-object v3, p0, Lcom/flurry/sdk/am;->b:Ljava/lang/String;

    .line 4136
    iput-object v3, v2, Lcom/flurry/sdk/ku;->f:Ljava/lang/String;

    .line 291
    sget-object v3, Lcom/flurry/sdk/ku$a;->b:Lcom/flurry/sdk/ku$a;

    .line 4144
    iput-object v3, v2, Lcom/flurry/sdk/ku;->g:Lcom/flurry/sdk/ku$a;

    .line 292
    iget v3, p0, Lcom/flurry/sdk/am;->c:I

    .line 5027
    iput v3, v2, Lcom/flurry/sdk/mb;->w:I

    .line 293
    const-string v3, "Range"

    invoke-virtual {v2, v3, v1}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance v3, Lcom/flurry/sdk/am$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/flurry/sdk/am$4;-><init>(Lcom/flurry/sdk/am;Ljava/lang/String;Ljava/lang/String;)V

    .line 5202
    iput-object v3, v2, Lcom/flurry/sdk/ku;->k:Lcom/flurry/sdk/ku$c;

    .line 367
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;Lcom/flurry/sdk/mb;)V

    goto/16 :goto_1

    .line 374
    :cond_2
    invoke-direct {p0}, Lcom/flurry/sdk/am;->i()V

    goto/16 :goto_1
.end method

.method static synthetic h(Lcom/flurry/sdk/am;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/flurry/sdk/am;->j()V

    return-void
.end method

.method static synthetic i(Lcom/flurry/sdk/am;)J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/flurry/sdk/am;->l:J

    return-wide v0
.end method

.method private i()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x3

    .line 379
    .line 6084
    iget-boolean v1, p0, Lcom/flurry/sdk/am;->g:Z

    .line 379
    if-eqz v1, :cond_0

    .line 437
    :goto_0
    return-void

    .line 383
    :cond_0
    sget-object v1, Lcom/flurry/sdk/am;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Downloader: assembling output file for url: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/flurry/sdk/am;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 389
    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/am;->c()Ljava/io/OutputStream;

    move-result-object v4

    move v1, v0

    .line 390
    :goto_1
    iget v2, p0, Lcom/flurry/sdk/am;->k:I

    if-ge v1, v2, :cond_3

    .line 7084
    iget-boolean v2, p0, Lcom/flurry/sdk/am;->g:Z

    .line 392
    if-eqz v2, :cond_1

    .line 393
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Download cancelled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 414
    :catch_0
    move-exception v1

    .line 416
    invoke-virtual {p0}, Lcom/flurry/sdk/am;->d()V

    move-object v3, v1

    .line 420
    :goto_2
    if-nez v3, :cond_4

    .line 421
    sget-object v0, Lcom/flurry/sdk/am;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Downloader: assemble succeeded for url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/am;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/am;->f:Z

    .line 436
    :goto_3
    invoke-direct {p0}, Lcom/flurry/sdk/am;->j()V

    goto :goto_0

    .line 396
    :cond_1
    :try_start_1
    invoke-direct {p0, v1}, Lcom/flurry/sdk/am;->a(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 400
    :try_start_2
    iget-object v2, p0, Lcom/flurry/sdk/am;->d:Lcom/flurry/sdk/aq;

    invoke-virtual {v2, v5}, Lcom/flurry/sdk/aq;->a(Ljava/lang/String;)Lcom/flurry/sdk/aq$b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    .line 401
    if-nez v2, :cond_2

    .line 402
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not create reader for chunk key: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 407
    :catchall_0
    move-exception v1

    :goto_4
    :try_start_4
    invoke-static {v2}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 416
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/flurry/sdk/am;->d()V

    throw v0

    .line 8081
    :cond_2
    :try_start_5
    iget-object v6, v2, Lcom/flurry/sdk/aq$b;->a:Ljava/io/BufferedInputStream;

    .line 405
    invoke-static {v6, v4}, Lcom/flurry/sdk/ly;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 407
    :try_start_6
    invoke-static {v2}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    .line 411
    iget-object v2, p0, Lcom/flurry/sdk/am;->d:Lcom/flurry/sdk/aq;

    invoke-virtual {v2, v5}, Lcom/flurry/sdk/aq;->c(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 416
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/sdk/am;->d()V

    goto :goto_2

    .line 424
    :cond_4
    sget-object v1, Lcom/flurry/sdk/am;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Downloader: assemble failed for url: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/flurry/sdk/am;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " failed with exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 427
    :goto_5
    iget v1, p0, Lcom/flurry/sdk/am;->k:I

    if-ge v0, v1, :cond_5

    .line 428
    iget-object v1, p0, Lcom/flurry/sdk/am;->d:Lcom/flurry/sdk/aq;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/am;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/aq;->c(Ljava/lang/String;)Z

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 432
    :cond_5
    invoke-virtual {p0}, Lcom/flurry/sdk/am;->e()V

    goto :goto_3

    .line 407
    :catchall_2
    move-exception v1

    move-object v2, v3

    goto :goto_4
.end method

.method private j()V
    .locals 4

    .prologue
    .line 441
    .line 8084
    iget-boolean v0, p0, Lcom/flurry/sdk/am;->g:Z

    .line 441
    if-eqz v0, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/am;->a:Lcom/flurry/sdk/am$a;

    if-eqz v0, :cond_0

    .line 449
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/am;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Downloader: finished -- success: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/flurry/sdk/am;->f:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/am;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/flurry/sdk/am;->a:Lcom/flurry/sdk/am$a;

    invoke-interface {v0, p0}, Lcom/flurry/sdk/am$a;->a(Lcom/flurry/sdk/am;)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/flurry/sdk/am;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 19
    .line 12084
    iget-boolean v2, p0, Lcom/flurry/sdk/am;->g:Z

    .line 11249
    if-nez v2, :cond_2

    .line 12459
    iget-object v2, p0, Lcom/flurry/sdk/am;->d:Lcom/flurry/sdk/aq;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/flurry/sdk/am;->j:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/flurry/sdk/am;->k:I

    if-le v2, v1, :cond_0

    .line 11253
    :goto_0
    if-eqz v1, :cond_3

    .line 11256
    :goto_1
    iget v1, p0, Lcom/flurry/sdk/am;->k:I

    if-ge v0, v1, :cond_1

    .line 11257
    iget-object v1, p0, Lcom/flurry/sdk/am;->d:Lcom/flurry/sdk/aq;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/am;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/aq;->d(Ljava/lang/String;)Z

    .line 11256
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v1, v0

    .line 12459
    goto :goto_0

    .line 11261
    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/am;->h()V

    :cond_2
    :goto_2
    return-void

    .line 11264
    :cond_3
    invoke-direct {p0}, Lcom/flurry/sdk/am;->g()V

    goto :goto_2
.end method

.method static synthetic k(Lcom/flurry/sdk/am;)Lcom/flurry/sdk/aq;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/flurry/sdk/am;->d:Lcom/flurry/sdk/aq;

    return-object v0
.end method

.method static synthetic l(Lcom/flurry/sdk/am;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/flurry/sdk/am;->m:I

    return v0
.end method

.method static synthetic m(Lcom/flurry/sdk/am;)I
    .locals 2

    .prologue
    .line 19
    iget v0, p0, Lcom/flurry/sdk/am;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/flurry/sdk/am;->m:I

    return v0
.end method

.method static synthetic n(Lcom/flurry/sdk/am;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/flurry/sdk/am;->h()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/am$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/am$1;-><init>(Lcom/flurry/sdk/am;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/am;->g:Z

    .line 107
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method protected abstract c()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract d()V
.end method

.method protected abstract e()V
.end method

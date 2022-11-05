.class public final Lcom/google/android/exoplayer2/extractor/e/a;
.super Ljava/lang/Object;
.source "RawCcExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/f;


# static fields
.field private static final a:I


# instance fields
.field private final b:Lcom/google/android/exoplayer2/Format;

.field private final c:Lcom/google/android/exoplayer2/util/l;

.field private d:Lcom/google/android/exoplayer2/extractor/n;

.field private e:I

.field private f:I

.field private g:J

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "RCC\u0001"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/e/a;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/e/a;->b:Lcom/google/android/exoplayer2/Format;

    .line 61
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/l;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/e/a;->c:Lcom/google/android/exoplayer2/util/l;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/e/a;->e:I

    .line 63
    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/extractor/g;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/e/a;->c:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/l;->a()V

    .line 122
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/e/a;->c:Lcom/google/android/exoplayer2/util/l;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/l;->a:[B

    const/16 v3, 0x8

    invoke-interface {p1, v2, v1, v3, v0}, Lcom/google/android/exoplayer2/extractor/g;->a([BIIZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/e/a;->c:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v1

    sget v2, Lcom/google/android/exoplayer2/extractor/e/a;->a:I

    if-eq v1, v2, :cond_0

    .line 124
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Input not RawCC"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/e/a;->c:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/e/a;->f:I

    .line 130
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private c(Lcom/google/android/exoplayer2/extractor/g;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 136
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/e/a;->c:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/l;->a()V

    .line 137
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/e/a;->f:I

    if-nez v2, :cond_2

    .line 138
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/e/a;->c:Lcom/google/android/exoplayer2/util/l;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/l;->a:[B

    const/4 v3, 0x5

    invoke-interface {p1, v2, v0, v3, v1}, Lcom/google/android/exoplayer2/extractor/g;->a([BIIZ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/e/a;->c:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/l;->k()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x2d

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/e/a;->g:J

    .line 152
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/e/a;->c:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/e/a;->h:I

    .line 153
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/e/a;->i:I

    move v0, v1

    .line 154
    goto :goto_0

    .line 143
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/e/a;->f:I

    if-ne v2, v1, :cond_3

    .line 144
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/e/a;->c:Lcom/google/android/exoplayer2/util/l;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/l;->a:[B

    const/16 v3, 0x9

    invoke-interface {p1, v2, v0, v3, v1}, Lcom/google/android/exoplayer2/extractor/g;->a([BIIZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/e/a;->c:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/l;->o()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/e/a;->g:J

    goto :goto_1

    .line 149
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported version number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/e/a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(Lcom/google/android/exoplayer2/extractor/g;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x0

    .line 158
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/e/a;->h:I

    if-lez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/e/a;->c:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->a()V

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/e/a;->c:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-interface {p1, v0, v6, v2}, Lcom/google/android/exoplayer2/extractor/g;->b([BII)V

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/e/a;->d:Lcom/google/android/exoplayer2/extractor/n;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/e/a;->c:Lcom/google/android/exoplayer2/util/l;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 163
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/e/a;->i:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/e/a;->i:I

    .line 158
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/e/a;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/e/a;->h:I

    goto :goto_0

    .line 166
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/e/a;->i:I

    if-lez v0, :cond_1

    .line 167
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/e/a;->d:Lcom/google/android/exoplayer2/extractor/n;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/e/a;->g:J

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/e/a;->i:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/n;->a(JIII[B)V

    .line 169
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/extractor/g;Lcom/google/android/exoplayer2/extractor/l;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 84
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/e/a;->e:I

    packed-switch v2, :pswitch_data_0

    .line 105
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 86
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/e/a;->b(Lcom/google/android/exoplayer2/extractor/g;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/e/a;->e:I

    goto :goto_0

    .line 93
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/e/a;->c(Lcom/google/android/exoplayer2/extractor/g;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    const/4 v2, 0x2

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/e/a;->e:I

    goto :goto_0

    .line 96
    :cond_0
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/e/a;->e:I

    .line 103
    :cond_1
    :goto_1
    return v0

    .line 101
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/e/a;->d(Lcom/google/android/exoplayer2/extractor/g;)V

    .line 102
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/e/a;->e:I

    move v0, v1

    .line 103
    goto :goto_1

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(JJ)V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/e/a;->e:I

    .line 113
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/h;)V
    .locals 4

    .prologue
    .line 67
    new-instance v0, Lcom/google/android/exoplayer2/extractor/m$a;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/m$a;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/h;->a(Lcom/google/android/exoplayer2/extractor/m;)V

    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/h;->a(II)Lcom/google/android/exoplayer2/extractor/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/e/a;->d:Lcom/google/android/exoplayer2/extractor/n;

    .line 69
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/h;->a()V

    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/e/a;->d:Lcom/google/android/exoplayer2/extractor/n;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/e/a;->b:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 71
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/g;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 75
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/e/a;->c:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/l;->a()V

    .line 76
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/e/a;->c:Lcom/google/android/exoplayer2/util/l;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/l;->a:[B

    const/16 v2, 0x8

    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/exoplayer2/extractor/g;->c([BII)V

    .line 77
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/e/a;->c:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v1

    sget v2, Lcom/google/android/exoplayer2/extractor/e/a;->a:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

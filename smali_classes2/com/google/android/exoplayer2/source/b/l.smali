.class final Lcom/google/android/exoplayer2/source/b/l;
.super Ljava/lang/Object;
.source "WebvttExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/f;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/exoplayer2/util/s;

.field private final e:Lcom/google/android/exoplayer2/util/l;

.field private f:Lcom/google/android/exoplayer2/extractor/h;

.field private g:[B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "LOCAL:([^,]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/b/l;->a:Ljava/util/regex/Pattern;

    .line 49
    const-string v0, "MPEGTS:(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/b/l;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/s;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b/l;->c:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/b/l;->d:Lcom/google/android/exoplayer2/util/s;

    .line 63
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/l;->e:Lcom/google/android/exoplayer2/util/l;

    .line 64
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/l;->g:[B

    .line 65
    return-void
.end method

.method private a(J)Lcom/google/android/exoplayer2/extractor/n;
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/l;->f:Lcom/google/android/exoplayer2/extractor/h;

    const/4 v2, 0x3

    invoke-interface {v0, v5, v2}, Lcom/google/android/exoplayer2/extractor/h;->a(II)Lcom/google/android/exoplayer2/extractor/n;

    move-result-object v0

    .line 171
    const-string v2, "text/vtt"

    const/4 v4, -0x1

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/b/l;->c:Ljava/lang/String;

    move-object v3, v1

    move-object v7, v1

    move-wide v8, p1

    invoke-static/range {v1 .. v9}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 173
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/l;->f:Lcom/google/android/exoplayer2/extractor/h;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/h;->a()V

    .line 174
    return-object v0
.end method

.method private a()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    .line 118
    new-instance v5, Lcom/google/android/exoplayer2/util/l;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/l;->g:[B

    invoke-direct {v5, v0}, Lcom/google/android/exoplayer2/util/l;-><init>([B)V

    .line 122
    :try_start_0
    invoke-static {v5}, Lcom/google/android/exoplayer2/text/e/h;->a(Lcom/google/android/exoplayer2/util/l;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    move-wide v6, v2

    .line 133
    :cond_0
    :goto_0
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/l;->x()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 134
    const-string v9, "X-TIMESTAMP-MAP"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 135
    sget-object v0, Lcom/google/android/exoplayer2/source/b/l;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X-TIMESTAMP-MAP doesn\'t contain local timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 139
    :cond_1
    sget-object v1, Lcom/google/android/exoplayer2/source/b/l;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_2

    .line 141
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X-TIMESTAMP-MAP doesn\'t contain media timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/text/e/h;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 145
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 144
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/s;->d(J)J

    move-result-wide v0

    goto :goto_0

    .line 150
    :cond_3
    invoke-static {v5}, Lcom/google/android/exoplayer2/text/e/h;->b(Lcom/google/android/exoplayer2/util/l;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 151
    if-nez v5, :cond_4

    .line 153
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/source/b/l;->a(J)Lcom/google/android/exoplayer2/extractor/n;

    .line 167
    :goto_1
    return-void

    .line 157
    :cond_4
    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/text/e/h;->a(Ljava/lang/String;)J

    move-result-wide v8

    .line 158
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/l;->d:Lcom/google/android/exoplayer2/util/s;

    add-long/2addr v0, v8

    sub-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/util/s;->c(J)J

    move-result-wide v2

    .line 160
    sub-long v0, v2, v8

    .line 162
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/b/l;->a(J)Lcom/google/android/exoplayer2/extractor/n;

    move-result-object v1

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/l;->e:Lcom/google/android/exoplayer2/util/l;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/b/l;->g:[B

    iget v6, p0, Lcom/google/android/exoplayer2/source/b/l;->h:I

    invoke-virtual {v0, v5, v6}, Lcom/google/android/exoplayer2/util/l;->a([BI)V

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/l;->e:Lcom/google/android/exoplayer2/util/l;

    iget v5, p0, Lcom/google/android/exoplayer2/source/b/l;->h:I

    invoke-interface {v1, v0, v5}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 166
    iget v5, p0, Lcom/google/android/exoplayer2/source/b/l;->h:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/n;->a(JIII[B)V

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/extractor/g;Lcom/google/android/exoplayer2/extractor/l;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 95
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/g;->d()J

    move-result-wide v0

    long-to-int v1, v0

    .line 98
    iget v0, p0, Lcom/google/android/exoplayer2/source/b/l;->h:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/b/l;->g:[B

    array-length v3, v3

    if-ne v0, v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/b/l;->g:[B

    if-eq v1, v2, :cond_2

    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/l;->g:[B

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/l;->g:[B

    iget v3, p0, Lcom/google/android/exoplayer2/source/b/l;->h:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/b/l;->g:[B

    array-length v4, v4

    iget v5, p0, Lcom/google/android/exoplayer2/source/b/l;->h:I

    sub-int/2addr v4, v5

    invoke-interface {p1, v0, v3, v4}, Lcom/google/android/exoplayer2/extractor/g;->a([BII)I

    move-result v0

    .line 105
    if-eq v0, v2, :cond_3

    .line 106
    iget v3, p0, Lcom/google/android/exoplayer2/source/b/l;->h:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/exoplayer2/source/b/l;->h:I

    .line 107
    if-eq v1, v2, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/source/b/l;->h:I

    if-eq v0, v1, :cond_3

    .line 108
    :cond_1
    const/4 v0, 0x0

    .line 114
    :goto_1
    return v0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/l;->g:[B

    array-length v0, v0

    goto :goto_0

    .line 113
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/b/l;->a()V

    move v0, v2

    .line 114
    goto :goto_1
.end method

.method public a(JJ)V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/h;)V
    .locals 4

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b/l;->f:Lcom/google/android/exoplayer2/extractor/h;

    .line 78
    new-instance v0, Lcom/google/android/exoplayer2/extractor/m$a;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/m$a;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/h;->a(Lcom/google/android/exoplayer2/extractor/m;)V

    .line 79
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/g;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

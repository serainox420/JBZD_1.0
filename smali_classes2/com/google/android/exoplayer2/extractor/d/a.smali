.class final Lcom/google/android/exoplayer2/extractor/d/a;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/d/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/d/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/extractor/d/e;

.field private final b:J

.field private final c:J

.field private final d:Lcom/google/android/exoplayer2/extractor/d/h;

.field private e:I

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J


# direct methods
.method public constructor <init>(JJLcom/google/android/exoplayer2/extractor/d/h;IJ)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/google/android/exoplayer2/extractor/d/e;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/d/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->a:Lcom/google/android/exoplayer2/extractor/d/e;

    .line 66
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    cmp-long v0, p3, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 67
    iput-object p5, p0, Lcom/google/android/exoplayer2/extractor/d/a;->d:Lcom/google/android/exoplayer2/extractor/d/h;

    .line 68
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/d/a;->b:J

    .line 69
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/d/a;->c:J

    .line 70
    int-to-long v2, p6

    sub-long v4, p3, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 71
    iput-wide p7, p0, Lcom/google/android/exoplayer2/extractor/d/a;->f:J

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->e:I

    .line 76
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 66
    goto :goto_0

    .line 74
    :cond_1
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/d/a;->e:I

    goto :goto_1
.end method

.method private a(JJJ)J
    .locals 5

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->c:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d/a;->b:J

    sub-long/2addr v0, v2

    mul-long/2addr v0, p3

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d/a;->f:J

    div-long/2addr v0, v2

    sub-long/2addr v0, p5

    add-long/2addr v0, p1

    .line 205
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d/a;->b:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 206
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->b:J

    .line 208
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d/a;->c:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 209
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->c:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 211
    :cond_1
    return-wide v0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/extractor/d/a;)J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->b:J

    return-wide v0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/extractor/d/a;JJJ)J
    .locals 3

    .prologue
    .line 28
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/extractor/d/a;->a(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/extractor/d/a;)Lcom/google/android/exoplayer2/extractor/d/h;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->d:Lcom/google/android/exoplayer2/extractor/d/h;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/extractor/d/a;)J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->f:J

    return-wide v0
.end method


# virtual methods
.method public a(J)J
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    .line 117
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->e:I

    if-ne v0, v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 118
    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    move-wide v0, v2

    :goto_1
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->h:J

    .line 119
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/d/a;->e:I

    .line 120
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/d/a;->b()V

    .line 121
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->h:J

    return-wide v0

    .line 117
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->d:Lcom/google/android/exoplayer2/extractor/d/h;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/d/h;->b(J)J

    move-result-wide v0

    goto :goto_1
.end method

.method public a(JLcom/google/android/exoplayer2/extractor/g;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->i:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d/a;->j:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 155
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->k:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    neg-long v0, v0

    .line 200
    :goto_0
    return-wide v0

    .line 158
    :cond_0
    invoke-interface {p3}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v0

    .line 159
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d/a;->j:J

    invoke-virtual {p0, p3, v2, v3}, Lcom/google/android/exoplayer2/extractor/d/a;->a(Lcom/google/android/exoplayer2/extractor/g;J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 160
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d/a;->i:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 161
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No ogg page can be found."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->i:J

    goto :goto_0

    .line 166
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/d/a;->a:Lcom/google/android/exoplayer2/extractor/d/e;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Lcom/google/android/exoplayer2/extractor/d/e;->a(Lcom/google/android/exoplayer2/extractor/g;Z)Z

    .line 167
    invoke-interface {p3}, Lcom/google/android/exoplayer2/extractor/g;->a()V

    .line 169
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/d/a;->a:Lcom/google/android/exoplayer2/extractor/d/e;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/extractor/d/e;->c:J

    sub-long v2, p1, v2

    .line 170
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/d/a;->a:Lcom/google/android/exoplayer2/extractor/d/e;

    iget v4, v4, Lcom/google/android/exoplayer2/extractor/d/e;->h:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/d/a;->a:Lcom/google/android/exoplayer2/extractor/d/e;

    iget v5, v5, Lcom/google/android/exoplayer2/extractor/d/e;->i:I

    add-int/2addr v4, v5

    .line 171
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-ltz v5, :cond_3

    const-wide/32 v6, 0x11940

    cmp-long v5, v2, v6

    if-lez v5, :cond_8

    .line 172
    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gez v5, :cond_5

    .line 173
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->j:J

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->a:Lcom/google/android/exoplayer2/extractor/d/e;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/d/e;->c:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->l:J

    .line 184
    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->j:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/d/a;->i:J

    sub-long/2addr v0, v6

    const-wide/32 v6, 0x186a0

    cmp-long v0, v0, v6

    if-gez v0, :cond_6

    .line 185
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->i:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->j:J

    .line 186
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->i:J

    goto :goto_0

    .line 176
    :cond_5
    invoke-interface {p3}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v0

    int-to-long v6, v4

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->i:J

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->a:Lcom/google/android/exoplayer2/extractor/d/e;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/d/e;->c:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->k:J

    .line 178
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->j:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/d/a;->i:J

    sub-long/2addr v0, v6

    int-to-long v6, v4

    add-long/2addr v0, v6

    const-wide/32 v6, 0x186a0

    cmp-long v0, v0, v6

    if-gez v0, :cond_4

    .line 179
    invoke-interface {p3, v4}, Lcom/google/android/exoplayer2/extractor/g;->b(I)V

    .line 180
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->k:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    neg-long v0, v0

    goto/16 :goto_0

    .line 189
    :cond_6
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_7

    const/4 v0, 0x2

    :goto_1
    mul-int/2addr v0, v4

    int-to-long v0, v0

    .line 190
    invoke-interface {p3}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v4

    sub-long v0, v4, v0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/d/a;->j:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/d/a;->i:J

    sub-long/2addr v4, v6

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/d/a;->l:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/d/a;->k:J

    sub-long/2addr v4, v6

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 193
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d/a;->i:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 194
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d/a;->j:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto/16 :goto_0

    .line 189
    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    .line 199
    :cond_8
    invoke-interface {p3, v4}, Lcom/google/android/exoplayer2/extractor/g;->b(I)V

    .line 200
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->a:Lcom/google/android/exoplayer2/extractor/d/e;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/d/e;->c:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    neg-long v0, v0

    goto/16 :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/g;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x2

    const/4 v6, 0x3

    const-wide/16 v0, 0x0

    .line 80
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/d/a;->e:I

    packed-switch v2, :pswitch_data_0

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 82
    :pswitch_0
    const-wide/16 v0, -0x1

    .line 108
    :cond_0
    :goto_0
    return-wide v0

    .line 84
    :pswitch_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->g:J

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->e:I

    .line 87
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->c:J

    const-wide/32 v2, 0xff1b

    sub-long/2addr v0, v2

    .line 88
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d/a;->g:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 93
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/d/a;->c(Lcom/google/android/exoplayer2/extractor/g;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->f:J

    .line 94
    iput v6, p0, Lcom/google/android/exoplayer2/extractor/d/a;->e:I

    .line 95
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->g:J

    goto :goto_0

    .line 98
    :pswitch_3
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d/a;->h:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    .line 107
    :goto_1
    iput v6, p0, Lcom/google/android/exoplayer2/extractor/d/a;->e:I

    .line 108
    add-long/2addr v0, v8

    neg-long v0, v0

    goto :goto_0

    .line 101
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d/a;->h:J

    invoke-virtual {p0, v2, v3, p1}, Lcom/google/android/exoplayer2/extractor/d/a;->a(JLcom/google/android/exoplayer2/extractor/g;)J

    move-result-wide v4

    .line 102
    cmp-long v0, v4, v0

    if-ltz v0, :cond_2

    move-wide v0, v4

    .line 103
    goto :goto_0

    .line 105
    :cond_2
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d/a;->h:J

    add-long v0, v4, v8

    neg-long v4, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/d/a;->a(Lcom/google/android/exoplayer2/extractor/g;JJ)J

    move-result-wide v0

    goto :goto_1

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method a(Lcom/google/android/exoplayer2/extractor/g;JJ)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 328
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->a:Lcom/google/android/exoplayer2/extractor/d/e;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/exoplayer2/extractor/d/e;->a(Lcom/google/android/exoplayer2/extractor/g;Z)Z

    .line 329
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->a:Lcom/google/android/exoplayer2/extractor/d/e;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/d/e;->c:J

    cmp-long v0, v0, p2

    if-gez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->a:Lcom/google/android/exoplayer2/extractor/d/e;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/d/e;->h:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/a;->a:Lcom/google/android/exoplayer2/extractor/d/e;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/d/e;->i:I

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/g;->b(I)V

    .line 332
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->a:Lcom/google/android/exoplayer2/extractor/d/e;

    iget-wide p4, v0, Lcom/google/android/exoplayer2/extractor/d/e;->c:J

    .line 334
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->a:Lcom/google/android/exoplayer2/extractor/d/e;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/exoplayer2/extractor/d/e;->a(Lcom/google/android/exoplayer2/extractor/g;Z)Z

    goto :goto_0

    .line 336
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/g;->a()V

    .line 337
    return-wide p4
.end method

.method public a()Lcom/google/android/exoplayer2/extractor/d/a$a;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d/a;->f:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/extractor/d/a$a;

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/extractor/d/a$a;-><init>(Lcom/google/android/exoplayer2/extractor/d/a;Lcom/google/android/exoplayer2/extractor/d/a$1;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method a(Lcom/google/android/exoplayer2/extractor/g;J)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x67

    const/4 v1, 0x0

    .line 265
    const-wide/16 v2, 0x3

    add-long/2addr v2, p2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/d/a;->c:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 266
    const/16 v0, 0x800

    new-array v3, v0, [B

    .line 267
    array-length v0, v3

    .line 269
    :goto_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v6

    int-to-long v8, v0

    add-long/2addr v6, v8

    cmp-long v2, v6, v4

    if-lez v2, :cond_0

    .line 271
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v6

    sub-long v6, v4, v6

    long-to-int v0, v6

    .line 272
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    move v0, v1

    .line 283
    :goto_1
    return v0

    .line 277
    :cond_0
    invoke-interface {p1, v3, v1, v0, v1}, Lcom/google/android/exoplayer2/extractor/g;->b([BIIZ)Z

    move v2, v1

    .line 278
    :goto_2
    add-int/lit8 v6, v0, -0x3

    if-ge v2, v6, :cond_2

    .line 279
    aget-byte v6, v3, v2

    const/16 v7, 0x4f

    if-ne v6, v7, :cond_1

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v3, v6

    if-ne v6, v10, :cond_1

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, v3, v6

    if-ne v6, v10, :cond_1

    add-int/lit8 v6, v2, 0x3

    aget-byte v6, v3, v6

    const/16 v7, 0x53

    if-ne v6, v7, :cond_1

    .line 282
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/extractor/g;->b(I)V

    .line 283
    const/4 v0, 0x1

    goto :goto_1

    .line 278
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 287
    :cond_2
    add-int/lit8 v2, v0, -0x3

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/extractor/g;->b(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->b:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->i:J

    .line 132
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->c:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->j:J

    .line 133
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->k:J

    .line 134
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->f:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->l:J

    .line 135
    return-void
.end method

.method b(Lcom/google/android/exoplayer2/extractor/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 247
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->c:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/d/a;->a(Lcom/google/android/exoplayer2/extractor/g;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 251
    :cond_0
    return-void
.end method

.method c(Lcom/google/android/exoplayer2/extractor/g;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/d/a;->b(Lcom/google/android/exoplayer2/extractor/g;)V

    .line 304
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->a:Lcom/google/android/exoplayer2/extractor/d/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d/e;->a()V

    .line 305
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->a:Lcom/google/android/exoplayer2/extractor/d/e;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/d/e;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d/a;->c:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->a:Lcom/google/android/exoplayer2/extractor/d/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/extractor/d/e;->a(Lcom/google/android/exoplayer2/extractor/g;Z)Z

    .line 307
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->a:Lcom/google/android/exoplayer2/extractor/d/e;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/d/e;->h:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/a;->a:Lcom/google/android/exoplayer2/extractor/d/e;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/d/e;->i:I

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/g;->b(I)V

    goto :goto_0

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->a:Lcom/google/android/exoplayer2/extractor/d/e;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/d/e;->c:J

    return-wide v0
.end method

.method public synthetic c()Lcom/google/android/exoplayer2/extractor/m;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/d/a;->a()Lcom/google/android/exoplayer2/extractor/d/a$a;

    move-result-object v0

    return-object v0
.end method

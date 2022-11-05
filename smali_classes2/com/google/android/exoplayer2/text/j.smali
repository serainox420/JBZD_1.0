.class public final Lcom/google/android/exoplayer2/text/j;
.super Lcom/google/android/exoplayer2/a;
.source "TextRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/j$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/android/exoplayer2/text/j$a;

.field private final c:Lcom/google/android/exoplayer2/text/g;

.field private final d:Lcom/google/android/exoplayer2/h;

.field private e:Z

.field private f:Z

.field private g:Lcom/google/android/exoplayer2/text/f;

.field private h:Lcom/google/android/exoplayer2/text/h;

.field private i:Lcom/google/android/exoplayer2/text/i;

.field private j:Lcom/google/android/exoplayer2/text/i;

.field private k:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/text/j$a;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/google/android/exoplayer2/text/g;->a:Lcom/google/android/exoplayer2/text/g;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/text/j;-><init>(Lcom/google/android/exoplayer2/text/j$a;Landroid/os/Looper;Lcom/google/android/exoplayer2/text/g;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/text/j$a;Landroid/os/Looper;Lcom/google/android/exoplayer2/text/g;)V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/a;-><init>(I)V

    .line 93
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/j$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/j;->b:Lcom/google/android/exoplayer2/text/j$a;

    .line 94
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/j;->a:Landroid/os/Handler;

    .line 95
    iput-object p3, p0, Lcom/google/android/exoplayer2/text/j;->c:Lcom/google/android/exoplayer2/text/g;

    .line 96
    new-instance v0, Lcom/google/android/exoplayer2/h;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/j;->d:Lcom/google/android/exoplayer2/h;

    .line 97
    return-void

    .line 94
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/j;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method private b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->b:Lcom/google/android/exoplayer2/text/j$a;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/text/j$a;->a(Ljava/util/List;)V

    .line 276
    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 233
    iput-object v1, p0, Lcom/google/android/exoplayer2/text/j;->h:Lcom/google/android/exoplayer2/text/h;

    .line 234
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/text/j;->k:I

    .line 235
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->i:Lcom/google/android/exoplayer2/text/i;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->i:Lcom/google/android/exoplayer2/text/i;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/i;->e()V

    .line 237
    iput-object v1, p0, Lcom/google/android/exoplayer2/text/j;->i:Lcom/google/android/exoplayer2/text/i;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->j:Lcom/google/android/exoplayer2/text/i;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->j:Lcom/google/android/exoplayer2/text/i;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/i;->e()V

    .line 241
    iput-object v1, p0, Lcom/google/android/exoplayer2/text/j;->j:Lcom/google/android/exoplayer2/text/i;

    .line 243
    :cond_1
    return-void
.end method

.method private w()J
    .locals 2

    .prologue
    .line 246
    iget v0, p0, Lcom/google/android/exoplayer2/text/j;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/text/j;->k:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/j;->i:Lcom/google/android/exoplayer2/text/i;

    .line 247
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/i;->b()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 248
    :goto_0
    return-wide v0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->i:Lcom/google/android/exoplayer2/text/i;

    iget v1, p0, Lcom/google/android/exoplayer2/text/j;->k:I

    .line 248
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/i;->a(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private x()V
    .locals 1

    .prologue
    .line 260
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/j;->a(Ljava/util/List;)V

    .line 261
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/Format;)I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->c:Lcom/google/android/exoplayer2/text/g;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/text/g;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 102
    :goto_0
    return v0

    .line 101
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 102
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/i;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x1

    .line 126
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/j;->f:Z

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->j:Lcom/google/android/exoplayer2/text/i;

    if-nez v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->g:Lcom/google/android/exoplayer2/text/f;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/text/f;->a(J)V

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->g:Lcom/google/android/exoplayer2/text/f;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/text/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/i;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/j;->j:Lcom/google/android/exoplayer2/text/i;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/j;->d()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->i:Lcom/google/android/exoplayer2/text/i;

    if-eqz v0, :cond_3

    .line 147
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/j;->w()J

    move-result-wide v4

    move v0, v1

    .line 148
    :goto_1
    cmp-long v1, v4, p1

    if-gtz v1, :cond_4

    .line 149
    iget v0, p0, Lcom/google/android/exoplayer2/text/j;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/text/j;->k:I

    .line 150
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/j;->w()J

    move-result-wide v0

    move-wide v4, v0

    move v0, v2

    .line 151
    goto :goto_1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/j;->r()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_3
    move v0, v1

    .line 155
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/j;->j:Lcom/google/android/exoplayer2/text/i;

    if-eqz v1, :cond_6

    .line 156
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/j;->j:Lcom/google/android/exoplayer2/text/i;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/i;->c()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 157
    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/j;->w()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v1, v4, v6

    if-nez v1, :cond_6

    .line 158
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/j;->i:Lcom/google/android/exoplayer2/text/i;

    if-eqz v1, :cond_5

    .line 159
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/j;->i:Lcom/google/android/exoplayer2/text/i;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/i;->e()V

    .line 160
    iput-object v8, p0, Lcom/google/android/exoplayer2/text/j;->i:Lcom/google/android/exoplayer2/text/i;

    .line 162
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/j;->j:Lcom/google/android/exoplayer2/text/i;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/i;->e()V

    .line 163
    iput-object v8, p0, Lcom/google/android/exoplayer2/text/j;->j:Lcom/google/android/exoplayer2/text/i;

    .line 164
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/text/j;->f:Z

    .line 178
    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->i:Lcom/google/android/exoplayer2/text/i;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/text/i;->b(J)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/j;->a(Ljava/util/List;)V

    .line 184
    :cond_7
    :goto_3
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/j;->e:Z

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->h:Lcom/google/android/exoplayer2/text/h;

    if-nez v0, :cond_8

    .line 186
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->g:Lcom/google/android/exoplayer2/text/f;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/text/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/h;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/j;->h:Lcom/google/android/exoplayer2/text/h;

    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->h:Lcom/google/android/exoplayer2/text/h;

    if-eqz v0, :cond_0

    .line 192
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->d:Lcom/google/android/exoplayer2/h;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/j;->h:Lcom/google/android/exoplayer2/text/h;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/text/j;->a(Lcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/a/e;Z)I

    move-result v0

    .line 193
    const/4 v1, -0x4

    if-ne v0, v1, :cond_c

    .line 194
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->h:Lcom/google/android/exoplayer2/text/h;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/h;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/j;->e:Z

    .line 200
    :goto_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->g:Lcom/google/android/exoplayer2/text/f;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/j;->h:Lcom/google/android/exoplayer2/text/h;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/text/f;->a(Ljava/lang/Object;)V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/j;->h:Lcom/google/android/exoplayer2/text/h;
    :try_end_1
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 206
    :catch_1
    move-exception v0

    .line 207
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/j;->r()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 166
    :cond_9
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/j;->j:Lcom/google/android/exoplayer2/text/i;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/text/i;->a:J

    cmp-long v1, v4, p1

    if-gtz v1, :cond_6

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->i:Lcom/google/android/exoplayer2/text/i;

    if-eqz v0, :cond_a

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->i:Lcom/google/android/exoplayer2/text/i;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/i;->e()V

    .line 171
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->j:Lcom/google/android/exoplayer2/text/i;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/j;->i:Lcom/google/android/exoplayer2/text/i;

    .line 172
    iput-object v8, p0, Lcom/google/android/exoplayer2/text/j;->j:Lcom/google/android/exoplayer2/text/i;

    .line 173
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->i:Lcom/google/android/exoplayer2/text/i;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/text/i;->a(J)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/text/j;->k:I

    move v0, v2

    .line 174
    goto :goto_2

    .line 197
    :cond_b
    :try_start_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->h:Lcom/google/android/exoplayer2/text/h;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/j;->d:Lcom/google/android/exoplayer2/h;

    iget-object v1, v1, Lcom/google/android/exoplayer2/h;->a:Lcom/google/android/exoplayer2/Format;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/Format;->v:J

    iput-wide v2, v0, Lcom/google/android/exoplayer2/text/h;->d:J

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->h:Lcom/google/android/exoplayer2/text/h;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/h;->f()V
    :try_end_2
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 202
    :cond_c
    const/4 v1, -0x3

    if-ne v0, v1, :cond_7

    goto/16 :goto_0
.end method

.method protected a(JZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/j;->x()V

    .line 118
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/j;->v()V

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->g:Lcom/google/android/exoplayer2/text/f;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/text/f;->c()V

    .line 120
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/j;->e:Z

    .line 121
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/j;->f:Z

    .line 122
    return-void
.end method

.method protected a([Lcom/google/android/exoplayer2/Format;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->g:Lcom/google/android/exoplayer2/text/f;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->g:Lcom/google/android/exoplayer2/text/f;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/text/f;->d()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/j;->h:Lcom/google/android/exoplayer2/text/h;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->c:Lcom/google/android/exoplayer2/text/g;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/text/g;->b(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/text/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/j;->g:Lcom/google/android/exoplayer2/text/f;

    .line 113
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 266
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 271
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 268
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/j;->b(Ljava/util/List;)V

    .line 269
    const/4 v0, 0x1

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected p()V
    .locals 1

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/j;->x()V

    .line 214
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/j;->v()V

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/j;->g:Lcom/google/android/exoplayer2/text/f;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/text/f;->d()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/j;->g:Lcom/google/android/exoplayer2/text/f;

    .line 217
    invoke-super {p0}, Lcom/google/android/exoplayer2/a;->p()V

    .line 218
    return-void
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/j;->f:Z

    return v0
.end method

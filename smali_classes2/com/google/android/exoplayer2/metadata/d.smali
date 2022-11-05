.class public final Lcom/google/android/exoplayer2/metadata/d;
.super Lcom/google/android/exoplayer2/a;
.source "MetadataRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/metadata/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/metadata/b;

.field private final b:Lcom/google/android/exoplayer2/metadata/d$a;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/google/android/exoplayer2/h;

.field private final e:Lcom/google/android/exoplayer2/metadata/c;

.field private final f:[Lcom/google/android/exoplayer2/metadata/Metadata;

.field private final g:[J

.field private h:I

.field private i:I

.field private j:Lcom/google/android/exoplayer2/metadata/a;

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/metadata/d$a;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/google/android/exoplayer2/metadata/b;->a:Lcom/google/android/exoplayer2/metadata/b;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/metadata/d;-><init>(Lcom/google/android/exoplayer2/metadata/d$a;Landroid/os/Looper;Lcom/google/android/exoplayer2/metadata/b;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/metadata/d$a;Landroid/os/Looper;Lcom/google/android/exoplayer2/metadata/b;)V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 91
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/a;-><init>(I)V

    .line 92
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/metadata/d$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/d;->b:Lcom/google/android/exoplayer2/metadata/d$a;

    .line 93
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/d;->c:Landroid/os/Handler;

    .line 94
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/metadata/b;

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/d;->a:Lcom/google/android/exoplayer2/metadata/b;

    .line 95
    new-instance v0, Lcom/google/android/exoplayer2/h;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/d;->d:Lcom/google/android/exoplayer2/h;

    .line 96
    new-instance v0, Lcom/google/android/exoplayer2/metadata/c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/d;->e:Lcom/google/android/exoplayer2/metadata/c;

    .line 97
    new-array v0, v1, [Lcom/google/android/exoplayer2/metadata/Metadata;

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/d;->f:[Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 98
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/d;->g:[J

    .line 99
    return-void

    .line 93
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_0
.end method

.method private a(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/d;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/d;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/d;->b(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    goto :goto_0
.end method

.method private b(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/d;->b:Lcom/google/android/exoplayer2/metadata/d$a;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/metadata/d$a;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 198
    return-void
.end method

.method private v()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/d;->f:[Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    iput v2, p0, Lcom/google/android/exoplayer2/metadata/d;->h:I

    .line 180
    iput v2, p0, Lcom/google/android/exoplayer2/metadata/d;->i:I

    .line 181
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/Format;)I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/d;->a:Lcom/google/android/exoplayer2/metadata/b;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/metadata/b;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/d;->k:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/metadata/d;->i:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/d;->e:Lcom/google/android/exoplayer2/metadata/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/metadata/c;->a()V

    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/d;->d:Lcom/google/android/exoplayer2/h;

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/d;->e:Lcom/google/android/exoplayer2/metadata/c;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/metadata/d;->a(Lcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/a/e;Z)I

    move-result v0

    .line 122
    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/d;->e:Lcom/google/android/exoplayer2/metadata/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/metadata/c;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/d;->k:Z

    .line 144
    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/metadata/d;->i:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/d;->g:[J

    iget v1, p0, Lcom/google/android/exoplayer2/metadata/d;->h:I

    aget-wide v0, v0, v1

    cmp-long v0, v0, p1

    if-gtz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/d;->f:[Lcom/google/android/exoplayer2/metadata/Metadata;

    iget v1, p0, Lcom/google/android/exoplayer2/metadata/d;->h:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/d;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/d;->f:[Lcom/google/android/exoplayer2/metadata/Metadata;

    iget v1, p0, Lcom/google/android/exoplayer2/metadata/d;->h:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 147
    iget v0, p0, Lcom/google/android/exoplayer2/metadata/d;->h:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/google/android/exoplayer2/metadata/d;->h:I

    .line 148
    iget v0, p0, Lcom/google/android/exoplayer2/metadata/d;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/metadata/d;->i:I

    .line 150
    :cond_1
    return-void

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/d;->e:Lcom/google/android/exoplayer2/metadata/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/metadata/c;->c_()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/d;->e:Lcom/google/android/exoplayer2/metadata/c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/d;->d:Lcom/google/android/exoplayer2/h;

    iget-object v1, v1, Lcom/google/android/exoplayer2/h;->a:Lcom/google/android/exoplayer2/Format;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/Format;->v:J

    iput-wide v2, v0, Lcom/google/android/exoplayer2/metadata/c;->d:J

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/d;->e:Lcom/google/android/exoplayer2/metadata/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/metadata/c;->f()V

    .line 133
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/metadata/d;->h:I

    iget v1, p0, Lcom/google/android/exoplayer2/metadata/d;->i:I

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x5

    .line 134
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/d;->f:[Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/d;->j:Lcom/google/android/exoplayer2/metadata/a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/d;->e:Lcom/google/android/exoplayer2/metadata/c;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/metadata/a;->a(Lcom/google/android/exoplayer2/metadata/c;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v2

    aput-object v2, v1, v0

    .line 135
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/d;->g:[J

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/d;->e:Lcom/google/android/exoplayer2/metadata/c;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/metadata/c;->c:J

    aput-wide v2, v1, v0

    .line 136
    iget v0, p0, Lcom/google/android/exoplayer2/metadata/d;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/metadata/d;->i:I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/metadata/MetadataDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/d;->r()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method protected a(JZ)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/d;->v()V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/d;->k:Z

    .line 115
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
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/d;->a:Lcom/google/android/exoplayer2/metadata/b;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/metadata/b;->b(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/metadata/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/d;->j:Lcom/google/android/exoplayer2/metadata/a;

    .line 109
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 186
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 192
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 188
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/d;->b(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 189
    const/4 v0, 0x1

    return v0

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected p()V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/d;->v()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/d;->j:Lcom/google/android/exoplayer2/metadata/a;

    .line 156
    invoke-super {p0}, Lcom/google/android/exoplayer2/a;->p()V

    .line 157
    return-void
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/d;->k:Z

    return v0
.end method

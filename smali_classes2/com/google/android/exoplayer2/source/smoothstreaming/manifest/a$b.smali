.class public Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;
.super Ljava/lang/Object;
.source "SsManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Ljava/lang/String;

.field public final j:[Lcom/google/android/exoplayer2/Format;

.field public final k:I

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final o:[J

.field private final p:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;IIIILjava/lang/String;[Lcom/google/android/exoplayer2/Format;Ljava/util/List;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/lang/String;",
            "[",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->l:Ljava/lang/String;

    .line 160
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->m:Ljava/lang/String;

    .line 161
    iput p3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->a:I

    .line 162
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->b:Ljava/lang/String;

    .line 163
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->c:J

    .line 164
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->d:Ljava/lang/String;

    .line 165
    move/from16 v0, p8

    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->e:I

    .line 166
    move/from16 v0, p9

    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->f:I

    .line 167
    move/from16 v0, p10

    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->g:I

    .line 168
    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->h:I

    .line 169
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->i:Ljava/lang/String;

    .line 170
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->j:[Lcom/google/android/exoplayer2/Format;

    .line 171
    invoke-interface/range {p14 .. p14}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->k:I

    .line 172
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->n:Ljava/util/List;

    .line 173
    const-wide/32 v4, 0xf4240

    move-wide/from16 v2, p15

    move-wide v6, p5

    .line 174
    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/v;->a(JJJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->p:J

    .line 175
    const-wide/32 v2, 0xf4240

    .line 176
    move-object/from16 v0, p14

    invoke-static {v0, v2, v3, p5, p6}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/util/List;JJ)[J

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->o:[J

    .line 177
    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 186
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->o:[J

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/util/v;->a([JJZZ)I

    move-result v0

    return v0
.end method

.method public a(I)J
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->o:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public a(II)Landroid/net/Uri;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 218
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->j:[Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->n:Ljava/util/List;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 220
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 221
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->j:[Lcom/google/android/exoplayer2/Format;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->n:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->m:Ljava/lang/String;

    const-string v3, "{bitrate}"

    .line 224
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{Bitrate}"

    .line 225
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{start time}"

    .line 226
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{start_time}"

    .line 227
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->l:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/u;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 218
    goto :goto_0

    :cond_1
    move v0, v2

    .line 219
    goto :goto_1

    :cond_2
    move v1, v2

    .line 220
    goto :goto_2
.end method

.method public b(I)J
    .locals 4

    .prologue
    .line 206
    iget v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->k:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->p:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->o:[J

    add-int/lit8 v1, p1, 0x1

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->o:[J

    aget-wide v2, v2, p1

    sub-long/2addr v0, v2

    goto :goto_0
.end method

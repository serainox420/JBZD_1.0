.class public final Lcom/google/android/exoplayer2/source/b/a/d;
.super Ljava/lang/Object;
.source "HlsPlaylistParser.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/p$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/b/a/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/p$a",
        "<",
        "Lcom/google/android/exoplayer2/source/b/a/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;

.field private static final h:Ljava/util/regex/Pattern;

.field private static final i:Ljava/util/regex/Pattern;

.field private static final j:Ljava/util/regex/Pattern;

.field private static final k:Ljava/util/regex/Pattern;

.field private static final l:Ljava/util/regex/Pattern;

.field private static final m:Ljava/util/regex/Pattern;

.field private static final n:Ljava/util/regex/Pattern;

.field private static final o:Ljava/util/regex/Pattern;

.field private static final p:Ljava/util/regex/Pattern;

.field private static final q:Ljava/util/regex/Pattern;

.field private static final r:Ljava/util/regex/Pattern;

.field private static final s:Ljava/util/regex/Pattern;

.field private static final t:Ljava/util/regex/Pattern;

.field private static final u:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-string v0, "BANDWIDTH=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/b/a/d;->a:Ljava/util/regex/Pattern;

    .line 73
    const-string v0, "CODECS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/b/a/d;->b:Ljava/util/regex/Pattern;

    .line 74
    const-string v0, "RESOLUTION=(\\d+x\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/b/a/d;->c:Ljava/util/regex/Pattern;

    .line 75
    const-string v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/b/a/d;->d:Ljava/util/regex/Pattern;

    .line 77
    const-string v0, "#EXT-X-VERSION:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/b/a/d;->e:Ljava/util/regex/Pattern;

    .line 78
    const-string v0, "#EXT-X-PLAYLIST-TYPE:(.+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/b/a/d;->f:Ljava/util/regex/Pattern;

    .line 80
    const-string v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/b/a/d;->g:Ljava/util/regex/Pattern;

    .line 82
    const-string v0, "#EXTINF:([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/b/a/d;->h:Ljava/util/regex/Pattern;

    .line 84
    const-string v0, "TIME-OFFSET=(-?[\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/b/a/d;->i:Ljava/util/regex/Pattern;

    .line 85
    const-string v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/b/a/d;->j:Ljava/util/regex/Pattern;

    .line 87
    const-string v0, "BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\""

    .line 88
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/b/a/d;->k:Ljava/util/regex/Pattern;

    .line 89
    const-string v0, "METHOD=(NONE|AES-128)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/b/a/d;->l:Ljava/util/regex/Pattern;

    .line 91
    const-string v0, "URI=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/b/a/d;->m:Ljava/util/regex/Pattern;

    .line 92
    const-string v0, "IV=([^,.*]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/b/a/d;->n:Ljava/util/regex/Pattern;

    .line 93
    const-string v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/b/a/d;->o:Ljava/util/regex/Pattern;

    .line 95
    const-string v0, "LANGUAGE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/b/a/d;->p:Ljava/util/regex/Pattern;

    .line 96
    const-string v0, "NAME=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/b/a/d;->q:Ljava/util/regex/Pattern;

    .line 97
    const-string v0, "INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\""

    .line 98
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/b/a/d;->r:Ljava/util/regex/Pattern;

    .line 99
    const-string v0, "AUTOSELECT"

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/b/a/d;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/b/a/d;->s:Ljava/util/regex/Pattern;

    .line 100
    const-string v0, "DEFAULT"

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/b/a/d;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/b/a/d;->t:Ljava/util/regex/Pattern;

    .line 101
    const-string v0, "FORCED"

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/b/a/d;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/b/a/d;->u:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    return-void
.end method

.method private static a(Ljava/io/BufferedReader;ZI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    :goto_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/v;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result p2

    goto :goto_0

    .line 166
    :cond_1
    return p2
.end method

.method private static a(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 251
    sget-object v0, Lcom/google/android/exoplayer2/source/b/a/d;->t:Ljava/util/regex/Pattern;

    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/source/b/a/d;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sget-object v2, Lcom/google/android/exoplayer2/source/b/a/d;->u:Ljava/util/regex/Pattern;

    .line 252
    invoke-static {p0, v2, v1}, Lcom/google/android/exoplayer2/source/b/a/d;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    :goto_1
    or-int/2addr v0, v2

    sget-object v2, Lcom/google/android/exoplayer2/source/b/a/d;->s:Ljava/util/regex/Pattern;

    .line 253
    invoke-static {p0, v2, v1}, Lcom/google/android/exoplayer2/source/b/a/d;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    :cond_0
    or-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 251
    goto :goto_0

    :cond_2
    move v2, v1

    .line 252
    goto :goto_1
.end method

.method private static a(Lcom/google/android/exoplayer2/source/b/a/d$a;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/b/a/a;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 172
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 173
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 174
    const/4 v11, 0x0

    .line 175
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 178
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/b/a/d$a;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/b/a/d$a;->b()Ljava/lang/String;

    move-result-object v2

    .line 180
    const-string v0, "#EXT-X-MEDIA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 181
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/b/a/d;->a(Ljava/lang/String;)I

    move-result v8

    .line 182
    sget-object v0, Lcom/google/android/exoplayer2/source/b/a/d;->m:Ljava/util/regex/Pattern;

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/source/b/a/d;->d(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v10

    .line 183
    sget-object v0, Lcom/google/android/exoplayer2/source/b/a/d;->q:Ljava/util/regex/Pattern;

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/source/b/a/d;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 184
    sget-object v1, Lcom/google/android/exoplayer2/source/b/a/d;->p:Ljava/util/regex/Pattern;

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/source/b/a/d;->d(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v9

    .line 186
    sget-object v1, Lcom/google/android/exoplayer2/source/b/a/d;->o:Ljava/util/regex/Pattern;

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/source/b/a/d;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    move-object v0, v11

    :cond_2
    :goto_2
    move-object v11, v0

    .line 219
    goto :goto_0

    .line 186
    :sswitch_0
    const-string v4, "AUDIO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v4, "SUBTITLES"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "CLOSED-CAPTIONS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    .line 188
    :pswitch_0
    const-string v1, "application/x-mpegURL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 190
    if-eqz v10, :cond_2

    .line 193
    new-instance v1, Lcom/google/android/exoplayer2/source/b/a/a$a;

    invoke-direct {v1, v10, v0}, Lcom/google/android/exoplayer2/source/b/a/a$a;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v11

    .line 195
    goto :goto_2

    .line 197
    :pswitch_1
    const-string v4, "application/x-mpegURL"

    const-string v5, "text/vtt"

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v3, v0

    invoke-static/range {v3 .. v9}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 199
    new-instance v1, Lcom/google/android/exoplayer2/source/b/a/a$a;

    invoke-direct {v1, v10, v0}, Lcom/google/android/exoplayer2/source/b/a/a$a;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v11

    .line 200
    goto :goto_2

    .line 202
    :pswitch_2
    sget-object v1, Lcom/google/android/exoplayer2/source/b/a/d;->r:Ljava/util/regex/Pattern;

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/source/b/a/d;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 205
    const-string v2, "CC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 206
    const-string v5, "application/cea-608"

    .line 207
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 212
    :goto_3
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v3, v0

    invoke-static/range {v3 .. v10}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v11

    .line 214
    goto :goto_2

    .line 209
    :cond_3
    const-string v5, "application/cea-708"

    .line 210
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_3

    .line 219
    :cond_4
    const-string v0, "#EXT-X-STREAM-INF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Lcom/google/android/exoplayer2/source/b/a/d;->a:Ljava/util/regex/Pattern;

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/source/b/a/d;->b(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v4

    .line 221
    sget-object v0, Lcom/google/android/exoplayer2/source/b/a/d;->b:Ljava/util/regex/Pattern;

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/source/b/a/d;->d(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v3

    .line 222
    sget-object v0, Lcom/google/android/exoplayer2/source/b/a/d;->c:Ljava/util/regex/Pattern;

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/source/b/a/d;->d(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_7

    .line 226
    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 227
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 228
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 229
    if-lez v1, :cond_5

    if-gtz v0, :cond_6

    .line 231
    :cond_5
    const/4 v1, -0x1

    .line 232
    const/4 v0, -0x1

    :cond_6
    move v6, v0

    move v5, v1

    .line 238
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/b/a/d$a;->b()Ljava/lang/String;

    move-result-object v10

    .line 239
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/x-mpegURL"

    const/4 v2, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 242
    new-instance v1, Lcom/google/android/exoplayer2/source/b/a/a$a;

    invoke-direct {v1, v10, v0}, Lcom/google/android/exoplayer2/source/b/a/a$a;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 235
    :cond_7
    const/4 v5, -0x1

    .line 236
    const/4 v6, -0x1

    goto :goto_4

    .line 245
    :cond_8
    new-instance v0, Lcom/google/android/exoplayer2/source/b/a/a;

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v11

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/b/a/a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/Format;Ljava/util/List;)V

    return-object v0

    .line 186
    nop

    :sswitch_data_0
    .sparse-switch
        -0x392db8c5 -> :sswitch_1
        -0x13dc6572 -> :sswitch_2
        0x3bba3b6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 378
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 380
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 382
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/io/BufferedReader;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 142
    const/16 v2, 0xef

    if-ne v0, v2, :cond_2

    .line 143
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/16 v2, 0xbb

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/16 v2, 0xbf

    if-eq v0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 158
    :goto_0
    return v0

    .line 147
    :cond_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 149
    :cond_2
    const/4 v2, 0x1

    invoke-static {p0, v2, v0}, Lcom/google/android/exoplayer2/source/b/a/d;->a(Ljava/io/BufferedReader;ZI)I

    move-result v0

    .line 150
    const-string v2, "#EXTM3U"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v0

    move v0, v1

    .line 151
    :goto_1
    if-ge v0, v3, :cond_4

    .line 152
    const-string v4, "#EXTM3U"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v2, v4, :cond_3

    move v0, v1

    .line 153
    goto :goto_0

    .line 155
    :cond_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 157
    :cond_4
    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer2/source/b/a/d;->a(Ljava/io/BufferedReader;ZI)I

    move-result v0

    .line 158
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->a(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z
    .locals 2

    .prologue
    .line 402
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "YES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 406
    :cond_0
    return p2
.end method

.method private static b(Ljava/lang/String;Ljava/util/regex/Pattern;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/b/a/d;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static b(Lcom/google/android/exoplayer2/source/b/a/d$a;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/b/a/b;
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    const/16 v28, 0x0

    .line 259
    const-wide v26, -0x7fffffffffffffffL    # -4.9E-324

    .line 260
    const/16 v25, 0x0

    .line 261
    const/16 v24, 0x1

    .line 262
    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    .line 263
    const/16 v17, 0x0

    .line 264
    const/16 v18, 0x0

    .line 265
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 267
    const-wide/16 v20, 0x0

    .line 268
    const/16 v16, 0x0

    .line 269
    const/4 v11, 0x0

    .line 270
    const/4 v8, 0x0

    .line 271
    const-wide/16 v12, 0x0

    .line 272
    const-wide/16 v6, 0x0

    .line 273
    const-wide/16 v4, 0x0

    .line 274
    const-wide/16 v14, -0x1

    .line 275
    const/4 v3, 0x0

    .line 277
    const/4 v9, 0x0

    .line 278
    const/4 v10, 0x0

    .line 279
    const/4 v2, 0x0

    move-wide/from16 v30, v22

    move/from16 v32, v24

    move/from16 v33, v25

    move-wide/from16 v34, v26

    move/from16 v36, v28

    move/from16 v26, v11

    move/from16 v27, v16

    move-wide/from16 v28, v20

    move-wide/from16 v22, v6

    move-wide/from16 v24, v12

    move/from16 v16, v17

    move/from16 v21, v8

    move-object/from16 v17, v2

    move v8, v3

    .line 282
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/b/a/d$a;->a()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/b/a/d$a;->b()Ljava/lang/String;

    move-result-object v6

    .line 284
    const-string v2, "#EXT-X-PLAYLIST-TYPE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 285
    sget-object v2, Lcom/google/android/exoplayer2/source/b/a/d;->f:Ljava/util/regex/Pattern;

    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/source/b/a/d;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    .line 286
    const-string v3, "VOD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    const/4 v2, 0x1

    :goto_1
    move/from16 v36, v2

    .line 293
    goto :goto_0

    .line 288
    :cond_1
    const-string v3, "EVENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 289
    const/4 v2, 0x2

    goto :goto_1

    .line 291
    :cond_2
    new-instance v3, Lcom/google/android/exoplayer2/ParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal playlist type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 293
    :cond_3
    const-string v2, "#EXT-X-START"

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 294
    sget-object v2, Lcom/google/android/exoplayer2/source/b/a/d;->i:Ljava/util/regex/Pattern;

    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/source/b/a/d;->c(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v2

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v6

    double-to-long v2, v2

    move-wide/from16 v34, v2

    goto :goto_0

    .line 295
    :cond_4
    const-string v2, "#EXT-X-MAP"

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 296
    sget-object v2, Lcom/google/android/exoplayer2/source/b/a/d;->m:Ljava/util/regex/Pattern;

    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/source/b/a/d;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v3

    .line 297
    sget-object v2, Lcom/google/android/exoplayer2/source/b/a/d;->k:Ljava/util/regex/Pattern;

    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/source/b/a/d;->d(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    .line 298
    if-eqz v2, :cond_19

    .line 299
    const-string v6, "@"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 300
    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 301
    array-length v11, v2

    const/4 v12, 0x1

    if-le v11, v12, :cond_5

    .line 302
    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 305
    :cond_5
    :goto_2
    new-instance v2, Lcom/google/android/exoplayer2/source/b/a/b$a;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/b/a/b$a;-><init>(Ljava/lang/String;JJ)V

    .line 306
    const-wide/16 v4, 0x0

    .line 307
    const-wide/16 v14, -0x1

    move-object/from16 v18, v2

    .line 308
    goto/16 :goto_0

    :cond_6
    const-string v2, "#EXT-X-TARGETDURATION"

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 309
    sget-object v2, Lcom/google/android/exoplayer2/source/b/a/d;->d:Ljava/util/regex/Pattern;

    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/source/b/a/d;->b(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v6, 0xf4240

    mul-long/2addr v2, v6

    move-wide/from16 v30, v2

    goto/16 :goto_0

    .line 310
    :cond_7
    const-string v2, "#EXT-X-MEDIA-SEQUENCE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 311
    sget-object v2, Lcom/google/android/exoplayer2/source/b/a/d;->g:Ljava/util/regex/Pattern;

    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/source/b/a/d;->b(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v2

    move v8, v2

    move/from16 v33, v2

    .line 312
    goto/16 :goto_0

    .line 313
    :cond_8
    const-string v2, "#EXT-X-VERSION"

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 314
    sget-object v2, Lcom/google/android/exoplayer2/source/b/a/d;->e:Ljava/util/regex/Pattern;

    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/source/b/a/d;->b(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v2

    move/from16 v32, v2

    goto/16 :goto_0

    .line 315
    :cond_9
    const-string v2, "#EXTINF"

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 316
    sget-object v2, Lcom/google/android/exoplayer2/source/b/a/d;->h:Ljava/util/regex/Pattern;

    .line 317
    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/source/b/a/d;->c(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v2

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v6

    double-to-long v2, v2

    move-wide/from16 v28, v2

    goto/16 :goto_0

    .line 318
    :cond_a
    const-string v2, "#EXT-X-KEY"

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 319
    sget-object v2, Lcom/google/android/exoplayer2/source/b/a/d;->l:Ljava/util/regex/Pattern;

    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/source/b/a/d;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    .line 320
    const-string v3, "AES-128"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 321
    if-eqz v9, :cond_b

    .line 322
    sget-object v2, Lcom/google/android/exoplayer2/source/b/a/d;->m:Ljava/util/regex/Pattern;

    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/source/b/a/d;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v3

    .line 323
    sget-object v2, Lcom/google/android/exoplayer2/source/b/a/d;->n:Ljava/util/regex/Pattern;

    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/source/b/a/d;->d(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    move-object/from16 v17, v2

    move-object v10, v3

    .line 328
    goto/16 :goto_0

    .line 325
    :cond_b
    const/4 v3, 0x0

    .line 326
    const/4 v2, 0x0

    goto :goto_3

    .line 328
    :cond_c
    const-string v2, "#EXT-X-BYTERANGE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 329
    sget-object v2, Lcom/google/android/exoplayer2/source/b/a/d;->j:Ljava/util/regex/Pattern;

    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/source/b/a/d;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    .line 330
    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 331
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 332
    array-length v3, v2

    const/4 v6, 0x1

    if-le v3, v6, :cond_18

    .line 333
    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_4
    move-wide v4, v2

    .line 335
    goto/16 :goto_0

    :cond_d
    const-string v2, "#EXT-X-DISCONTINUITY-SEQUENCE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 336
    const/4 v3, 0x1

    .line 337
    const/16 v2, 0x3a

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    move/from16 v27, v3

    goto/16 :goto_0

    .line 338
    :cond_e
    const-string v2, "#EXT-X-DISCONTINUITY"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 339
    add-int/lit8 v2, v21, 0x1

    move/from16 v21, v2

    goto/16 :goto_0

    .line 340
    :cond_f
    const-string v2, "#EXT-X-PROGRAM-DATE-TIME"

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 341
    const-wide/16 v2, 0x0

    cmp-long v2, v24, v2

    if-nez v2, :cond_0

    .line 342
    const/16 v2, 0x3a

    .line 343
    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->f(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/b;->b(J)J

    move-result-wide v2

    .line 344
    sub-long v2, v2, v22

    move-wide/from16 v24, v2

    .line 345
    goto/16 :goto_0

    .line 346
    :cond_10
    const-string v2, "#"

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 348
    if-nez v9, :cond_11

    .line 349
    const/4 v11, 0x0

    .line 355
    :goto_5
    add-int/lit8 v20, v8, 0x1

    .line 356
    const-wide/16 v2, -0x1

    cmp-long v2, v14, v2

    if-nez v2, :cond_17

    .line 357
    const-wide/16 v12, 0x0

    .line 359
    :goto_6
    new-instance v2, Lcom/google/android/exoplayer2/source/b/a/b$a;

    move-object v3, v6

    move-wide/from16 v4, v28

    move/from16 v6, v21

    move-wide/from16 v7, v22

    invoke-direct/range {v2 .. v15}, Lcom/google/android/exoplayer2/source/b/a/b$a;-><init>(Ljava/lang/String;JIJZLjava/lang/String;Ljava/lang/String;JJ)V

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    add-long v4, v22, v28

    .line 363
    const-wide/16 v6, 0x0

    .line 364
    const-wide/16 v2, -0x1

    cmp-long v2, v14, v2

    if-eqz v2, :cond_16

    .line 365
    add-long v2, v12, v14

    .line 367
    :goto_7
    const-wide/16 v14, -0x1

    move/from16 v8, v20

    move-wide/from16 v22, v4

    move-wide/from16 v28, v6

    move-wide v4, v2

    .line 368
    goto/16 :goto_0

    .line 350
    :cond_11
    if-eqz v17, :cond_12

    move-object/from16 v11, v17

    .line 351
    goto :goto_5

    .line 353
    :cond_12
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 368
    :cond_13
    const-string v2, "#EXT-X-ENDLIST"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 372
    :cond_14
    new-instance v3, Lcom/google/android/exoplayer2/source/b/a/b;

    const-wide/16 v4, 0x0

    cmp-long v2, v24, v4

    if-eqz v2, :cond_15

    const/16 v17, 0x1

    :goto_8
    move/from16 v4, v36

    move-object/from16 v5, p1

    move-wide/from16 v6, v34

    move-wide/from16 v8, v24

    move/from16 v10, v27

    move/from16 v11, v26

    move/from16 v12, v33

    move/from16 v13, v32

    move-wide/from16 v14, v30

    invoke-direct/range {v3 .. v19}, Lcom/google/android/exoplayer2/source/b/a/b;-><init>(ILjava/lang/String;JJZIIIJZZLcom/google/android/exoplayer2/source/b/a/b$a;Ljava/util/List;)V

    return-object v3

    :cond_15
    const/16 v17, 0x0

    goto :goto_8

    :cond_16
    move-wide v2, v12

    goto :goto_7

    :cond_17
    move-wide v12, v4

    goto :goto_6

    :cond_18
    move-wide v2, v4

    goto/16 :goto_4

    :cond_19
    move-wide v6, v14

    goto/16 :goto_2
.end method

.method private static b(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2

    .prologue
    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "YES"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;Ljava/util/regex/Pattern;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/b/a/d;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method private static d(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 394
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 398
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/b/a/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 106
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 109
    :try_start_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/b/a/d;->a(Ljava/io/BufferedReader;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    new-instance v0, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;

    const-string v2, "Input does not start with the #EXTM3U header."

    invoke-direct {v0, v2, p1}, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/io/Closeable;)V

    throw v0

    .line 113
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 114
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 117
    const-string v3, "#EXT-X-STREAM-INF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v2, Lcom/google/android/exoplayer2/source/b/a/d$a;

    invoke-direct {v2, v0, v1}, Lcom/google/android/exoplayer2/source/b/a/d$a;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/source/b/a/d;->a(Lcom/google/android/exoplayer2/source/b/a/d$a;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/b/a/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 135
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/io/Closeable;)V

    :goto_1
    return-object v0

    .line 120
    :cond_1
    :try_start_2
    const-string v3, "#EXT-X-TARGETDURATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "#EXT-X-MEDIA-SEQUENCE"

    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "#EXTINF"

    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "#EXT-X-KEY"

    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "#EXT-X-BYTERANGE"

    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "#EXT-X-DISCONTINUITY"

    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "#EXT-X-ENDLIST"

    .line 127
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 128
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v2, Lcom/google/android/exoplayer2/source/b/a/d$a;

    invoke-direct {v2, v0, v1}, Lcom/google/android/exoplayer2/source/b/a/d$a;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/source/b/a/d;->b(Lcom/google/android/exoplayer2/source/b/a/d$a;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/b/a/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 135
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 131
    :cond_3
    :try_start_3
    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 135
    :cond_4
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/io/Closeable;)V

    .line 137
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Failed to parse the playlist, could not identify any tags."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic b(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/b/a/d;->a(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/b/a/c;

    move-result-object v0

    return-object v0
.end method

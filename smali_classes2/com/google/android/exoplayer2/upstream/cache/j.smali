.class final Lcom/google/android/exoplayer2/upstream/cache/j;
.super Lcom/google/android/exoplayer2/upstream/cache/e;
.source "SimpleCacheSpan.java"


# static fields
.field private static final g:Ljava/util/regex/Pattern;

.field private static final h:Ljava/util/regex/Pattern;

.field private static final i:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 31
    const-string v0, "^(.+)\\.(\\d+)\\.(\\d+)\\.v1\\.exo$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/cache/j;->g:Ljava/util/regex/Pattern;

    .line 33
    const-string v0, "^(.+)\\.(\\d+)\\.(\\d+)\\.v2\\.exo$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/cache/j;->h:Ljava/util/regex/Pattern;

    .line 35
    const-string v0, "^(\\d+)\\.(\\d+)\\.(\\d+)\\.v3\\.exo$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/cache/j;->i:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JJJLjava/io/File;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct/range {p0 .. p8}, Lcom/google/android/exoplayer2/upstream/cache/e;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    .line 112
    return-void
.end method

.method public static a(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/g;)Lcom/google/android/exoplayer2/upstream/cache/j;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, ".v3.exo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 66
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/j;->b(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/g;)Ljava/io/File;

    move-result-object v8

    .line 67
    if-nez v8, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-object v2

    .line 70
    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_1
    sget-object v1, Lcom/google/android/exoplayer2/upstream/cache/j;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 74
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 78
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 79
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/g;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    if-nez v1, :cond_2

    move-object v0, v2

    :goto_2
    move-object v2, v0

    .line 81
    goto :goto_0

    .line 80
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/j;

    const/4 v2, 0x2

    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v7, 0x3

    .line 81
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/j;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    goto :goto_2

    :cond_3
    move-object v8, p0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/j;
    .locals 9

    .prologue
    .line 44
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/j;

    const-wide/16 v4, -0x1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/j;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/upstream/cache/j;
    .locals 9

    .prologue
    .line 52
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/j;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/j;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    return-object v0
.end method

.method public static a(Ljava/io/File;IJJ)Ljava/io/File;
    .locals 4

    .prologue
    .line 40
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".v3.exo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/j;
    .locals 9

    .prologue
    .line 48
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/j;

    const-wide/16 v4, -0x1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/j;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    return-object v0
.end method

.method private static b(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/g;)Ljava/io/File;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 86
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 87
    sget-object v0, Lcom/google/android/exoplayer2/upstream/cache/j;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/v;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    if-nez v1, :cond_3

    move-object v0, v6

    .line 106
    :cond_0
    :goto_0
    return-object v0

    .line 94
    :cond_1
    sget-object v0, Lcom/google/android/exoplayer2/upstream/cache/j;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v0, v6

    .line 96
    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v0

    .line 101
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/upstream/cache/g;->c(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    .line 102
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 101
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/j;->a(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object v0

    .line 103
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, v6

    .line 104
    goto :goto_0

    :cond_3
    move-object v4, v0

    goto :goto_1
.end method


# virtual methods
.method public a(I)Lcom/google/android/exoplayer2/upstream/cache/j;
    .locals 15

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/j;->d:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 125
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/j;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/j;->b:J

    move/from16 v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/j;->a(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object v14

    .line 126
    new-instance v6, Lcom/google/android/exoplayer2/upstream/cache/j;

    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/cache/j;->a:Ljava/lang/String;

    iget-wide v8, p0, Lcom/google/android/exoplayer2/upstream/cache/j;->b:J

    iget-wide v10, p0, Lcom/google/android/exoplayer2/upstream/cache/j;->c:J

    move-wide v12, v4

    invoke-direct/range {v6 .. v14}, Lcom/google/android/exoplayer2/upstream/cache/j;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    return-object v6
.end method

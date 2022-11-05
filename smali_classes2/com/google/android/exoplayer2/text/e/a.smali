.class final Lcom/google/android/exoplayer2/text/e/a;
.super Ljava/lang/Object;
.source "CssParser.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Lcom/google/android/exoplayer2/util/l;

.field private final c:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "\\[voice=\"([^\"]*)\"\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/e/a;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/e/a;->b:Lcom/google/android/exoplayer2/util/l;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/e/a;->c:Ljava/lang/StringBuilder;

    .line 51
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/util/l;I)C
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    aget-byte v0, v0, p1

    int-to-char v0, v0

    return v0
.end method

.method static a(Lcom/google/android/exoplayer2/util/l;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/e/a;->b(Lcom/google/android/exoplayer2/util/l;)V

    .line 200
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 201
    const/4 v0, 0x0

    .line 208
    :cond_0
    :goto_0
    return-object v0

    .line 203
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/text/e/a;->d(Lcom/google/android/exoplayer2/util/l;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 204
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/google/android/exoplayer2/text/e/d;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 306
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    const/16 v0, 0x5b

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 310
    if-eq v0, v5, :cond_3

    .line 311
    sget-object v1, Lcom/google/android/exoplayer2/text/e/a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 312
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 313
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/text/e/d;->c(Ljava/lang/String;)V

    .line 315
    :cond_2
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 317
    :cond_3
    const-string v0, "\\."

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 318
    aget-object v1, v0, v3

    .line 319
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 320
    if-eq v2, v5, :cond_4

    .line 321
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/text/e/d;->b(Ljava/lang/String;)V

    .line 322
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/text/e/d;->a(Ljava/lang/String;)V

    .line 326
    :goto_1
    array-length v1, v0

    if-le v1, v4, :cond_0

    .line 327
    array-length v1, v0

    invoke-static {v0, v4, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/e/d;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_4
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/text/e/d;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a(Lcom/google/android/exoplayer2/util/l;Lcom/google/android/exoplayer2/text/e/d;Ljava/lang/StringBuilder;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 141
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/e/a;->b(Lcom/google/android/exoplayer2/util/l;)V

    .line 142
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/text/e/a;->d(Lcom/google/android/exoplayer2/util/l;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 143
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    const-string v1, ":"

    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/text/e/a;->a(Lcom/google/android/exoplayer2/util/l;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/e/a;->b(Lcom/google/android/exoplayer2/util/l;)V

    .line 150
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/text/e/a;->c(Lcom/google/android/exoplayer2/util/l;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v2

    .line 155
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/text/e/a;->a(Lcom/google/android/exoplayer2/util/l;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 156
    const-string v4, ";"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 167
    :goto_1
    const-string v2, "color"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 168
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/d;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/e/d;->a(I)Lcom/google/android/exoplayer2/text/e/d;

    goto :goto_0

    .line 158
    :cond_2
    const-string v4, "}"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto :goto_1

    .line 169
    :cond_3
    const-string v2, "background-color"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 170
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/d;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/e/d;->b(I)Lcom/google/android/exoplayer2/text/e/d;

    goto :goto_0

    .line 171
    :cond_4
    const-string v2, "text-decoration"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 172
    const-string v0, "underline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/text/e/d;->a(Z)Lcom/google/android/exoplayer2/text/e/d;

    goto :goto_0

    .line 175
    :cond_5
    const-string v2, "font-family"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 176
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/text/e/d;->d(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/e/d;

    goto :goto_0

    .line 177
    :cond_6
    const-string v2, "font-weight"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 178
    const-string v0, "bold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/text/e/d;->b(Z)Lcom/google/android/exoplayer2/text/e/d;

    goto/16 :goto_0

    .line 181
    :cond_7
    const-string v2, "font-style"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "italic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/text/e/d;->c(Z)Lcom/google/android/exoplayer2/text/e/d;

    goto/16 :goto_0
.end method

.method private static b(Lcom/google/android/exoplayer2/util/l;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 96
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/e/a;->b(Lcom/google/android/exoplayer2/util/l;)V

    .line 97
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-object v1

    .line 100
    :cond_1
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/l;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string v2, "::cue"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v0

    .line 105
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/text/e/a;->a(Lcom/google/android/exoplayer2/util/l;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 106
    if-eqz v2, :cond_0

    .line 109
    const-string v3, "{"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 111
    const-string v1, ""

    goto :goto_0

    .line 114
    :cond_2
    const-string v0, "("

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/e/a;->d(Lcom/google/android/exoplayer2/util/l;)Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/text/e/a;->a(Lcom/google/android/exoplayer2/util/l;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 118
    const-string v3, ")"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 121
    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method static b(Lcom/google/android/exoplayer2/util/l;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 191
    move v0, v1

    .line 192
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v2

    if-lez v2, :cond_2

    if-eqz v0, :cond_2

    .line 193
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/e/a;->e(Lcom/google/android/exoplayer2/util/l;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/exoplayer2/text/e/a;->f(Lcom/google/android/exoplayer2/util/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 195
    :cond_2
    return-void
.end method

.method private static c(Lcom/google/android/exoplayer2/util/l;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    const/4 v0, 0x0

    .line 245
    :goto_0
    if-nez v0, :cond_3

    .line 246
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v2

    .line 247
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/text/e/a;->a(Lcom/google/android/exoplayer2/util/l;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 248
    if-nez v3, :cond_0

    .line 250
    const/4 v0, 0x0

    .line 259
    :goto_1
    return-object v0

    .line 252
    :cond_0
    const-string v4, "}"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ";"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 253
    :cond_1
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 254
    const/4 v0, 0x1

    goto :goto_0

    .line 256
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 259
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static c(Lcom/google/android/exoplayer2/util/l;)V
    .locals 1

    .prologue
    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->x()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    return-void
.end method

.method private static d(Lcom/google/android/exoplayer2/util/l;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v0

    .line 129
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->c()I

    move-result v4

    move v2, v0

    move v0, v1

    .line 131
    :goto_0
    if-ge v2, v4, :cond_1

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v0, v0, v2

    int-to-char v0, v0

    .line 133
    const/16 v2, 0x29

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    move v2, v3

    .line 134
    goto :goto_0

    :cond_0
    move v0, v1

    .line 133
    goto :goto_1

    .line 135
    :cond_1
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Lcom/google/android/exoplayer2/util/l;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 283
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 284
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v1

    .line 285
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->c()I

    move-result v2

    .line 287
    :goto_0
    if-ge v1, v2, :cond_5

    if-nez v0, :cond_5

    .line 288
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    aget-byte v3, v3, v1

    int-to-char v3, v3

    .line 289
    const/16 v4, 0x41

    if-lt v3, v4, :cond_0

    const/16 v4, 0x5a

    if-le v3, v4, :cond_3

    :cond_0
    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7a

    if-le v3, v4, :cond_3

    :cond_1
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_3

    :cond_2
    const/16 v4, 0x23

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_3

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_4

    .line 291
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 292
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 294
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 297
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 298
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e(Lcom/google/android/exoplayer2/util/l;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 212
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v1

    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/text/e/a;->a(Lcom/google/android/exoplayer2/util/l;I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 221
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 218
    :sswitch_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    goto :goto_0

    .line 212
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private static f(Lcom/google/android/exoplayer2/util/l;)Z
    .locals 6

    .prologue
    const/16 v5, 0x2f

    const/16 v4, 0x2a

    .line 263
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v1

    .line 264
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->c()I

    move-result v0

    .line 265
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    .line 266
    add-int/lit8 v2, v1, 0x2

    if-gt v2, v0, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    if-ne v1, v5, :cond_2

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    if-ne v2, v4, :cond_2

    move v2, v1

    .line 267
    :goto_0
    add-int/lit8 v1, v2, 0x1

    if-ge v1, v0, :cond_1

    .line 268
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    int-to-char v2, v2

    .line 269
    if-ne v2, v4, :cond_0

    .line 270
    aget-byte v2, v3, v1

    int-to-char v2, v2

    if-ne v2, v5, :cond_0

    .line 271
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    :cond_0
    move v2, v1

    .line 275
    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 277
    const/4 v0, 0x1

    .line 279
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/text/e/d;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/e/a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 63
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v0

    .line 64
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/e/a;->c(Lcom/google/android/exoplayer2/util/l;)V

    .line 65
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/e/a;->b:Lcom/google/android/exoplayer2/util/l;

    iget-object v4, p1, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/exoplayer2/util/l;->a([BI)V

    .line 66
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/e/a;->b:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/e/a;->b:Lcom/google/android/exoplayer2/util/l;

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/e/a;->c:Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/text/e/a;->b(Lcom/google/android/exoplayer2/util/l;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 68
    if-eqz v2, :cond_0

    const-string v0, "{"

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/e/a;->b:Lcom/google/android/exoplayer2/util/l;

    iget-object v5, p0, Lcom/google/android/exoplayer2/text/e/a;->c:Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/text/e/a;->a(Lcom/google/android/exoplayer2/util/l;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 84
    :cond_1
    :goto_0
    return-object v0

    .line 71
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/text/e/d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/e/d;-><init>()V

    .line 72
    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/text/e/a;->a(Lcom/google/android/exoplayer2/text/e/d;Ljava/lang/String;)V

    move v2, v3

    move-object v4, v1

    .line 75
    :cond_3
    :goto_1
    if-nez v2, :cond_6

    .line 76
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/e/a;->b:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v5

    .line 77
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/e/a;->b:Lcom/google/android/exoplayer2/util/l;

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/e/a;->c:Ljava/lang/StringBuilder;

    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/text/e/a;->a(Lcom/google/android/exoplayer2/util/l;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    .line 78
    if-eqz v4, :cond_4

    const-string v2, "}"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const/4 v2, 0x1

    .line 79
    :goto_2
    if-nez v2, :cond_3

    .line 80
    iget-object v6, p0, Lcom/google/android/exoplayer2/text/e/a;->b:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 81
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/e/a;->b:Lcom/google/android/exoplayer2/util/l;

    iget-object v6, p0, Lcom/google/android/exoplayer2/text/e/a;->c:Ljava/lang/StringBuilder;

    invoke-static {v5, v0, v6}, Lcom/google/android/exoplayer2/text/e/a;->a(Lcom/google/android/exoplayer2/util/l;Lcom/google/android/exoplayer2/text/e/d;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_5
    move v2, v3

    .line 78
    goto :goto_2

    .line 84
    :cond_6
    const-string v2, "}"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0
.end method

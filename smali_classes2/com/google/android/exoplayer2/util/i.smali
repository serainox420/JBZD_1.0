.class public final Lcom/google/android/exoplayer2/util/i;
.super Ljava/lang/Object;
.source "MimeTypes.java"


# direct methods
.method public static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 94
    const-string v0, "audio"

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/i;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 104
    const-string v0, "video"

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/i;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 114
    const-string v0, "text"

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/i;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 135
    if-nez p0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-object v0

    .line 138
    :cond_1
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 139
    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 140
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/i;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/i;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 142
    goto :goto_0

    .line 139
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 155
    if-nez p0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-object v0

    .line 158
    :cond_1
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 159
    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 160
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/i;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/i;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 162
    goto :goto_0

    .line 159
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 175
    if-nez p0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-object v0

    .line 178
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 179
    const-string v2, "avc1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "avc3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 180
    :cond_2
    const-string v0, "video/avc"

    goto :goto_0

    .line 181
    :cond_3
    const-string v2, "hev1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "hvc1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 182
    :cond_4
    const-string v0, "video/hevc"

    goto :goto_0

    .line 183
    :cond_5
    const-string v2, "vp9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 184
    const-string v0, "video/x-vnd.on2.vp9"

    goto :goto_0

    .line 185
    :cond_6
    const-string v2, "vp8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 186
    const-string v0, "video/x-vnd.on2.vp8"

    goto :goto_0

    .line 187
    :cond_7
    const-string v2, "mp4a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 188
    const-string v0, "audio/mp4a-latm"

    goto :goto_0

    .line 189
    :cond_8
    const-string v2, "ac-3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "dac3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 190
    :cond_9
    const-string v0, "audio/ac3"

    goto :goto_0

    .line 191
    :cond_a
    const-string v2, "ec-3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "dec3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 192
    :cond_b
    const-string v0, "audio/eac3"

    goto :goto_0

    .line 193
    :cond_c
    const-string v2, "dtsc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "dtse"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 194
    :cond_d
    const-string v0, "audio/vnd.dts"

    goto/16 :goto_0

    .line 195
    :cond_e
    const-string v2, "dtsh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "dtsl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 196
    :cond_f
    const-string v0, "audio/vnd.dts.hd"

    goto/16 :goto_0

    .line 197
    :cond_10
    const-string v2, "opus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 198
    const-string v0, "audio/opus"

    goto/16 :goto_0

    .line 199
    :cond_11
    const-string v2, "vorbis"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    const-string v0, "audio/vorbis"

    goto/16 :goto_0
.end method

.method public static g(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 214
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v0

    .line 216
    :cond_1
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    const/4 v0, 0x1

    goto :goto_0

    .line 218
    :cond_2
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/i;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 219
    const/4 v0, 0x2

    goto :goto_0

    .line 220
    :cond_3
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/i;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "application/cea-608"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "application/cea-708"

    .line 221
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "application/x-mp4-cea-608"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "application/x-subrip"

    .line 222
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "application/ttml+xml"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "application/x-quicktime-tx3g"

    .line 223
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "application/x-mp4-vtt"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "application/x-rawcc"

    .line 224
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "application/vobsub"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "application/pgs"

    .line 225
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 226
    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    .line 227
    :cond_5
    const-string v1, "application/id3"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "application/x-emsg"

    .line 228
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "application/x-scte35"

    .line 229
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "application/x-camera-motion"

    .line 230
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    :cond_6
    const/4 v0, 0x4

    goto/16 :goto_0
.end method

.method public static h(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 244
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/i;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/i;->g(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 254
    if-nez p0, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 261
    :goto_0
    return-object v0

    .line 257
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 258
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mime type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

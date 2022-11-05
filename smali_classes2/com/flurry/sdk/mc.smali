.class public final Lcom/flurry/sdk/mc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/mc;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-object p0

    .line 34
    :cond_1
    invoke-static {p0}, Lcom/flurry/sdk/mc;->i(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 43
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 49
    if-ltz v2, :cond_0

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 134
    .line 136
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-object p0

    .line 140
    :cond_1
    invoke-static {p0}, Lcom/flurry/sdk/mc;->i(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v3

    .line 147
    invoke-static {p1}, Lcom/flurry/sdk/mc;->i(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v4

    .line 154
    invoke-virtual {v3}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 160
    if-nez v2, :cond_2

    if-nez v0, :cond_0

    .line 164
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    :cond_3
    invoke-virtual {v3}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {v4}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 170
    if-nez v2, :cond_4

    if-nez v0, :cond_0

    .line 174
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    :cond_5
    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 181
    sget-object v5, Lcom/flurry/sdk/mc;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v0, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v5

    .line 182
    sget-object v0, Lcom/flurry/sdk/mc;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v2

    .line 184
    array-length v6, v5

    .line 185
    array-length v7, v2

    .line 187
    const/4 v0, 0x0

    .line 188
    :goto_1
    if-ge v0, v7, :cond_6

    if-ge v0, v6, :cond_6

    .line 189
    aget-object v8, v5, v0

    .line 190
    aget-object v9, v2, v0

    .line 191
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 196
    :cond_6
    invoke-virtual {v3}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-virtual {v3}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v3

    .line 199
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    if-ne v0, v7, :cond_9

    if-ne v0, v6, :cond_9

    .line 205
    invoke-virtual {v4}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-virtual {v4}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v4

    .line 208
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 209
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 211
    if-eqz v0, :cond_8

    if-eqz v4, :cond_8

    move-object v3, v1

    move-object v2, v1

    .line 251
    :cond_7
    :goto_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v1, v0, v2, v3}, Lcom/flurry/sdk/mc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 215
    :cond_8
    if-eqz v0, :cond_e

    .line 216
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    move-object v0, v1

    .line 221
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 222
    add-int/lit8 v0, v6, -0x1

    aget-object v0, v5, v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v3

    :goto_4
    move-object v3, v0

    .line 227
    goto :goto_2

    .line 228
    :cond_9
    add-int/lit8 v9, v6, -0x1

    .line 229
    add-int/lit8 v7, v7, -0x1

    move v4, v0

    .line 231
    :goto_5
    if-ge v4, v7, :cond_a

    .line 232
    const-string v10, ".."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 236
    :cond_a
    :goto_6
    if-ge v0, v9, :cond_b

    .line 237
    aget-object v4, v5, v0

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string v4, "/"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 241
    :cond_b
    if-ge v0, v6, :cond_c

    .line 242
    aget-object v0, v5, v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 246
    const-string v0, "."

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v0, "/"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_d
    move-object v2, v0

    move-object v0, v3

    goto :goto_4

    :cond_e
    move-object v0, v2

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    .locals 7

    .prologue
    .line 272
    const/4 v6, 0x0

    .line 274
    :try_start_0
    new-instance v0, Ljava/net/URI;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 65
    .line 67
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-object p0

    .line 71
    :cond_1
    invoke-static {p0}, Lcom/flurry/sdk/mc;->i(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-static {v1, v0, v2, v3, v3}, Lcom/flurry/sdk/mc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 345
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 358
    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    .line 101
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-object p0

    .line 105
    :cond_1
    invoke-static {p0}, Lcom/flurry/sdk/mc;->i(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    const-string v1, "./"

    invoke-virtual {v0, v1}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 281
    .line 282
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 284
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "market"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 286
    :cond_0
    return v0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 290
    .line 291
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 292
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 293
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 294
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 297
    :cond_1
    return v0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 301
    .line 302
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 304
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "play.google.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 307
    :cond_0
    return v0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 311
    .line 312
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    .line 314
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-virtual {v1, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 315
    if-eqz v1, :cond_0

    const-string v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 317
    :cond_0
    return v0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 321
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v0

    .line 325
    :cond_1
    invoke-static {p0}, Lcom/flurry/sdk/mc;->i(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 326
    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "http"

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "https"

    .line 333
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static i(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    .prologue
    .line 262
    const/4 v1, 0x0

    .line 264
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

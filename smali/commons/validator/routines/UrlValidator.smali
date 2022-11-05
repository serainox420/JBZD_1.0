.class public Lcommons/validator/routines/UrlValidator;
.super Ljava/lang/Object;
.source "UrlValidator.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ALLOW_2_SLASHES:J = 0x2L

.field public static final ALLOW_ALL_SCHEMES:J = 0x1L

.field public static final ALLOW_LOCAL_URLS:J = 0x8L

.field public static final NO_FRAGMENTS:J = 0x4L

.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final j:[Ljava/lang/String;

.field private static final k:Lcommons/validator/routines/UrlValidator;


# instance fields
.field private final g:J

.field private final h:Ljava/util/Set;

.field private final i:Lcommons/validator/routines/RegexValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 109
    const-string v0, "^(([^:/?#]+):)?(//([^/?#]*))?([^?#]*)(\\?([^#]*))?(#(.*))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcommons/validator/routines/UrlValidator;->a:Ljava/util/regex/Pattern;

    .line 131
    const-string v0, "^\\p{Alpha}[\\p{Alnum}\\+\\-\\.]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcommons/validator/routines/UrlValidator;->b:Ljava/util/regex/Pattern;

    .line 141
    const-string v0, "^([\\p{Alnum}\\-\\.]*)(:\\d*)?(.*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcommons/validator/routines/UrlValidator;->c:Ljava/util/regex/Pattern;

    .line 153
    const-string v0, "^(/[-\\w:@&?=+,.!/~*\'%$_;\\(\\)]*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcommons/validator/routines/UrlValidator;->d:Ljava/util/regex/Pattern;

    .line 156
    const-string v0, "^(.*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcommons/validator/routines/UrlValidator;->e:Ljava/util/regex/Pattern;

    .line 159
    const-string v0, "^:(\\d{1,5})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcommons/validator/routines/UrlValidator;->f:Ljava/util/regex/Pattern;

    .line 180
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ftp"

    aput-object v2, v0, v1

    sput-object v0, Lcommons/validator/routines/UrlValidator;->j:[Ljava/lang/String;

    .line 185
    new-instance v0, Lcommons/validator/routines/UrlValidator;

    invoke-direct {v0}, Lcommons/validator/routines/UrlValidator;-><init>()V

    sput-object v0, Lcommons/validator/routines/UrlValidator;->k:Lcommons/validator/routines/UrlValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcommons/validator/routines/UrlValidator;-><init>([Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 221
    invoke-direct {p0, v0, v0, p1, p2}, Lcommons/validator/routines/UrlValidator;-><init>([Ljava/lang/String;Lcommons/validator/routines/RegexValidator;J)V

    .line 222
    return-void
.end method

.method public constructor <init>(Lcommons/validator/routines/RegexValidator;J)V
    .locals 2

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcommons/validator/routines/UrlValidator;-><init>([Ljava/lang/String;Lcommons/validator/routines/RegexValidator;J)V

    .line 246
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 211
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcommons/validator/routines/UrlValidator;-><init>([Ljava/lang/String;J)V

    .line 212
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcommons/validator/routines/UrlValidator;-><init>([Ljava/lang/String;Lcommons/validator/routines/RegexValidator;J)V

    .line 233
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lcommons/validator/routines/RegexValidator;J)V
    .locals 5

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-wide p3, p0, Lcommons/validator/routines/UrlValidator;->g:J

    .line 260
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcommons/validator/routines/UrlValidator;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lcommons/validator/routines/UrlValidator;->h:Ljava/util/Set;

    .line 272
    :cond_0
    iput-object p2, p0, Lcommons/validator/routines/UrlValidator;->i:Lcommons/validator/routines/RegexValidator;

    .line 273
    return-void

    .line 263
    :cond_1
    if-nez p1, :cond_2

    .line 264
    sget-object p1, Lcommons/validator/routines/UrlValidator;->j:[Ljava/lang/String;

    .line 266
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcommons/validator/routines/UrlValidator;->h:Ljava/util/Set;

    .line 267
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 268
    iget-object v1, p0, Lcommons/validator/routines/UrlValidator;->h:Ljava/util/Set;

    aget-object v2, p1, v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(J)Z
    .locals 5

    .prologue
    .line 488
    iget-wide v0, p0, Lcommons/validator/routines/UrlValidator;->g:J

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(J)Z
    .locals 5

    .prologue
    .line 500
    iget-wide v0, p0, Lcommons/validator/routines/UrlValidator;->g:J

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcommons/validator/routines/UrlValidator;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcommons/validator/routines/UrlValidator;->k:Lcommons/validator/routines/UrlValidator;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 467
    move v1, v0

    .line 469
    :cond_0
    :goto_0
    if-eq v1, v2, :cond_1

    .line 470
    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 471
    if-le v1, v2, :cond_0

    .line 472
    add-int/lit8 v1, v1, 0x1

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    :cond_1
    return v0
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 336
    if-nez p1, :cond_1

    .line 349
    :cond_0
    :goto_0
    return v0

    .line 341
    :cond_1
    sget-object v1, Lcommons/validator/routines/UrlValidator;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    const-wide/16 v2, 0x1

    invoke-direct {p0, v2, v3}, Lcommons/validator/routines/UrlValidator;->b(J)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcommons/validator/routines/UrlValidator;->h:Ljava/util/Set;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 363
    if-nez p1, :cond_1

    .line 403
    :cond_0
    :goto_0
    return v0

    .line 368
    :cond_1
    iget-object v2, p0, Lcommons/validator/routines/UrlValidator;->i:Lcommons/validator/routines/RegexValidator;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcommons/validator/routines/UrlValidator;->i:Lcommons/validator/routines/RegexValidator;

    invoke-virtual {v2, p1}, Lcommons/validator/routines/RegexValidator;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 369
    goto :goto_0

    .line 372
    :cond_2
    invoke-static {p1}, Lcommons/validator/routines/DomainValidator;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 374
    sget-object v3, Lcommons/validator/routines/UrlValidator;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 375
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 382
    const-wide/16 v4, 0x8

    invoke-direct {p0, v4, v5}, Lcommons/validator/routines/UrlValidator;->a(J)Z

    move-result v4

    invoke-static {v4}, Lcommons/validator/routines/DomainValidator;->getInstance(Z)Lcommons/validator/routines/DomainValidator;

    move-result-object v4

    .line 383
    invoke-virtual {v4, v3}, Lcommons/validator/routines/DomainValidator;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 386
    invoke-static {}, Lcommons/validator/routines/InetAddressValidator;->getInstance()Lcommons/validator/routines/InetAddressValidator;

    move-result-object v4

    .line 387
    invoke-virtual {v4, v3}, Lcommons/validator/routines/InetAddressValidator;->isValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    :cond_3
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 394
    if-eqz v3, :cond_4

    sget-object v4, Lcommons/validator/routines/UrlValidator;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    :cond_4
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 399
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_5
    move v0, v1

    .line 403
    goto :goto_0
.end method

.method protected c(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 412
    if-nez p1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return v0

    .line 416
    :cond_1
    sget-object v1, Lcommons/validator/routines/UrlValidator;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    const-string v1, "//"

    invoke-virtual {p0, v1, p1}, Lcommons/validator/routines/UrlValidator;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 421
    const-wide/16 v2, 0x2

    invoke-direct {p0, v2, v3}, Lcommons/validator/routines/UrlValidator;->b(J)Z

    move-result v2

    if-eqz v2, :cond_2

    if-gtz v1, :cond_0

    .line 425
    :cond_2
    const-string v2, "/"

    invoke-virtual {p0, v2, p1}, Lcommons/validator/routines/UrlValidator;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 426
    const-string v3, ".."

    invoke-virtual {p0, v3, p1}, Lcommons/validator/routines/UrlValidator;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 427
    if-lez v3, :cond_3

    sub-int v1, v2, v1

    add-int/lit8 v1, v1, -0x1

    if-le v1, v3, :cond_0

    .line 431
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 440
    if-nez p1, :cond_0

    .line 441
    const/4 v0, 0x1

    .line 444
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcommons/validator/routines/UrlValidator;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method protected e(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 453
    if-nez p1, :cond_0

    .line 454
    const/4 v0, 0x1

    .line 457
    :goto_0
    return v0

    :cond_0
    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcommons/validator/routines/UrlValidator;->b(J)Z

    move-result v0

    goto :goto_0
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 286
    if-nez p1, :cond_1

    .line 323
    :cond_0
    :goto_0
    return v0

    .line 291
    :cond_1
    sget-object v1, Lcommons/validator/routines/UrlValidator;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 292
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 297
    invoke-virtual {p0, v2}, Lcommons/validator/routines/UrlValidator;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 302
    const-string v4, "file"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 311
    :cond_2
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcommons/validator/routines/UrlValidator;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcommons/validator/routines/UrlValidator;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcommons/validator/routines/UrlValidator;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    const/4 v0, 0x1

    goto :goto_0

    .line 306
    :cond_3
    invoke-virtual {p0, v3}, Lcommons/validator/routines/UrlValidator;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0
.end method

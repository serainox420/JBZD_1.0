.class abstract Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;
.super Ljava/lang/Object;
.source "SsManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->c:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;

    .line 101
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->a:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->b:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->d:Ljava/util/List;

    .line 104
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;
    .locals 1

    .prologue
    .line 162
    const-string v0, "QualityLevel"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$c;

    invoke-direct {v0, p1, p3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$c;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;Ljava/lang/String;)V

    .line 169
    :goto_0
    return-object v0

    .line 164
    :cond_0
    const-string v0, "Protection"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$b;

    invoke-direct {v0, p1, p3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$b;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_1
    const-string v0, "StreamIndex"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;

    invoke-direct {v0, p1, p3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_0

    .line 260
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .line 265
    :cond_0
    return p3

    .line 261
    :catch_0
    move-exception v0

    .line 262
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_0

    .line 287
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p3

    .line 292
    :cond_0
    return-wide p3

    .line 288
    :catch_0
    move-exception v0

    .line 289
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected abstract a()Ljava/lang/Object;
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 195
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 197
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 201
    :goto_1
    return-object v0

    .line 195
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->c:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->c:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 108
    move v1, v0

    .line 111
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 112
    packed-switch v3, :pswitch_data_0

    .line 157
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 114
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 115
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    move v1, v2

    goto :goto_1

    .line 118
    :cond_1
    if-eqz v1, :cond_0

    .line 119
    if-lez v0, :cond_2

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 124
    :cond_3
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->a:Ljava/lang/String;

    invoke-direct {p0, p0, v3, v4}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->a(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;

    move-result-object v3

    .line 125
    if-nez v3, :cond_4

    move v0, v2

    .line 126
    goto :goto_1

    .line 128
    :cond_4
    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 134
    :pswitch_1
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->c(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 139
    :pswitch_2
    if-eqz v1, :cond_0

    .line 140
    if-lez v0, :cond_5

    .line 141
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 143
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 145
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->a()Ljava/lang/Object;

    move-result-object v0

    .line 152
    :goto_2
    return-object v0

    :pswitch_3
    const/4 v0, 0x0

    goto :goto_2

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;
        }
    .end annotation

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_0

    .line 249
    return-object v0

    .line 251
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->d:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method protected final a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_0

    .line 313
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 315
    :cond_0
    return p3
.end method

.method protected final b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_0

    .line 273
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 278
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected b(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 220
    return-void
.end method

.method protected b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method protected final c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_0

    .line 301
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 306
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected c(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method protected d(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

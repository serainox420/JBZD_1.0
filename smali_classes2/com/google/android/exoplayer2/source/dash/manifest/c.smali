.class public Lcom/google/android/exoplayer2/source/dash/manifest/c;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DashManifestParser.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/p$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/manifest/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xml/sax/helpers/DefaultHandler;",
        "Lcom/google/android/exoplayer2/upstream/p$a",
        "<",
        "Lcom/google/android/exoplayer2/source/dash/manifest/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "(\\d+)(?:/(\\d+))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a:Ljava/util/regex/Pattern;

    .line 61
    const-string v0, "CC([1-4])=.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/manifest/c;->b:Ljava/util/regex/Pattern;

    .line 62
    const-string v0, "([1-9]|[1-5][0-9]|6[0-3])=.*"

    .line 63
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/manifest/c;->c:Ljava/util/regex/Pattern;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/c;-><init>(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/c;->d:Ljava/lang/String;

    .line 81
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/c;->e:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static a(Lorg/xmlpull/v1/XmlPullParser;F)F
    .locals 3

    .prologue
    .line 865
    .line 866
    const/4 v0, 0x0

    const-string v1, "frameRate"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 867
    if-eqz v0, :cond_0

    .line 868
    sget-object v1, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 869
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 870
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 871
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 872
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 873
    int-to-float v1, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    div-float p1, v1, v0

    .line 879
    :cond_0
    :goto_0
    return p1

    .line 875
    :cond_1
    int-to-float p1, v1

    goto :goto_0
.end method

.method private static a(II)I
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 801
    if-ne p0, v0, :cond_1

    move p0, p1

    .line 807
    :cond_0
    :goto_0
    return p0

    .line 803
    :cond_1
    if-eq p1, v0, :cond_0

    .line 806
    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected static a(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/g;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 832
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 833
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/g;

    .line 834
    const-string v2, "urn:scte:dash:cc:cea-608:2015"

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/manifest/g;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 836
    sget-object v2, Lcom/google/android/exoplayer2/source/dash/manifest/c;->b:Ljava/util/regex/Pattern;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 837
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 838
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 844
    :goto_1
    return v0

    .line 840
    :cond_0
    const-string v2, "MpdParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse CEA-608 channel number from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/g;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 844
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 908
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 909
    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 761
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/i;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/ttml+xml"

    .line 762
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/x-mp4-vtt"

    .line 763
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/cea-708"

    .line 764
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/cea-608"

    .line 765
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static b(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/g;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 849
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 850
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/g;

    .line 851
    const-string v2, "urn:scte:dash:cc:cea-708:2015"

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/manifest/g;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 853
    sget-object v2, Lcom/google/android/exoplayer2/source/dash/manifest/c;->c:Ljava/util/regex/Pattern;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 854
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 855
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 861
    :goto_1
    return v0

    .line 857
    :cond_0
    const-string v2, "MpdParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse CEA-708 service block number from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/g;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 861
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected static b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 883
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 884
    if-nez v0, :cond_0

    .line 887
    :goto_0
    return-wide p2

    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->e(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method protected static b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 822
    const-string v0, "schemeIdUri"

    invoke-static {p0, v0, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 823
    const-string v1, "value"

    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 825
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 826
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/w;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 827
    new-instance v2, Lcom/google/android/exoplayer2/source/dash/manifest/g;

    invoke-direct {v2, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 729
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 730
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 751
    :cond_0
    :goto_0
    return-object p0

    .line 731
    :cond_1
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/i;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 732
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 733
    :cond_2
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 735
    const-string v1, "application/mp4"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 736
    const-string v1, "stpp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 737
    const-string p0, "application/ttml+xml"

    goto :goto_0

    .line 738
    :cond_3
    const-string v1, "wvtt"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 739
    const-string p0, "application/x-mp4-vtt"

    goto :goto_0

    .line 741
    :cond_4
    const-string v1, "application/x-rawcc"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 742
    if-eqz p1, :cond_7

    .line 743
    const-string v1, "cea708"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 744
    const-string p0, "application/cea-708"

    goto :goto_0

    .line 745
    :cond_5
    const-string v1, "eia608"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "cea608"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 746
    :cond_6
    const-string p0, "application/cea-608"

    goto :goto_0

    :cond_7
    move-object p0, v0

    .line 749
    goto :goto_0

    :cond_8
    move-object p0, v0

    .line 751
    goto :goto_0
.end method

.method protected static b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 918
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 919
    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method protected static c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 893
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 894
    if-nez v0, :cond_0

    .line 897
    :goto_0
    return-wide p2

    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->f(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 779
    if-nez p0, :cond_1

    move-object p0, p1

    .line 785
    :cond_0
    :goto_0
    return-object p0

    .line 781
    :cond_1
    if-eqz p1, :cond_0

    .line 784
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    goto :goto_0
.end method

.method protected static c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 903
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 904
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 913
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 914
    if-nez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/google/android/exoplayer2/Format;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 314
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 315
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v0

    .line 317
    :cond_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/i;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 318
    const/4 v0, 0x2

    goto :goto_0

    .line 319
    :cond_2
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/i;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 320
    const/4 v0, 0x1

    goto :goto_0

    .line 321
    :cond_3
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "J)",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/d;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 195
    const-string v0, "id"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 196
    const-string v0, "start"

    invoke-static {p1, v0, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 197
    const-string v0, "duration"

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {p1, v0, v8, v9}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    .line 199
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 200
    const/4 v0, 0x0

    move-object v1, v3

    move-object v2, p2

    .line 202
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 203
    const-string v10, "BaseURL"

    invoke-static {p1, v10}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 204
    if-nez v0, :cond_1

    .line 205
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    const/4 v0, 0x1

    .line 217
    :cond_1
    :goto_0
    const-string v10, "Period"

    invoke-static {p1, v10}, Lcom/google/android/exoplayer2/util/w;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 219
    invoke-virtual {p0, v4, v6, v7, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Ljava/lang/String;JLjava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/d;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 208
    :cond_2
    const-string v10, "AdaptationSet"

    invoke-static {p1, v10}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 209
    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/h;)Lcom/google/android/exoplayer2/source/dash/manifest/a;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :cond_3
    const-string v10, "SegmentBase"

    invoke-static {p1, v10}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 211
    invoke-virtual {p0, p1, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/h$e;)Lcom/google/android/exoplayer2/source/dash/manifest/h$e;

    move-result-object v1

    goto :goto_0

    .line 212
    :cond_4
    const-string v10, "SegmentList"

    invoke-static {p1, v10}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 213
    invoke-virtual {p0, p1, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/h$b;)Lcom/google/android/exoplayer2/source/dash/manifest/h$b;

    move-result-object v1

    goto :goto_0

    .line 214
    :cond_5
    const-string v10, "SegmentTemplate"

    invoke-static {p1, v10}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 215
    invoke-virtual {p0, p1, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/h$c;)Lcom/google/android/exoplayer2/source/dash/manifest/h$c;

    move-result-object v1

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;ILjava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIFIII",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/g;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 485
    move-object/from16 v0, p12

    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 486
    if-eqz v3, :cond_4

    .line 487
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/i;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p12

    move/from16 v5, p8

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v10, p10

    invoke-static/range {v1 .. v10}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 506
    :goto_0
    return-object v1

    .line 490
    :cond_0
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 491
    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p12

    move/from16 v5, p8

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p10

    move-object/from16 v10, p9

    invoke-static/range {v1 .. v10}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    goto :goto_0

    .line 493
    :cond_1
    invoke-static {v3}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 495
    const-string v1, "application/cea-608"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 496
    invoke-static/range {p11 .. p11}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Ljava/util/List;)I

    move-result v8

    :goto_1
    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p12

    move/from16 v5, p8

    move/from16 v6, p10

    move-object/from16 v7, p9

    .line 502
    invoke-static/range {v1 .. v8}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    goto :goto_0

    .line 497
    :cond_2
    const-string v1, "application/cea-708"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 498
    invoke-static/range {p11 .. p11}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->b(Ljava/util/List;)I

    move-result v8

    goto :goto_1

    .line 500
    :cond_3
    const/4 v8, -0x1

    goto :goto_1

    :cond_4
    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p12

    move/from16 v5, p8

    move/from16 v6, p10

    move-object/from16 v7, p9

    .line 506
    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/Format;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    goto :goto_0
.end method

.method protected a(IILjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/f;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/g;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/a;"
        }
    .end annotation

    .prologue
    .line 301
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/a;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/a;-><init>(IILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/h;)Lcom/google/android/exoplayer2/source/dash/manifest/a;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    const-string v3, "id"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v19

    .line 231
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->b(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v18

    .line 233
    const/4 v3, 0x0

    const-string v4, "mimeType"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 234
    const/4 v3, 0x0

    const-string v4, "codecs"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 235
    const-string v3, "width"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 236
    const-string v3, "height"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 237
    const/high16 v3, -0x40800000    # -1.0f

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v10

    .line 238
    const/4 v11, -0x1

    .line 239
    const-string v3, "audioSamplingRate"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    .line 240
    const/4 v3, 0x0

    const-string v4, "lang"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 241
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 242
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 243
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 244
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 245
    const/4 v14, 0x0

    .line 247
    const/16 v17, 0x0

    move-object/from16 v16, p3

    move-object/from16 v5, p2

    .line 249
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 250
    const-string v3, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    if-nez v17, :cond_c

    .line 252
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 253
    const/4 v3, 0x1

    move/from16 v4, v18

    .line 287
    :goto_1
    const-string v17, "AdaptationSet"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/w;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 290
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 291
    const/4 v3, 0x0

    move v5, v3

    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_d

    .line 292
    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/dash/manifest/c$a;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/manifest/c;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v3, v7, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lcom/google/android/exoplayer2/source/dash/manifest/c$a;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/google/android/exoplayer2/source/dash/manifest/f;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_2

    .line 255
    :cond_0
    const-string v3, "ContentProtection"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 256
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->c(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v3

    .line 257
    if-eqz v3, :cond_1

    .line 258
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move/from16 v3, v17

    move/from16 v4, v18

    .line 260
    goto :goto_1

    :cond_2
    const-string v3, "ContentComponent"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 261
    const/4 v3, 0x0

    const-string v4, "lang"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 262
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->b(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    move/from16 v0, v18

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(II)I

    move-result v3

    move v4, v3

    move/from16 v3, v17

    goto :goto_1

    .line 263
    :cond_3
    const-string v3, "Role"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 264
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->f(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    or-int/2addr v14, v3

    move/from16 v3, v17

    move/from16 v4, v18

    goto/16 :goto_1

    .line 265
    :cond_4
    const-string v3, "AudioChannelConfiguration"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 266
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->k(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v11

    move/from16 v3, v17

    move/from16 v4, v18

    goto/16 :goto_1

    .line 267
    :cond_5
    const-string v3, "Accessibility"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 268
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->e(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/g;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v3, v17

    move/from16 v4, v18

    goto/16 :goto_1

    .line 269
    :cond_6
    const-string v3, "Representation"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 270
    invoke-virtual/range {v3 .. v16}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/h;)Lcom/google/android/exoplayer2/source/dash/manifest/c$a;

    move-result-object v4

    .line 273
    iget-object v3, v4, Lcom/google/android/exoplayer2/source/dash/manifest/c$a;->a:Lcom/google/android/exoplayer2/Format;

    .line 274
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result v3

    .line 273
    move/from16 v0, v18

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(II)I

    move-result v3

    .line 275
    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v3

    move/from16 v3, v17

    .line 276
    goto/16 :goto_1

    :cond_7
    const-string v3, "SegmentBase"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 277
    check-cast v16, Lcom/google/android/exoplayer2/source/dash/manifest/h$e;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/h$e;)Lcom/google/android/exoplayer2/source/dash/manifest/h$e;

    move-result-object v16

    move/from16 v3, v17

    move/from16 v4, v18

    goto/16 :goto_1

    .line 278
    :cond_8
    const-string v3, "SegmentList"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 279
    check-cast v16, Lcom/google/android/exoplayer2/source/dash/manifest/h$b;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/h$b;)Lcom/google/android/exoplayer2/source/dash/manifest/h$b;

    move-result-object v16

    move/from16 v3, v17

    move/from16 v4, v18

    goto/16 :goto_1

    .line 280
    :cond_9
    const-string v3, "SegmentTemplate"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 281
    check-cast v16, Lcom/google/android/exoplayer2/source/dash/manifest/h$c;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/h$c;)Lcom/google/android/exoplayer2/source/dash/manifest/h$c;

    move-result-object v16

    move/from16 v3, v17

    move/from16 v4, v18

    goto/16 :goto_1

    .line 282
    :cond_a
    const-string v3, "InbandEventStream"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 283
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->d(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/g;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v3, v17

    move/from16 v4, v18

    goto/16 :goto_1

    .line 284
    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 285
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->g(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_c
    move/from16 v3, v17

    move/from16 v4, v18

    goto/16 :goto_1

    .line 296
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4, v6, v15}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(IILjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/a;

    move-result-object v3

    return-object v3

    :cond_e
    move/from16 v17, v3

    move/from16 v18, v4

    goto/16 :goto_0
.end method

.method protected a(JJJZJJJLcom/google/android/exoplayer2/source/dash/manifest/k;Landroid/net/Uri;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/b;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJJ",
            "Lcom/google/android/exoplayer2/source/dash/manifest/k;",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/d;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/b;"
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/b;

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Lcom/google/android/exoplayer2/source/dash/manifest/b;-><init>(JJJZJJJLcom/google/android/exoplayer2/source/dash/manifest/k;Landroid/net/Uri;Ljava/util/List;)V

    return-object v0
.end method

.method public a(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/dash/manifest/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/c;->e:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 93
    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 94
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 95
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "MPD"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "inputStream does not contain a valid media presentation description"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 99
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/b;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/b;
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    const-string v6, "availabilityStartTime"

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p1

    invoke-static {v0, v6, v8, v9}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    .line 108
    const-string v6, "mediaPresentationDuration"

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p1

    invoke-static {v0, v6, v10, v11}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v28

    .line 109
    const-string v6, "minBufferTime"

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p1

    invoke-static {v0, v6, v10, v11}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    .line 110
    const/4 v6, 0x0

    const-string v9, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 111
    if-eqz v6, :cond_0

    const-string v9, "dynamic"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v13, 0x1

    .line 112
    :goto_0
    if-eqz v13, :cond_1

    const-string v6, "minimumUpdatePeriod"

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p1

    invoke-static {v0, v6, v14, v15}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    .line 114
    :goto_1
    if-eqz v13, :cond_2

    const-string v6, "timeShiftBufferDepth"

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 115
    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-static {v0, v6, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    .line 116
    :goto_2
    if-eqz v13, :cond_3

    const-string v6, "suggestedPresentationDelay"

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    .line 117
    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v6, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v18

    .line 118
    :goto_3
    const/16 v23, 0x0

    .line 119
    const/4 v6, 0x0

    .line 121
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 122
    if-eqz v13, :cond_4

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .line 123
    :goto_4
    const/4 v9, 0x0

    .line 124
    const/4 v10, 0x0

    move-wide/from16 v24, v20

    move-object/from16 v26, p2

    move-object/from16 v21, v6

    move/from16 v20, v9

    .line 126
    :goto_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 127
    const-string v6, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 128
    if-nez v10, :cond_a

    .line 129
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 130
    const/4 v6, 0x1

    move-object v10, v9

    move/from16 v9, v20

    move-object/from16 v20, v23

    .line 154
    :goto_6
    const-string v23, "MPD"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/w;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 156
    const-wide v26, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v28, v26

    if-nez v6, :cond_e

    .line 157
    const-wide v26, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v24, v26

    if-eqz v6, :cond_c

    move-wide/from16 v9, v24

    .line 165
    :goto_7
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 166
    new-instance v6, Lcom/google/android/exoplayer2/ParserException;

    const-string v7, "No periods found."

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 111
    :cond_0
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 112
    :cond_1
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_1

    .line 115
    :cond_2
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_2

    .line 117
    :cond_3
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3

    .line 122
    :cond_4
    const-wide/16 v20, 0x0

    goto :goto_4

    .line 132
    :cond_5
    const-string v6, "UTCTiming"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 133
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/k;

    move-result-object v6

    move/from16 v9, v20

    move-object/from16 v20, v6

    move v6, v10

    move-object/from16 v10, v26

    goto :goto_6

    .line 134
    :cond_6
    const-string v6, "Location"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 135
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move v6, v10

    move/from16 v9, v20

    move-object/from16 v20, v23

    move-object/from16 v10, v26

    goto :goto_6

    .line 136
    :cond_7
    const-string v6, "Period"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    if-nez v20, :cond_a

    .line 137
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move-wide/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)Landroid/util/Pair;

    move-result-object v9

    .line 138
    iget-object v6, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/exoplayer2/source/dash/manifest/d;

    .line 139
    iget-wide v0, v6, Lcom/google/android/exoplayer2/source/dash/manifest/d;->b:J

    move-wide/from16 v30, v0

    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v27, v30, v32

    if-nez v27, :cond_9

    .line 140
    if-eqz v13, :cond_8

    .line 143
    const/4 v6, 0x1

    move v9, v6

    move-object/from16 v20, v23

    move v6, v10

    move-object/from16 v10, v26

    goto/16 :goto_6

    .line 145
    :cond_8
    new-instance v6, Lcom/google/android/exoplayer2/ParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to determine start of period "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 148
    :cond_9
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 149
    const-wide v30, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v24, v30

    if-nez v9, :cond_b

    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    .line 151
    :goto_8
    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    move v6, v10

    move/from16 v9, v20

    move-object/from16 v20, v23

    move-object/from16 v10, v26

    goto/16 :goto_6

    .line 149
    :cond_b
    iget-wide v0, v6, Lcom/google/android/exoplayer2/source/dash/manifest/d;->b:J

    move-wide/from16 v30, v0

    add-long v24, v24, v30

    goto :goto_8

    .line 160
    :cond_c
    if-nez v13, :cond_e

    .line 161
    new-instance v6, Lcom/google/android/exoplayer2/ParserException;

    const-string v7, "Unable to determine duration of static manifest."

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_d
    move-object/from16 v6, p0

    .line 169
    invoke-virtual/range {v6 .. v22}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(JJJZJJJLcom/google/android/exoplayer2/source/dash/manifest/k;Landroid/net/Uri;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/b;

    move-result-object v6

    return-object v6

    :cond_e
    move-wide/from16 v9, v28

    goto/16 :goto_7

    :cond_f
    move-object/from16 v23, v20

    move-object/from16 v26, v10

    move v10, v6

    move/from16 v20, v9

    goto/16 :goto_5
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/h;)Lcom/google/android/exoplayer2/source/dash/manifest/c$a;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIFII",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/g;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/h;",
            ")",
            "Lcom/google/android/exoplayer2/source/dash/manifest/c$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    const/4 v2, 0x0

    const-string v3, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 435
    const-string v2, "bandwidth"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 437
    const-string v2, "mimeType"

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 438
    const-string v2, "codecs"

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 439
    const-string v2, "width"

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 440
    const-string v2, "height"

    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 441
    move-object/from16 v0, p1

    move/from16 v1, p7

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v7

    .line 443
    const-string v2, "audioSamplingRate"

    move-object/from16 v0, p1

    move/from16 v1, p9

    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 444
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 445
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 447
    const/4 v8, 0x0

    move/from16 v11, p8

    move-object/from16 v2, p13

    move-object/from16 v12, p2

    .line 449
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 450
    const-string v13, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 451
    if-nez v8, :cond_7

    .line 452
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 453
    const/4 v8, 0x1

    move-object v15, v2

    move-object/from16 v16, v12

    move v2, v8

    move v8, v11

    .line 471
    :goto_1
    const-string v11, "Representation"

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/google/android/exoplayer2/util/w;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    move-object/from16 v2, p0

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    .line 473
    invoke-virtual/range {v2 .. v14}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;ILjava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 476
    if-eqz v15, :cond_8

    move-object v5, v15

    .line 478
    :goto_2
    new-instance v2, Lcom/google/android/exoplayer2/source/dash/manifest/c$a;

    move-object/from16 v4, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/dash/manifest/c$a;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/h;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v2

    .line 455
    :cond_0
    const-string v13, "AudioChannelConfiguration"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 456
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->k(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v11

    move-object v15, v2

    move-object/from16 v16, v12

    move v2, v8

    move v8, v11

    goto :goto_1

    .line 457
    :cond_1
    const-string v13, "SegmentBase"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 458
    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/h$e;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/h$e;)Lcom/google/android/exoplayer2/source/dash/manifest/h$e;

    move-result-object v2

    move-object v15, v2

    move-object/from16 v16, v12

    move v2, v8

    move v8, v11

    goto :goto_1

    .line 459
    :cond_2
    const-string v13, "SegmentList"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 460
    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/h$b;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/h$b;)Lcom/google/android/exoplayer2/source/dash/manifest/h$b;

    move-result-object v2

    move-object v15, v2

    move-object/from16 v16, v12

    move v2, v8

    move v8, v11

    goto :goto_1

    .line 461
    :cond_3
    const-string v13, "SegmentTemplate"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 462
    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/h$c;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/h$c;)Lcom/google/android/exoplayer2/source/dash/manifest/h$c;

    move-result-object v2

    move-object v15, v2

    move-object/from16 v16, v12

    move v2, v8

    move v8, v11

    goto/16 :goto_1

    .line 463
    :cond_4
    const-string v13, "ContentProtection"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 464
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->c(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v13

    .line 465
    if-eqz v13, :cond_5

    .line 466
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v15, v2

    move-object/from16 v16, v12

    move v2, v8

    move v8, v11

    .line 468
    goto/16 :goto_1

    :cond_6
    const-string v13, "InbandEventStream"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 469
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->d(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/g;

    move-result-object v13

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object v15, v2

    move-object/from16 v16, v12

    move v2, v8

    move v8, v11

    goto/16 :goto_1

    .line 476
    :cond_8
    new-instance v5, Lcom/google/android/exoplayer2/source/dash/manifest/h$e;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/source/dash/manifest/h$e;-><init>()V

    goto/16 :goto_2

    :cond_9
    move v11, v8

    move-object/from16 v12, v16

    move v8, v2

    move-object v2, v15

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/String;JLjava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/a;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/d;"
        }
    .end annotation

    .prologue
    .line 223
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/d;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/d;-><init>(Ljava/lang/String;JLjava/util/List;)V

    return-object v0
.end method

.method protected a(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/source/dash/manifest/e;
    .locals 6

    .prologue
    .line 703
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/e;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/e;-><init>(Ljava/lang/String;JJ)V

    return-object v0
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/e;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 688
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 689
    const-wide/16 v2, 0x0

    .line 690
    const-wide/16 v4, -0x1

    .line 691
    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 692
    if-eqz v0, :cond_0

    .line 693
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 694
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 695
    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 696
    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    :cond_0
    move-object v0, p0

    .line 699
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/source/dash/manifest/e;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/google/android/exoplayer2/source/dash/manifest/c$a;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/google/android/exoplayer2/source/dash/manifest/f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/c$a;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/g;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/f;"
        }
    .end annotation

    .prologue
    .line 513
    iget-object v4, p1, Lcom/google/android/exoplayer2/source/dash/manifest/c$a;->a:Lcom/google/android/exoplayer2/Format;

    .line 514
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/c$a;->d:Ljava/util/ArrayList;

    .line 515
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 516
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 517
    new-instance v1, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/Format;->a(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 519
    :cond_0
    iget-object v7, p1, Lcom/google/android/exoplayer2/source/dash/manifest/c$a;->e:Ljava/util/ArrayList;

    .line 520
    invoke-virtual {v7, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 521
    const-wide/16 v2, -0x1

    iget-object v5, p1, Lcom/google/android/exoplayer2/source/dash/manifest/c$a;->b:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/exoplayer2/source/dash/manifest/c$a;->c:Lcom/google/android/exoplayer2/source/dash/manifest/h;

    move-object v1, p2

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/dash/manifest/f;->a(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/h;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/f;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/google/android/exoplayer2/source/dash/manifest/e;JJIJLjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/h$b;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/e;",
            "JJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/h$d;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/e;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/h$b;"
        }
    .end annotation

    .prologue
    .line 601
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/h$b;

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/dash/manifest/h$b;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/e;JJIJLjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/h$b;)Lcom/google/android/exoplayer2/source/dash/manifest/h$b;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 564
    const-string v2, "timescale"

    if-eqz p2, :cond_2

    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/dash/manifest/h$b;->b:J

    :goto_0
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    .line 565
    const-string v4, "presentationTimeOffset"

    if-eqz p2, :cond_3

    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/dash/manifest/h$b;->c:J

    :goto_1
    invoke-static {p1, v4, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 567
    const-string v6, "duration"

    if-eqz p2, :cond_4

    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/dash/manifest/h$b;->e:J

    :goto_2
    invoke-static {p1, v6, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    .line 568
    const-string v1, "startNumber"

    if-eqz p2, :cond_5

    iget v0, p2, Lcom/google/android/exoplayer2/source/dash/manifest/h$b;->d:I

    :goto_3
    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    move-object v0, v9

    move-object v1, v9

    .line 575
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 576
    const-string v10, "Initialization"

    invoke-static {p1, v10}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 577
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->i(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/e;

    move-result-object v9

    .line 586
    :cond_1
    :goto_4
    const-string v10, "SegmentList"

    invoke-static {p1, v10}, Lcom/google/android/exoplayer2/util/w;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 588
    if-eqz p2, :cond_c

    .line 589
    if-eqz v9, :cond_9

    move-object v10, v9

    .line 590
    :goto_5
    if-eqz v1, :cond_a

    move-object v9, v1

    .line 591
    :goto_6
    if-eqz v0, :cond_b

    :goto_7
    move-object v1, v10

    move-object v10, v0

    :goto_8
    move-object v0, p0

    .line 594
    invoke-virtual/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lcom/google/android/exoplayer2/source/dash/manifest/e;JJIJLjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/h$b;

    move-result-object v0

    return-object v0

    .line 564
    :cond_2
    const-wide/16 v0, 0x1

    goto :goto_0

    .line 565
    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 567
    :cond_4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    .line 568
    :cond_5
    const/4 v0, 0x1

    goto :goto_3

    .line 578
    :cond_6
    const-string v10, "SegmentTimeline"

    invoke-static {p1, v10}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 579
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->h(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v1

    goto :goto_4

    .line 580
    :cond_7
    const-string v10, "SegmentURL"

    invoke-static {p1, v10}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 581
    if-nez v0, :cond_8

    .line 582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 584
    :cond_8
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->j(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/e;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 589
    :cond_9
    iget-object v10, p2, Lcom/google/android/exoplayer2/source/dash/manifest/h$b;->a:Lcom/google/android/exoplayer2/source/dash/manifest/e;

    goto :goto_5

    .line 590
    :cond_a
    iget-object v9, p2, Lcom/google/android/exoplayer2/source/dash/manifest/h$b;->f:Ljava/util/List;

    goto :goto_6

    .line 591
    :cond_b
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/dash/manifest/h$b;->g:Ljava/util/List;

    goto :goto_7

    :cond_c
    move-object v10, v0

    move-object v11, v1

    move-object v1, v9

    move-object v9, v11

    goto :goto_8
.end method

.method protected a(Lcom/google/android/exoplayer2/source/dash/manifest/e;JJIJLjava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/j;Lcom/google/android/exoplayer2/source/dash/manifest/j;)Lcom/google/android/exoplayer2/source/dash/manifest/h$c;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/e;",
            "JJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/h$d;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/j;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/j;",
            ")",
            "Lcom/google/android/exoplayer2/source/dash/manifest/h$c;"
        }
    .end annotation

    .prologue
    .line 642
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/h$c;

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/source/dash/manifest/h$c;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/e;JJIJLjava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/j;Lcom/google/android/exoplayer2/source/dash/manifest/j;)V

    return-object v0
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/h$c;)Lcom/google/android/exoplayer2/source/dash/manifest/h$c;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 607
    const-string v2, "timescale"

    if-eqz p2, :cond_2

    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/dash/manifest/h$c;->b:J

    :goto_0
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    .line 608
    const-string v4, "presentationTimeOffset"

    if-eqz p2, :cond_3

    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/dash/manifest/h$c;->c:J

    :goto_1
    invoke-static {p1, v4, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 610
    const-string v6, "duration"

    if-eqz p2, :cond_4

    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/dash/manifest/h$c;->e:J

    :goto_2
    invoke-static {p1, v6, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    .line 611
    const-string v1, "startNumber"

    if-eqz p2, :cond_5

    iget v0, p2, Lcom/google/android/exoplayer2/source/dash/manifest/h$c;->d:I

    :goto_3
    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 612
    const-string v1, "media"

    if-eqz p2, :cond_6

    iget-object v0, p2, Lcom/google/android/exoplayer2/source/dash/manifest/h$c;->h:Lcom/google/android/exoplayer2/source/dash/manifest/j;

    :goto_4
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/j;)Lcom/google/android/exoplayer2/source/dash/manifest/j;

    move-result-object v11

    .line 614
    const-string v1, "initialization"

    if-eqz p2, :cond_7

    iget-object v0, p2, Lcom/google/android/exoplayer2/source/dash/manifest/h$c;->g:Lcom/google/android/exoplayer2/source/dash/manifest/j;

    :goto_5
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/j;)Lcom/google/android/exoplayer2/source/dash/manifest/j;

    move-result-object v10

    move-object v0, v9

    move-object v1, v9

    .line 621
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 622
    const-string v9, "Initialization"

    invoke-static {p1, v9}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 623
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->i(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/e;

    move-result-object v1

    .line 627
    :cond_1
    :goto_6
    const-string v9, "SegmentTemplate"

    invoke-static {p1, v9}, Lcom/google/android/exoplayer2/util/w;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 629
    if-eqz p2, :cond_b

    .line 630
    if-eqz v1, :cond_9

    .line 631
    :goto_7
    if-eqz v0, :cond_a

    :goto_8
    move-object v9, v0

    :goto_9
    move-object v0, p0

    .line 634
    invoke-virtual/range {v0 .. v11}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lcom/google/android/exoplayer2/source/dash/manifest/e;JJIJLjava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/j;Lcom/google/android/exoplayer2/source/dash/manifest/j;)Lcom/google/android/exoplayer2/source/dash/manifest/h$c;

    move-result-object v0

    return-object v0

    .line 607
    :cond_2
    const-wide/16 v0, 0x1

    goto :goto_0

    .line 608
    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 610
    :cond_4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    .line 611
    :cond_5
    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    move-object v0, v9

    .line 612
    goto :goto_4

    :cond_7
    move-object v0, v9

    .line 614
    goto :goto_5

    .line 624
    :cond_8
    const-string v9, "SegmentTimeline"

    invoke-static {p1, v9}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 625
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->h(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v0

    goto :goto_6

    .line 630
    :cond_9
    iget-object v1, p2, Lcom/google/android/exoplayer2/source/dash/manifest/h$c;->a:Lcom/google/android/exoplayer2/source/dash/manifest/e;

    goto :goto_7

    .line 631
    :cond_a
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/dash/manifest/h$c;->f:Ljava/util/List;

    goto :goto_8

    :cond_b
    move-object v9, v0

    goto :goto_9
.end method

.method protected a(JJ)Lcom/google/android/exoplayer2/source/dash/manifest/h$d;
    .locals 1

    .prologue
    .line 666
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/h$d;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/h$d;-><init>(JJ)V

    return-object v0
.end method

.method protected a(Lcom/google/android/exoplayer2/source/dash/manifest/e;JJJJ)Lcom/google/android/exoplayer2/source/dash/manifest/h$e;
    .locals 10

    .prologue
    .line 557
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/h$e;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/dash/manifest/h$e;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/e;JJJJ)V

    return-object v0
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/h$e;)Lcom/google/android/exoplayer2/source/dash/manifest/h$e;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    .line 530
    const-string v2, "timescale"

    if-eqz p2, :cond_1

    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/dash/manifest/h$e;->b:J

    :goto_0
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    .line 531
    const-string v4, "presentationTimeOffset"

    if-eqz p2, :cond_2

    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/dash/manifest/h$e;->c:J

    :goto_1
    invoke-static {p1, v4, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 534
    if-eqz p2, :cond_3

    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/dash/manifest/h$e;->d:J

    .line 535
    :goto_2
    if-eqz p2, :cond_0

    iget-wide v8, p2, Lcom/google/android/exoplayer2/source/dash/manifest/h$e;->e:J

    .line 536
    :cond_0
    const-string v11, "indexRange"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 537
    if-eqz v11, :cond_7

    .line 538
    const-string v0, "-"

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 539
    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 540
    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v8, v0

    add-long/2addr v8, v6

    move-wide v6, v0

    .line 543
    :goto_3
    if-eqz p2, :cond_4

    iget-object v0, p2, Lcom/google/android/exoplayer2/source/dash/manifest/h$e;->a:Lcom/google/android/exoplayer2/source/dash/manifest/e;

    .line 545
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 546
    const-string v1, "Initialization"

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 547
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->i(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/e;

    move-result-object v1

    .line 549
    :goto_5
    const-string v0, "SegmentBase"

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/w;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p0

    .line 551
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lcom/google/android/exoplayer2/source/dash/manifest/e;JJJJ)Lcom/google/android/exoplayer2/source/dash/manifest/h$e;

    move-result-object v0

    return-object v0

    :cond_1
    move-wide v0, v6

    .line 530
    goto :goto_0

    :cond_2
    move-wide v0, v8

    .line 531
    goto :goto_1

    :cond_3
    move-wide v0, v8

    .line 534
    goto :goto_2

    :cond_4
    move-object v0, v10

    .line 543
    goto :goto_4

    :cond_5
    move-object v0, v1

    goto :goto_4

    :cond_6
    move-object v1, v0

    goto :goto_5

    :cond_7
    move-wide v6, v0

    goto :goto_3
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/j;)Lcom/google/android/exoplayer2/source/dash/manifest/j;
    .locals 1

    .prologue
    .line 671
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    if-eqz v0, :cond_0

    .line 673
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/j;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/j;

    move-result-object p3

    .line 675
    :cond_0
    return-object p3
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/k;
    .locals 1

    .prologue
    .line 190
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/k;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/k;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    const-string v0, "schemeIdUri"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    const-string v1, "value"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/k;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 305
    const/4 v1, 0x0

    const-string v2, "contentType"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v0

    .line 306
    :cond_1
    const-string v2, "audio"

    .line 307
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "video"

    .line 308
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const-string v2, "text"

    .line 309
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0
.end method

.method public synthetic b(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/dash/manifest/b;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 338
    const-string v0, "schemeIdUri"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    const-string v1, "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move v0, v4

    move-object v1, v3

    move-object v2, v3

    .line 344
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 345
    if-nez v2, :cond_3

    const-string v6, "cenc:pssh"

    invoke-static {p1, v6}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 346
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-ne v6, v7, :cond_3

    .line 348
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 349
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/c/h;->a([B)Ljava/util/UUID;

    move-result-object v1

    .line 350
    if-nez v1, :cond_1

    .line 351
    const-string v2, "MpdParser"

    const-string v6, "Skipping malformed cenc:pssh data"

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 364
    :cond_1
    :goto_0
    const-string v6, "ContentProtection"

    invoke-static {p1, v6}, Lcom/google/android/exoplayer2/util/w;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 365
    if-eqz v2, :cond_2

    new-instance v3, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    const-string v4, "video/mp4"

    invoke-direct {v3, v1, v4, v2, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[BZ)V

    :cond_2
    return-object v3

    .line 354
    :cond_3
    if-nez v2, :cond_4

    if-eqz v5, :cond_4

    const-string v6, "mspr:pro"

    invoke-static {p1, v6}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 355
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-ne v6, v7, :cond_4

    .line 357
    sget-object v1, Lcom/google/android/exoplayer2/b;->e:Ljava/util/UUID;

    .line 358
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 357
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/extractor/c/h;->a(Ljava/util/UUID;[B)[B

    move-result-object v2

    .line 359
    sget-object v1, Lcom/google/android/exoplayer2/b;->e:Ljava/util/UUID;

    goto :goto_0

    .line 360
    :cond_4
    const-string v6, "widevine:license"

    invoke-static {p1, v6}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 361
    const-string v0, "robustness_level"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_5

    const-string v6, "HW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v4

    goto :goto_0
.end method

.method protected d(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    const-string v0, "InbandEventStream"

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/g;

    move-result-object v0

    return-object v0
.end method

.method protected e(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    const-string v0, "Accessibility"

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/g;

    move-result-object v0

    return-object v0
.end method

.method protected f(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 404
    const-string v0, "schemeIdUri"

    invoke-static {p1, v0, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    const-string v1, "value"

    invoke-static {p1, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 407
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 408
    const-string v2, "Role"

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/w;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    const-string v2, "urn:mpeg:dash:role:2011"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "main"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected g(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    return-void
.end method

.method protected h(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/h$d;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 648
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 649
    const-wide/16 v0, 0x0

    .line 651
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 652
    const-string v2, "S"

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/w;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 653
    const-string v2, "t"

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    .line 654
    const-string v2, "d"

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {p1, v2, v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    .line 655
    const-string v2, "r"

    invoke-static {p1, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v7, v2, 0x1

    move v2, v3

    .line 656
    :goto_0
    if-ge v2, v7, :cond_1

    .line 657
    invoke-virtual {p0, v0, v1, v8, v9}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(JJ)Lcom/google/android/exoplayer2/source/dash/manifest/h$d;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    add-long v4, v0, v8

    .line 656
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v4

    goto :goto_0

    .line 661
    :cond_1
    const-string v2, "SegmentTimeline"

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/w;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 662
    return-object v6
.end method

.method protected i(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/e;
    .locals 2

    .prologue
    .line 679
    const-string v0, "sourceURL"

    const-string v1, "range"

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/e;

    move-result-object v0

    return-object v0
.end method

.method protected j(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/e;
    .locals 2

    .prologue
    .line 683
    const-string v0, "media"

    const-string v1, "mediaRange"

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/e;

    move-result-object v0

    return-object v0
.end method

.method protected k(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 710
    const-string v1, "schemeIdUri"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 711
    const-string v2, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "value"

    .line 712
    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .line 714
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 715
    const-string v1, "AudioChannelConfiguration"

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/w;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 716
    return v0
.end method

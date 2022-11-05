.class Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$c;
.super Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;
.source "SsManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/google/android/exoplayer2/Format;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 612
    const-string v0, "QualityLevel"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 658
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 659
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 660
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/v;->h(Ljava/lang/String;)[B

    move-result-object v1

    .line 661
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/c;->b([B)[[B

    move-result-object v2

    .line 662
    if-nez v2, :cond_1

    .line 663
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    :cond_0
    :goto_0
    return-object v0

    .line 665
    :cond_1
    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 672
    const-string v0, "H264"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X264"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AVC1"

    .line 673
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DAVC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 674
    :cond_0
    const-string v0, "video/avc"

    .line 693
    :goto_0
    return-object v0

    .line 675
    :cond_1
    const-string v0, "AAC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AACL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AACH"

    .line 676
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AACP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 677
    :cond_2
    const-string v0, "audio/mp4a-latm"

    goto :goto_0

    .line 678
    :cond_3
    const-string v0, "TTML"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 679
    const-string v0, "application/ttml+xml"

    goto :goto_0

    .line 680
    :cond_4
    const-string v0, "ac-3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "dac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 681
    :cond_5
    const-string v0, "audio/ac3"

    goto :goto_0

    .line 682
    :cond_6
    const-string v0, "ec-3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "dec3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 683
    :cond_7
    const-string v0, "audio/eac3"

    goto :goto_0

    .line 684
    :cond_8
    const-string v0, "dtsc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 685
    const-string v0, "audio/vnd.dts"

    goto :goto_0

    .line 686
    :cond_9
    const-string v0, "dtsh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "dtsl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 687
    :cond_a
    const-string v0, "audio/vnd.dts.hd"

    goto :goto_0

    .line 688
    :cond_b
    const-string v0, "dtse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 689
    const-string v0, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_0

    .line 690
    :cond_c
    const-string v0, "opus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 691
    const-string v0, "audio/opus"

    goto/16 :goto_0

    .line 693
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$c;->a:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method public b(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 617
    const-string v0, "Type"

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 618
    const/4 v0, 0x0

    const-string v2, "Index"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 619
    const-string v2, "Bitrate"

    invoke-virtual {p0, p1, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v4

    .line 620
    const-string v2, "FourCC"

    invoke-virtual {p0, p1, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 622
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 623
    const-string v1, "MaxWidth"

    invoke-virtual {p0, p1, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    .line 624
    const-string v1, "MaxHeight"

    invoke-virtual {p0, p1, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 625
    const/4 v1, 0x0

    const-string v3, "CodecPrivateData"

    .line 626
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 625
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$c;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 627
    const-string v1, "video/mp4"

    const/4 v3, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$c;->a:Lcom/google/android/exoplayer2/Format;

    .line 650
    :goto_0
    return-void

    .line 629
    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 630
    if-nez v2, :cond_1

    const-string v2, "audio/mp4a-latm"

    .line 631
    :cond_1
    const-string v1, "Channels"

    invoke-virtual {p0, p1, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    .line 632
    const-string v1, "SamplingRate"

    invoke-virtual {p0, p1, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 633
    const/4 v1, 0x0

    const-string v3, "CodecPrivateData"

    .line 634
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 633
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$c;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 635
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "audio/mp4a-latm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 637
    invoke-static {v6, v5}, Lcom/google/android/exoplayer2/util/c;->a(II)[B

    move-result-object v1

    .line 636
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 639
    :cond_2
    const-string v1, "Language"

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 640
    const-string v1, "audio/mp4"

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$c;->a:Lcom/google/android/exoplayer2/Format;

    goto :goto_0

    .line 642
    :cond_3
    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 643
    const-string v1, "Language"

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 644
    const-string v1, "application/mp4"

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$c;->a:Lcom/google/android/exoplayer2/Format;

    goto :goto_0

    .line 647
    :cond_4
    const-string v1, "application/mp4"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/Format;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$c;->a:Lcom/google/android/exoplayer2/Format;

    goto :goto_0
.end method

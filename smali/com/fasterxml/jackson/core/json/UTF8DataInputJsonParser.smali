.class public Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;
.super Lcom/fasterxml/jackson/core/base/ParserBase;
.source "UTF8DataInputJsonParser.java"


# static fields
.field static final BYTE_LF:B = 0xat

.field protected static final _icLatin1:[I

.field private static final _icUTF8:[I


# instance fields
.field protected _inputData:Ljava/io/DataInput;

.field protected _nextByte:I

.field protected _objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

.field private _quad1:I

.field protected _quadBuffer:[I

.field protected final _symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

.field protected _tokenIncomplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeUtf8()[I

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_icUTF8:[I

    .line 45
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeLatin1()[I

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_icLatin1:[I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;ILjava/io/DataInput;Lcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;I)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/base/ParserBase;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;I)V

    .line 74
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    .line 113
    iput-object p4, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    .line 114
    iput-object p5, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .line 115
    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    .line 116
    iput p6, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    .line 117
    return-void
.end method

.method private final _checkMatchEnd(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2165
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeCharForError(I)I

    move-result v0

    int-to-char v0, v0

    .line 2166
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2167
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidToken(ILjava/lang/String;)V

    .line 2169
    :cond_0
    return-void
.end method

.method private final _decodeUtf8_2(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2514
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2515
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_0

    .line 2516
    and-int/lit16 v1, v0, 0xff

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2518
    :cond_0
    and-int/lit8 v1, p1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private final _decodeUtf8_3(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x80

    .line 2523
    and-int/lit8 v0, p1, 0xf

    .line 2524
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 2525
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v3, :cond_0

    .line 2526
    and-int/lit16 v2, v1, 0xff

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2528
    :cond_0
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2529
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 2530
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v3, :cond_1

    .line 2531
    and-int/lit16 v2, v1, 0xff

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2533
    :cond_1
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2534
    return v0
.end method

.method private final _decodeUtf8_4(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x80

    .line 2543
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2544
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_0

    .line 2545
    and-int/lit16 v1, v0, 0xff

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2547
    :cond_0
    and-int/lit8 v1, p1, 0x7

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 2548
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 2549
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v3, :cond_1

    .line 2550
    and-int/lit16 v2, v1, 0xff

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2552
    :cond_1
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2553
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 2554
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v3, :cond_2

    .line 2555
    and-int/lit16 v2, v1, 0xff

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2561
    :cond_2
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    const/high16 v1, 0x10000

    sub-int/2addr v0, v1

    return v0
.end method

.method private _finishAndReturnString()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1850
    const/4 v0, 0x0

    .line 1851
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v2

    .line 1852
    sget-object v3, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_icUTF8:[I

    .line 1853
    array-length v4, v2

    .line 1856
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    .line 1857
    aget v1, v3, v5

    if-eqz v1, :cond_1

    .line 1858
    const/16 v1, 0x22

    if-ne v5, v1, :cond_0

    .line 1859
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentAndReturn(I)Ljava/lang/String;

    move-result-object v0

    .line 1867
    :goto_1
    return-object v0

    .line 1861
    :cond_0
    invoke-direct {p0, v2, v0, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_finishString2([CII)V

    .line 1862
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1864
    :cond_1
    add-int/lit8 v1, v0, 0x1

    int-to-char v5, v5

    aput-char v5, v2, v0

    .line 1865
    if-lt v1, v4, :cond_2

    .line 1866
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    invoke-direct {p0, v2, v1, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_finishString2([CII)V

    .line 1867
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private final _finishString2([CII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1874
    sget-object v3, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_icUTF8:[I

    .line 1875
    array-length v0, p1

    .line 1880
    :goto_0
    aget v1, v3, p3

    if-nez v1, :cond_0

    .line 1881
    if-lt p2, v0, :cond_5

    .line 1882
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    .line 1884
    array-length v0, p1

    move v1, v2

    .line 1886
    :goto_1
    add-int/lit8 p2, v1, 0x1

    int-to-char v4, p3

    aput-char v4, p1, v1

    .line 1887
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p3

    goto :goto_0

    .line 1890
    :cond_0
    const/16 v1, 0x22

    if-ne p3, v1, :cond_1

    .line 1932
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1933
    return-void

    .line 1893
    :cond_1
    aget v1, v3, p3

    packed-switch v1, :pswitch_data_0

    .line 1916
    const/16 v1, 0x20

    if-ge p3, v1, :cond_3

    .line 1917
    const-string v1, "string value"

    invoke-virtual {p0, p3, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 1924
    :goto_2
    array-length v1, p1

    if-lt p2, v1, :cond_4

    .line 1925
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    .line 1927
    array-length v0, p1

    move v1, v2

    .line 1930
    :goto_3
    add-int/lit8 p2, v1, 0x1

    int-to-char v4, p3

    aput-char v4, p1, v1

    .line 1878
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p3

    goto :goto_0

    .line 1895
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeEscaped()C

    move-result p3

    goto :goto_2

    .line 1898
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeUtf8_2(I)I

    move-result p3

    goto :goto_2

    .line 1901
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeUtf8_3(I)I

    move-result p3

    goto :goto_2

    .line 1904
    :pswitch_3
    invoke-direct {p0, p3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeUtf8_4(I)I

    move-result v4

    .line 1906
    add-int/lit8 v1, p2, 0x1

    const v5, 0xd800

    shr-int/lit8 v6, v4, 0xa

    or-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, p1, p2

    .line 1907
    array-length v5, p1

    if-lt v1, v5, :cond_2

    .line 1908
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    .line 1910
    array-length v0, p1

    move v1, v2

    .line 1912
    :cond_2
    const v5, 0xdc00

    and-int/lit16 v4, v4, 0x3ff

    or-int p3, v5, v4

    move p2, v1

    .line 1914
    goto :goto_2

    .line 1920
    :cond_3
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidChar(I)V

    goto :goto_2

    :cond_4
    move v1, p2

    goto :goto_3

    :cond_5
    move v1, p2

    goto :goto_1

    .line 1893
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static _growArrayBy([II)[I
    .locals 1

    .prologue
    .line 2659
    if-nez p0, :cond_0

    .line 2660
    new-array v0, p1, [I

    .line 2662
    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    goto :goto_0
.end method

.method private final _handleLeadingZeroes()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x30

    .line 1064
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 1066
    if-lt v0, v2, :cond_0

    const/16 v1, 0x39

    if-le v0, v1, :cond_1

    .line 1077
    :cond_0
    return v0

    .line 1070
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1071
    const-string v1, "Leading zeroes not allowed"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 1074
    :cond_2
    :goto_0
    if-ne v0, v2, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    goto :goto_0
.end method

.method private final _nextAfterName()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4

    .prologue
    .line 715
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nameCopied:Z

    .line 716
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 717
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 720
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 721
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 725
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 722
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 723
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0
.end method

.method private final _nextTokenNotInObject(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 672
    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    .line 673
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 674
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 710
    :goto_0
    return-object v0

    .line 676
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 710
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_handleUnexpectedValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 678
    :sswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 679
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 681
    :sswitch_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 682
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 684
    :sswitch_2
    const-string v0, "true"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 685
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 687
    :sswitch_3
    const-string v0, "false"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 688
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 690
    :sswitch_4
    const-string v0, "null"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 691
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 693
    :sswitch_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parseNegNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 708
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsePosNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 676
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_5
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x5b -> :sswitch_0
        0x66 -> :sswitch_3
        0x6e -> :sswitch_4
        0x74 -> :sswitch_2
        0x7b -> :sswitch_1
    .end sparse-switch
.end method

.method private final _parseFloat([CIIZI)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x39

    const/16 v7, 0x30

    const/4 v1, 0x0

    .line 1083
    .line 1086
    const/16 v0, 0x2e

    if-ne p3, v0, :cond_e

    .line 1087
    add-int/lit8 v0, p2, 0x1

    int-to-char v2, p3

    aput-char v2, p1, p2

    move v2, v0

    move v0, v1

    .line 1091
    :goto_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v3}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    .line 1092
    if-lt v4, v7, :cond_0

    if-le v4, v8, :cond_6

    .line 1103
    :cond_0
    if-nez v0, :cond_1

    .line 1104
    const-string v3, "Decimal point not followed by a digit"

    invoke-virtual {p0, v4, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_1
    move v6, v0

    move v0, v2

    move-object v2, p1

    .line 1109
    :goto_1
    const/16 v3, 0x65

    if-eq v4, v3, :cond_2

    const/16 v3, 0x45

    if-ne v4, v3, :cond_c

    .line 1110
    :cond_2
    array-length v3, v2

    if-lt v0, v3, :cond_3

    .line 1111
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 1114
    :cond_3
    add-int/lit8 v3, v0, 0x1

    int-to-char v4, v4

    aput-char v4, v2, v0

    .line 1115
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    .line 1117
    const/16 v0, 0x2d

    if-eq v4, v0, :cond_4

    const/16 v0, 0x2b

    if-ne v4, v0, :cond_b

    .line 1118
    :cond_4
    array-length v0, v2

    if-lt v3, v0, :cond_a

    .line 1119
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v2

    move v0, v1

    .line 1122
    :goto_2
    add-int/lit8 v3, v0, 0x1

    int-to-char v4, v4

    aput-char v4, v2, v0

    .line 1123
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    move v0, v3

    move v3, v1

    .line 1125
    :goto_3
    if-gt v4, v8, :cond_7

    if-lt v4, v7, :cond_7

    .line 1126
    add-int/lit8 v3, v3, 0x1

    .line 1127
    array-length v5, v2

    if-lt v0, v5, :cond_5

    .line 1128
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 1131
    :cond_5
    add-int/lit8 v5, v0, 0x1

    int-to-char v4, v4

    aput-char v4, v2, v0

    .line 1132
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    move v0, v5

    goto :goto_3

    .line 1095
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 1096
    array-length v3, p1

    if-lt v2, v3, :cond_d

    .line 1097
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    move v3, v1

    .line 1100
    :goto_4
    add-int/lit8 v2, v3, 0x1

    int-to-char v4, v4

    aput-char v4, p1, v3

    goto :goto_0

    .line 1135
    :cond_7
    if-nez v3, :cond_8

    .line 1136
    const-string v1, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v4, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_8
    move v1, v3

    move v2, v0

    move v0, v4

    .line 1142
    :goto_5
    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    .line 1143
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inRoot()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1144
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_verifyRootSpace()V

    .line 1146
    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1149
    invoke-virtual {p0, p4, p5, v6, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->resetFloat(ZIII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_a
    move v0, v3

    goto :goto_2

    :cond_b
    move v0, v3

    move v3, v1

    goto :goto_3

    :cond_c
    move v2, v0

    move v0, v4

    goto :goto_5

    :cond_d
    move v3, v2

    goto :goto_4

    :cond_e
    move v6, v1

    move v4, p3

    move v0, p2

    move-object v2, p1

    goto/16 :goto_1
.end method

.method private final _parseLongName(III)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/16 v8, 0x22

    .line 1315
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    aput v2, v0, v1

    .line 1316
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    aput p2, v0, v5

    .line 1317
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    aput p3, v0, v9

    .line 1320
    sget-object v1, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_icLatin1:[I

    move v2, v6

    move v3, p1

    .line 1324
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    .line 1325
    aget v0, v1, v4

    if-eqz v0, :cond_1

    .line 1326
    if-ne v4, v8, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName([IIII)Ljava/lang/String;

    move-result-object v0

    .line 1356
    :goto_1
    return-object v0

    .line 1329
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseEscapedName([IIIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1332
    :cond_1
    shl-int/lit8 v0, v3, 0x8

    or-int v3, v0, v4

    .line 1333
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    .line 1334
    aget v0, v1, v4

    if-eqz v0, :cond_3

    .line 1335
    if-ne v4, v8, :cond_2

    .line 1336
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    invoke-direct {p0, v0, v2, v3, v9}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName([IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1338
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    move-object v0, p0

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseEscapedName([IIIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1341
    :cond_3
    shl-int/lit8 v0, v3, 0x8

    or-int v3, v0, v4

    .line 1342
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    .line 1343
    aget v0, v1, v4

    if-eqz v0, :cond_5

    .line 1344
    if-ne v4, v8, :cond_4

    .line 1345
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    invoke-direct {p0, v0, v2, v3, v6}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName([IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1347
    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    move-object v0, p0

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseEscapedName([IIIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1350
    :cond_5
    shl-int/lit8 v0, v3, 0x8

    or-int v3, v0, v4

    .line 1351
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    .line 1352
    aget v0, v1, v4

    if-eqz v0, :cond_7

    .line 1353
    if-ne v4, v8, :cond_6

    .line 1354
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    invoke-direct {p0, v0, v2, v3, v10}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName([IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1356
    :cond_6
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    move-object v0, p0

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseEscapedName([IIIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1360
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    array-length v0, v0

    if-lt v2, v0, :cond_8

    .line 1361
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1363
    :cond_8
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    add-int/lit8 v0, v2, 0x1

    aput v3, v7, v2

    move v2, v0

    move v3, v4

    .line 1365
    goto/16 :goto_0
.end method

.method private final _parseMediumName(I)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x22

    .line 1237
    sget-object v0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_icLatin1:[I

    .line 1240
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 1241
    aget v2, v0, v1

    if-eqz v2, :cond_1

    .line 1242
    if-ne v1, v4, :cond_0

    .line 1243
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    invoke-direct {p0, v0, p1, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName(III)Ljava/lang/String;

    move-result-object v0

    .line 1271
    :goto_0
    return-object v0

    .line 1245
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    invoke-direct {p0, v0, p1, v1, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseName(IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1247
    :cond_1
    shl-int/lit8 v2, p1, 0x8

    or-int/2addr v1, v2

    .line 1248
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 1249
    aget v3, v0, v2

    if-eqz v3, :cond_3

    .line 1250
    if-ne v2, v4, :cond_2

    .line 1251
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    invoke-direct {p0, v0, v1, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1253
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseName(IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1255
    :cond_3
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    .line 1256
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 1257
    aget v3, v0, v2

    if-eqz v3, :cond_5

    .line 1258
    if-ne v2, v4, :cond_4

    .line 1259
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    invoke-direct {p0, v0, v1, v6}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1261
    :cond_4
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseName(IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1263
    :cond_5
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    .line 1264
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 1265
    aget v0, v0, v2

    if-eqz v0, :cond_7

    .line 1266
    if-ne v2, v4, :cond_6

    .line 1267
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    invoke-direct {p0, v0, v1, v7}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1269
    :cond_6
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    invoke-direct {p0, v0, v1, v2, v7}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseName(IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1271
    :cond_7
    invoke-direct {p0, v2, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parseMediumName2(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final _parseMediumName2(II)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v2, 0x22

    .line 1276
    sget-object v0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_icLatin1:[I

    .line 1279
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    .line 1280
    aget v1, v0, v4

    if-eqz v1, :cond_1

    .line 1281
    if-ne v4, v2, :cond_0

    .line 1282
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    invoke-direct {p0, v0, p2, p1, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName(IIII)Ljava/lang/String;

    move-result-object v0

    .line 1310
    :goto_0
    return-object v0

    .line 1284
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    move-object v0, p0

    move v2, p2

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseName(IIIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1286
    :cond_1
    shl-int/lit8 v1, p1, 0x8

    or-int v3, v1, v4

    .line 1287
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    .line 1288
    aget v1, v0, v4

    if-eqz v1, :cond_3

    .line 1289
    if-ne v4, v2, :cond_2

    .line 1290
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    invoke-direct {p0, v0, p2, v3, v6}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName(IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1292
    :cond_2
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    move-object v0, p0

    move v2, p2

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseName(IIIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1294
    :cond_3
    shl-int/lit8 v1, v3, 0x8

    or-int v3, v1, v4

    .line 1295
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    .line 1296
    aget v1, v0, v4

    if-eqz v1, :cond_5

    .line 1297
    if-ne v4, v2, :cond_4

    .line 1298
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    invoke-direct {p0, v0, p2, v3, v7}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName(IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1300
    :cond_4
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    move-object v0, p0

    move v2, p2

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseName(IIIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1302
    :cond_5
    shl-int/lit8 v1, v3, 0x8

    or-int v3, v1, v4

    .line 1303
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    .line 1304
    aget v0, v0, v4

    if-eqz v0, :cond_7

    .line 1305
    if-ne v4, v2, :cond_6

    .line 1306
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    invoke-direct {p0, v0, p2, v3, v8}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName(IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1308
    :cond_6
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    move-object v0, p0

    move v2, p2

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseName(IIIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1310
    :cond_7
    invoke-direct {p0, v4, p2, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parseLongName(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private _reportInvalidOther(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportError(Ljava/lang/String;)V

    .line 2655
    return-void
.end method

.method private final _skipCComment()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2332
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeComment()[I

    move-result-object v1

    .line 2333
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2338
    :cond_0
    :goto_0
    aget v2, v1, v0

    .line 2339
    if-eqz v2, :cond_1

    .line 2340
    sparse-switch v2, :sswitch_data_0

    .line 2362
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidChar(I)V

    .line 2365
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    goto :goto_0

    .line 2342
    :sswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2343
    const/16 v2, 0x2f

    if-ne v0, v2, :cond_0

    .line 2344
    return-void

    .line 2349
    :sswitch_1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    goto :goto_1

    .line 2352
    :sswitch_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipUtf8_2()V

    goto :goto_1

    .line 2355
    :sswitch_3
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipUtf8_3()V

    goto :goto_1

    .line 2358
    :sswitch_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipUtf8_4()V

    goto :goto_1

    .line 2340
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0xa -> :sswitch_1
        0xd -> :sswitch_1
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method private final _skipColon()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x9

    const/16 v5, 0x2f

    const/16 v4, 0x23

    const/4 v3, 0x1

    const/16 v2, 0x20

    .line 2233
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    .line 2234
    if-gez v0, :cond_2

    .line 2235
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2240
    :goto_0
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_7

    .line 2241
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2242
    if-le v0, v2, :cond_3

    .line 2243
    if-eq v0, v5, :cond_0

    if-ne v0, v4, :cond_1

    .line 2244
    :cond_0
    invoke-direct {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipColon2(IZ)I

    move-result v0

    .line 2281
    :cond_1
    :goto_1
    return v0

    .line 2237
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    goto :goto_0

    .line 2248
    :cond_3
    if-eq v0, v2, :cond_4

    if-ne v0, v6, :cond_6

    .line 2249
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2250
    if-le v0, v2, :cond_6

    .line 2251
    if-eq v0, v5, :cond_5

    if-ne v0, v4, :cond_1

    .line 2252
    :cond_5
    invoke-direct {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipColon2(IZ)I

    move-result v0

    goto :goto_1

    .line 2257
    :cond_6
    invoke-direct {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipColon2(IZ)I

    move-result v0

    goto :goto_1

    .line 2259
    :cond_7
    if-eq v0, v2, :cond_8

    if-ne v0, v6, :cond_9

    .line 2260
    :cond_8
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2262
    :cond_9
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_f

    .line 2263
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2264
    if-le v0, v2, :cond_b

    .line 2265
    if-eq v0, v5, :cond_a

    if-ne v0, v4, :cond_1

    .line 2266
    :cond_a
    invoke-direct {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipColon2(IZ)I

    move-result v0

    goto :goto_1

    .line 2270
    :cond_b
    if-eq v0, v2, :cond_c

    if-ne v0, v6, :cond_e

    .line 2271
    :cond_c
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2272
    if-le v0, v2, :cond_e

    .line 2273
    if-eq v0, v5, :cond_d

    if-ne v0, v4, :cond_1

    .line 2274
    :cond_d
    invoke-direct {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipColon2(IZ)I

    move-result v0

    goto :goto_1

    .line 2279
    :cond_e
    invoke-direct {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipColon2(IZ)I

    move-result v0

    goto :goto_1

    .line 2281
    :cond_f
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipColon2(IZ)I

    move-result v0

    goto :goto_1
.end method

.method private final _skipColon2(IZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2287
    move v0, p2

    :goto_0
    const/16 v1, 0x20

    if-le p1, v1, :cond_5

    .line 2288
    const/16 v1, 0x2f

    if-ne p1, v1, :cond_1

    .line 2289
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipComment()V

    .line 2286
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p1

    goto :goto_0

    .line 2292
    :cond_1
    const/16 v1, 0x23

    if-ne p1, v1, :cond_2

    .line 2293
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipYAMLComment()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2297
    :cond_2
    if-eqz v0, :cond_3

    .line 2298
    return p1

    .line 2300
    :cond_3
    const/16 v0, 0x3a

    if-eq p1, v0, :cond_4

    .line 2301
    const-string v0, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2303
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 2307
    :cond_5
    const/16 v1, 0xd

    if-eq p1, v1, :cond_6

    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 2308
    :cond_6
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    goto :goto_1
.end method

.method private final _skipComment()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x2f

    .line 2316
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2317
    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2319
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2320
    if-ne v0, v1, :cond_1

    .line 2321
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipLine()V

    .line 2327
    :goto_0
    return-void

    .line 2322
    :cond_1
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_2

    .line 2323
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipCComment()V

    goto :goto_0

    .line 2325
    :cond_2
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private final _skipLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2385
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeComment()[I

    move-result-object v0

    .line 2387
    :cond_0
    :goto_0
    :sswitch_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 2388
    aget v2, v0, v1

    .line 2389
    if-eqz v2, :cond_0

    .line 2390
    sparse-switch v2, :sswitch_data_0

    .line 2407
    if-gez v2, :cond_0

    .line 2409
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidChar(I)V

    goto :goto_0

    .line 2393
    :sswitch_1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    .line 2394
    return-void

    .line 2398
    :sswitch_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipUtf8_2()V

    goto :goto_0

    .line 2401
    :sswitch_3
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipUtf8_3()V

    goto :goto_0

    .line 2404
    :sswitch_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipUtf8_4()V

    goto :goto_0

    .line 2390
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0xa -> :sswitch_1
        0xd -> :sswitch_1
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method private final _skipUtf8_2()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2566
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2567
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_0

    .line 2568
    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2570
    :cond_0
    return-void
.end method

.method private final _skipUtf8_3()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x80

    .line 2578
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2579
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v2, :cond_0

    .line 2580
    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2582
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2583
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v2, :cond_1

    .line 2584
    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2586
    :cond_1
    return-void
.end method

.method private final _skipUtf8_4()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x80

    .line 2590
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2591
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v2, :cond_0

    .line 2592
    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2594
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2595
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v2, :cond_1

    .line 2596
    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2598
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2599
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v2, :cond_2

    .line 2600
    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2602
    :cond_2
    return-void
.end method

.method private final _skipWS()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2179
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    .line 2180
    if-gez v0, :cond_2

    .line 2181
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2186
    :goto_0
    const/16 v1, 0x20

    if-le v0, v1, :cond_3

    .line 2187
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    .line 2188
    :cond_0
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipWSComment(I)I

    move-result v0

    .line 2190
    :cond_1
    return v0

    .line 2183
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    goto :goto_0

    .line 2194
    :cond_3
    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 2195
    :cond_4
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    .line 2198
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    goto :goto_0
.end method

.method private final _skipWSComment(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2205
    move v0, p1

    :goto_0
    const/16 v1, 0x20

    if-le v0, v1, :cond_3

    .line 2206
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    .line 2207
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipComment()V

    .line 2227
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    goto :goto_0

    .line 2208
    :cond_1
    const/16 v1, 0x23

    if-ne v0, v1, :cond_2

    .line 2209
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipYAMLComment()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2213
    :cond_2
    return v0

    .line 2218
    :cond_3
    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 2219
    :cond_4
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    goto :goto_1
.end method

.method private final _skipYAMLComment()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2371
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_YAML_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2372
    const/4 v0, 0x0

    .line 2375
    :goto_0
    return v0

    .line 2374
    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipLine()V

    .line 2375
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final _verifyRootSpace()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1162
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    .line 1163
    const/16 v1, 0x20

    if-gt v0, v1, :cond_2

    .line 1164
    const/4 v1, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    .line 1165
    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1166
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    .line 1171
    :cond_1
    :goto_0
    return-void

    .line 1170
    :cond_2
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportMissingRootWS(I)V

    goto :goto_0
.end method

.method private final addName([III)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1718
    shl-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, -0x4

    add-int v6, v0, p3

    .line 1727
    const/4 v0, 0x4

    if-ge p3, v0, :cond_7

    .line 1728
    add-int/lit8 v0, p2, -0x1

    aget v0, p1, v0

    .line 1730
    add-int/lit8 v1, p2, -0x1

    rsub-int/lit8 v2, p3, 0x4

    shl-int/lit8 v2, v2, 0x3

    shl-int v2, v0, v2

    aput v2, p1, v1

    .line 1736
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    .line 1737
    const/4 v5, 0x0

    .line 1739
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_b

    .line 1740
    shr-int/lit8 v2, v3, 0x2

    aget v2, p1, v2

    .line 1741
    and-int/lit8 v4, v3, 0x3

    .line 1742
    rsub-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x3

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    .line 1743
    add-int/lit8 v3, v3, 0x1

    .line 1745
    const/16 v4, 0x7f

    if-le v2, v4, :cond_d

    .line 1747
    and-int/lit16 v4, v2, 0xe0

    const/16 v7, 0xc0

    if-ne v4, v7, :cond_8

    .line 1748
    and-int/lit8 v4, v2, 0x1f

    .line 1749
    const/4 v2, 0x1

    move v10, v2

    move v2, v4

    move v4, v10

    .line 1760
    :goto_2
    add-int v7, v3, v4

    if-le v7, v6, :cond_0

    .line 1761
    const-string v7, " in field name"

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v7, v8}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidEOF(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 1765
    :cond_0
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 1766
    and-int/lit8 v8, v3, 0x3

    .line 1767
    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 1768
    add-int/lit8 v3, v3, 0x1

    .line 1770
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_1

    .line 1771
    invoke-direct {p0, v7}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 1773
    :cond_1
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    .line 1774
    const/4 v7, 0x1

    if-le v4, v7, :cond_4

    .line 1775
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 1776
    and-int/lit8 v8, v3, 0x3

    .line 1777
    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 1778
    add-int/lit8 v3, v3, 0x1

    .line 1780
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_2

    .line 1781
    invoke-direct {p0, v7}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 1783
    :cond_2
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    .line 1784
    const/4 v7, 0x2

    if-le v4, v7, :cond_4

    .line 1785
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 1786
    and-int/lit8 v8, v3, 0x3

    .line 1787
    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 1788
    add-int/lit8 v3, v3, 0x1

    .line 1789
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_3

    .line 1790
    and-int/lit16 v8, v7, 0xff

    invoke-direct {p0, v8}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 1792
    :cond_3
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    .line 1795
    :cond_4
    const/4 v7, 0x2

    if-le v4, v7, :cond_d

    .line 1796
    const/high16 v4, 0x10000

    sub-int/2addr v2, v4

    .line 1797
    array-length v4, v1

    if-lt v5, v4, :cond_5

    .line 1798
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v1

    .line 1800
    :cond_5
    add-int/lit8 v4, v5, 0x1

    const v7, 0xd800

    shr-int/lit8 v8, v2, 0xa

    add-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v1, v5

    .line 1801
    const v5, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v5

    move v10, v2

    move v2, v3

    move v3, v4

    move-object v4, v1

    move v1, v10

    .line 1804
    :goto_3
    array-length v5, v4

    if-lt v3, v5, :cond_6

    .line 1805
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v4

    .line 1807
    :cond_6
    add-int/lit8 v5, v3, 0x1

    int-to-char v1, v1

    aput-char v1, v4, v3

    move v3, v2

    move-object v1, v4

    .line 1808
    goto/16 :goto_1

    .line 1732
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1750
    :cond_8
    and-int/lit16 v4, v2, 0xf0

    const/16 v7, 0xe0

    if-ne v4, v7, :cond_9

    .line 1751
    and-int/lit8 v4, v2, 0xf

    .line 1752
    const/4 v2, 0x2

    move v10, v2

    move v2, v4

    move v4, v10

    goto/16 :goto_2

    .line 1753
    :cond_9
    and-int/lit16 v4, v2, 0xf8

    const/16 v7, 0xf0

    if-ne v4, v7, :cond_a

    .line 1754
    and-int/lit8 v4, v2, 0x7

    .line 1755
    const/4 v2, 0x3

    move v10, v2

    move v2, v4

    move v4, v10

    goto/16 :goto_2

    .line 1757
    :cond_a
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidInitial(I)V

    .line 1758
    const/4 v2, 0x1

    move v4, v2

    goto/16 :goto_2

    .line 1811
    :cond_b
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v5}, Ljava/lang/String;-><init>([CII)V

    .line 1813
    const/4 v1, 0x4

    if-ge p3, v1, :cond_c

    .line 1814
    add-int/lit8 v1, p2, -0x1

    aput v0, p1, v1

    .line 1816
    :cond_c
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {v0, v2, p1, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->addName(Ljava/lang/String;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    move-object v4, v1

    move v1, v2

    move v2, v3

    move v3, v5

    goto :goto_3
.end method

.method private final findName(II)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1653
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->pad(II)I

    move-result v1

    .line 1655
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName(I)Ljava/lang/String;

    move-result-object v0

    .line 1656
    if-eqz v0, :cond_0

    .line 1661
    :goto_0
    return-object v0

    .line 1660
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1661
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->addName([III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final findName(III)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1666
    invoke-static {p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->pad(II)I

    move-result v1

    .line 1668
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName(II)Ljava/lang/String;

    move-result-object v0

    .line 1669
    if-eqz v0, :cond_0

    .line 1675
    :goto_0
    return-object v0

    .line 1673
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    const/4 v2, 0x0

    aput p1, v0, v2

    .line 1674
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 1675
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->addName([III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final findName(IIII)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1680
    invoke-static {p3, p4}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->pad(II)I

    move-result v1

    .line 1681
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {v0, p1, p2, v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName(III)Ljava/lang/String;

    move-result-object v0

    .line 1682
    if-eqz v0, :cond_0

    .line 1689
    :goto_0
    return-object v0

    .line 1685
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1686
    const/4 v2, 0x0

    aput p1, v0, v2

    .line 1687
    const/4 v2, 0x1

    aput p2, v0, v2

    .line 1688
    const/4 v2, 0x2

    invoke-static {v1, p4}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->pad(II)I

    move-result v1

    aput v1, v0, v2

    .line 1689
    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p4}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->addName([III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final findName([IIII)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1694
    array-length v0, p1

    if-lt p2, v0, :cond_0

    .line 1695
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1697
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-static {p3, p4}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->pad(II)I

    move-result v0

    aput v0, p1, p2

    .line 1698
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName([II)Ljava/lang/String;

    move-result-object v0

    .line 1699
    if-nez v0, :cond_1

    .line 1700
    invoke-direct {p0, p1, v1, p4}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->addName([III)Ljava/lang/String;

    move-result-object v0

    .line 1702
    :cond_1
    return-object v0
.end method

.method private static final pad(II)I
    .locals 2

    .prologue
    .line 2795
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    :goto_0
    return p0

    :cond_0
    const/4 v0, -0x1

    shl-int/lit8 v1, p1, 0x3

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    goto :goto_0
.end method

.method private final parseName(III)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1369
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseEscapedName([IIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final parseName(IIII)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1374
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseEscapedName([IIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final parseName(IIIII)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1379
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1380
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseEscapedName([IIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected _closeInput()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    return-void
.end method

.method protected final _decodeBase64(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/16 v5, 0x22

    const/4 v4, -0x2

    .line 2678
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_getByteArrayBuilder()Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v2

    .line 2685
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 2686
    const/16 v0, 0x20

    if-le v1, v0, :cond_0

    .line 2687
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v0

    .line 2688
    if-gez v0, :cond_2

    .line 2689
    if-ne v1, v5, :cond_1

    .line 2690
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    .line 2743
    :goto_1
    return-object v0

    .line 2692
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v0

    .line 2693
    if-ltz v0, :cond_0

    .line 2700
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    .line 2701
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v1

    .line 2702
    if-gez v1, :cond_3

    .line 2703
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v3, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v1

    .line 2705
    :cond_3
    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v1, v0

    .line 2707
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    .line 2708
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v0

    .line 2711
    if-gez v0, :cond_7

    .line 2712
    if-eq v0, v4, :cond_5

    .line 2714
    if-ne v3, v5, :cond_4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2715
    shr-int/lit8 v0, v1, 0x4

    .line 2716
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 2717
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    goto :goto_1

    .line 2719
    :cond_4
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v3, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v0

    .line 2721
    :cond_5
    if-ne v0, v4, :cond_7

    .line 2722
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2723
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected padding character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v6, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->reportInvalidBase64Char(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 2727
    :cond_6
    shr-int/lit8 v0, v1, 0x4

    .line 2728
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    goto/16 :goto_0

    .line 2733
    :cond_7
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v0

    .line 2735
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    .line 2736
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v0

    .line 2737
    if-gez v0, :cond_a

    .line 2738
    if-eq v0, v4, :cond_9

    .line 2740
    if-ne v3, v5, :cond_8

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2741
    shr-int/lit8 v0, v1, 0x2

    .line 2742
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    .line 2743
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    goto/16 :goto_1

    .line 2745
    :cond_8
    invoke-virtual {p0, p1, v3, v6}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v0

    .line 2747
    :cond_9
    if-ne v0, v4, :cond_a

    .line 2754
    shr-int/lit8 v0, v1, 0x2

    .line 2755
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    goto/16 :goto_0

    .line 2760
    :cond_a
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    .line 2761
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendThreeBytes(I)V

    goto/16 :goto_0
.end method

.method protected _decodeCharForError(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/16 v6, 0x80

    const/4 v1, 0x1

    .line 2462
    and-int/lit16 v0, p1, 0xff

    .line 2463
    const/16 v3, 0x7f

    if-le v0, v3, :cond_3

    .line 2467
    and-int/lit16 v3, v0, 0xe0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_4

    .line 2468
    and-int/lit8 v0, v0, 0x1f

    move v3, v0

    move v0, v1

    .line 2482
    :goto_0
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v4}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    .line 2483
    and-int/lit16 v5, v4, 0xc0

    if-eq v5, v6, :cond_0

    .line 2484
    and-int/lit16 v5, v4, 0xff

    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2486
    :cond_0
    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v3, v4

    .line 2488
    if-le v0, v1, :cond_8

    .line 2489
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 2490
    and-int/lit16 v4, v1, 0xc0

    if-eq v4, v6, :cond_1

    .line 2491
    and-int/lit16 v4, v1, 0xff

    invoke-direct {p0, v4}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2493
    :cond_1
    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v3

    .line 2494
    if-le v0, v2, :cond_7

    .line 2495
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2496
    and-int/lit16 v2, v0, 0xc0

    if-eq v2, v6, :cond_2

    .line 2497
    and-int/lit16 v2, v0, 0xff

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2499
    :cond_2
    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 2503
    :cond_3
    :goto_1
    return v0

    .line 2470
    :cond_4
    and-int/lit16 v3, v0, 0xf0

    const/16 v4, 0xe0

    if-ne v3, v4, :cond_5

    .line 2471
    and-int/lit8 v0, v0, 0xf

    move v3, v0

    move v0, v2

    .line 2472
    goto :goto_0

    .line 2473
    :cond_5
    and-int/lit16 v3, v0, 0xf8

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_6

    .line 2475
    and-int/lit8 v3, v0, 0x7

    .line 2476
    const/4 v0, 0x3

    goto :goto_0

    .line 2478
    :cond_6
    and-int/lit16 v3, v0, 0xff

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidInitial(I)V

    move v3, v0

    move v0, v1

    .line 2479
    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    move v0, v3

    goto :goto_1
.end method

.method protected _decodeEscaped()C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2419
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 2421
    sparse-switch v1, :sswitch_data_0

    .line 2444
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeCharForError(I)I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_handleUnrecognizedCharacterEscape(C)C

    move-result v0

    .line 2457
    :goto_0
    return v0

    .line 2424
    :sswitch_0
    const/16 v0, 0x8

    goto :goto_0

    .line 2426
    :sswitch_1
    const/16 v0, 0x9

    goto :goto_0

    .line 2428
    :sswitch_2
    const/16 v0, 0xa

    goto :goto_0

    .line 2430
    :sswitch_3
    const/16 v0, 0xc

    goto :goto_0

    .line 2432
    :sswitch_4
    const/16 v0, 0xd

    goto :goto_0

    .line 2438
    :sswitch_5
    int-to-char v0, v1

    goto :goto_0

    :sswitch_6
    move v1, v0

    .line 2449
    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 2450
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 2451
    invoke-static {v2}, Lcom/fasterxml/jackson/core/io/CharTypes;->charToHex(I)I

    move-result v3

    .line 2452
    if-gez v3, :cond_0

    .line 2453
    const-string v4, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v2, v4}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2455
    :cond_0
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    .line 2449
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2457
    :cond_1
    int-to-char v0, v1

    goto :goto_0

    .line 2421
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_5
        0x2f -> :sswitch_5
        0x5c -> :sswitch_5
        0x62 -> :sswitch_0
        0x66 -> :sswitch_3
        0x6e -> :sswitch_2
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_6
    .end sparse-switch
.end method

.method protected _finishString()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1828
    const/4 v0, 0x0

    .line 1829
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v2

    .line 1830
    sget-object v3, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_icUTF8:[I

    .line 1831
    array-length v4, v2

    .line 1834
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    .line 1835
    aget v1, v3, v5

    if-eqz v1, :cond_1

    .line 1836
    const/16 v1, 0x22

    if-ne v5, v1, :cond_0

    .line 1837
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1846
    :goto_1
    return-void

    .line 1840
    :cond_0
    invoke-direct {p0, v2, v0, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_finishString2([CII)V

    goto :goto_1

    .line 1843
    :cond_1
    add-int/lit8 v1, v0, 0x1

    int-to-char v5, v5

    aput-char v5, v2, v0

    .line 1844
    if-lt v1, v4, :cond_2

    .line 1845
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    invoke-direct {p0, v2, v1, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_finishString2([CII)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected final _getText2(Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    if-nez p1, :cond_0

    .line 288
    const/4 v0, 0x0

    .line 300
    :goto_0
    return-object v0

    .line 290
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 300
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 292
    :pswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 298
    :pswitch_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected _handleApos()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2048
    .line 2051
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v0

    .line 2054
    sget-object v6, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_icUTF8:[I

    move v1, v2

    .line 2061
    :cond_0
    :goto_0
    array-length v3, v0

    .line 2062
    array-length v4, v0

    if-lt v1, v4, :cond_5

    .line 2063
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    .line 2065
    array-length v0, v1

    move v3, v0

    move v4, v2

    move-object v0, v1

    .line 2068
    :goto_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    .line 2069
    const/16 v1, 0x27

    if-ne v5, v1, :cond_1

    .line 2114
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2116
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 2072
    :cond_1
    aget v1, v6, v5

    if-eqz v1, :cond_4

    .line 2078
    aget v1, v6, v5

    packed-switch v1, :pswitch_data_0

    .line 2100
    const/16 v1, 0x20

    if-ge v5, v1, :cond_2

    .line 2101
    const-string v1, "string value"

    invoke-virtual {p0, v5, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 2104
    :cond_2
    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidChar(I)V

    move v3, v5

    .line 2107
    :goto_2
    array-length v1, v0

    if-lt v4, v1, :cond_3

    .line 2108
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    move v4, v2

    .line 2112
    :cond_3
    add-int/lit8 v1, v4, 0x1

    int-to-char v3, v3

    aput-char v3, v0, v4

    goto :goto_0

    .line 2075
    :cond_4
    add-int/lit8 v1, v4, 0x1

    int-to-char v5, v5

    aput-char v5, v0, v4

    .line 2076
    if-ge v1, v3, :cond_0

    :cond_5
    move v4, v1

    goto :goto_1

    .line 2080
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeEscaped()C

    move-result v1

    move v3, v1

    .line 2081
    goto :goto_2

    .line 2083
    :pswitch_1
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeUtf8_2(I)I

    move-result v1

    move v3, v1

    .line 2084
    goto :goto_2

    .line 2086
    :pswitch_2
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeUtf8_3(I)I

    move-result v1

    move v3, v1

    .line 2087
    goto :goto_2

    .line 2089
    :pswitch_3
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeUtf8_4(I)I

    move-result v3

    .line 2091
    add-int/lit8 v1, v4, 0x1

    const v5, 0xd800

    shr-int/lit8 v7, v3, 0xa

    or-int/2addr v5, v7

    int-to-char v5, v5

    aput-char v5, v0, v4

    .line 2092
    array-length v4, v0

    if-lt v1, v4, :cond_6

    .line 2093
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    move v1, v2

    .line 2096
    :cond_6
    const v4, 0xdc00

    and-int/lit16 v3, v3, 0x3ff

    or-int/2addr v3, v4

    move v4, v1

    .line 2098
    goto :goto_2

    .line 2078
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected _handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2126
    move v0, p1

    :goto_0
    const/16 v1, 0x49

    if-ne v0, v1, :cond_6

    .line 2127
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 2129
    const/16 v0, 0x4e

    if-ne v1, v0, :cond_1

    .line 2130
    if-eqz p2, :cond_0

    const-string v0, "-INF"

    .line 2136
    :goto_1
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 2137
    sget-object v2, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2138
    if-eqz p2, :cond_3

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_2
    invoke-virtual {p0, v0, v2, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 2143
    :goto_3
    return-object v0

    .line 2130
    :cond_0
    const-string v0, "+INF"

    goto :goto_1

    .line 2131
    :cond_1
    const/16 v0, 0x6e

    if-ne v1, v0, :cond_5

    .line 2132
    if-eqz p2, :cond_2

    const-string v0, "-Infinity"

    goto :goto_1

    :cond_2
    const-string v0, "+Infinity"

    goto :goto_1

    .line 2138
    :cond_3
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_2

    .line 2140
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-standard token \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportError(Ljava/lang/String;)V

    move v0, v1

    .line 2141
    goto :goto_0

    :cond_5
    move v0, v1

    .line 2142
    :cond_6
    const-string v1, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 2143
    const/4 v0, 0x0

    goto :goto_3
.end method

.method protected _handleOddName(I)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1486
    const/16 v1, 0x27

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1487
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parseAposName()Ljava/lang/String;

    move-result-object v0

    .line 1542
    :goto_0
    return-object v0

    .line 1489
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1490
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeCharForError(I)I

    move-result v1

    int-to-char v1, v1

    .line 1491
    const-string v2, "was expecting double-quote to start field name"

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1497
    :cond_1
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeUtf8JsNames()[I

    move-result-object v6

    .line 1499
    aget v1, v6, p1

    if-eqz v1, :cond_2

    .line 1500
    const-string v1, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1507
    :cond_2
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    move v1, v0

    move v5, v0

    move v2, p1

    move-object v7, v3

    move v3, v0

    move-object v0, v7

    .line 1514
    :goto_1
    const/4 v4, 0x4

    if-ge v1, v4, :cond_5

    .line 1515
    add-int/lit8 v1, v1, 0x1

    .line 1516
    shl-int/lit8 v4, v5, 0x8

    or-int/2addr v2, v4

    move v7, v1

    move v1, v2

    move v2, v3

    move-object v3, v0

    move v0, v7

    .line 1525
    :goto_2
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v4}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p1

    .line 1526
    aget v4, v6, p1

    if-eqz v4, :cond_8

    .line 1531
    iput p1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    .line 1532
    if-lez v0, :cond_4

    .line 1533
    array-length v4, v3

    if-lt v2, v4, :cond_3

    .line 1534
    array-length v4, v3

    invoke-static {v3, v4}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_growArrayBy([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1536
    :cond_3
    add-int/lit8 v4, v2, 0x1

    aput v1, v3, v2

    move v2, v4

    .line 1538
    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {v1, v3, v2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName([II)Ljava/lang/String;

    move-result-object v1

    .line 1539
    if-nez v1, :cond_7

    .line 1540
    invoke-direct {p0, v3, v2, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->addName([III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1518
    :cond_5
    array-length v1, v0

    if-lt v3, v1, :cond_6

    .line 1519
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1521
    :cond_6
    add-int/lit8 v4, v3, 0x1

    aput v5, v0, v3

    .line 1523
    const/4 v1, 0x1

    move-object v3, v0

    move v0, v1

    move v1, v2

    move v2, v4

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_0

    :cond_8
    move v5, v1

    move v1, v0

    move-object v0, v3

    move v3, v2

    move v2, p1

    goto :goto_1
.end method

.method protected _handleUnexpectedValue(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1995
    sparse-switch p1, :sswitch_data_0

    .line 2038
    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(\'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidToken(ILjava/lang/String;Ljava/lang/String;)V

    .line 2042
    :cond_1
    const-string v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2043
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1997
    :sswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2005
    :sswitch_1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_MISSING_VALUES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2007
    iput p1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    .line 2008
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 2014
    :cond_2
    :sswitch_2
    const-string v0, "expected a value"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2016
    :sswitch_3
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2017
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_handleApos()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 2021
    :sswitch_4
    const-string v0, "NaN"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 2022
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2023
    const-string v0, "NaN"

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, v0, v2, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 2025
    :cond_3
    const-string v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportError(Ljava/lang/String;)V

    goto :goto_0

    .line 2028
    :sswitch_5
    const-string v0, "Infinity"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 2029
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2030
    const-string v0, "Infinity"

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual {p0, v0, v2, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 2032
    :cond_4
    const-string v0, "Non-standard token \'Infinity\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2035
    :sswitch_6
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1995
    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_3
        0x2b -> :sswitch_6
        0x2c -> :sswitch_1
        0x49 -> :sswitch_5
        0x4e -> :sswitch_4
        0x5d -> :sswitch_0
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method protected final _matchToken(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2148
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2150
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 2151
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_1

    .line 2152
    const/4 v2, 0x0

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidToken(ILjava/lang/String;)V

    .line 2154
    :cond_1
    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_0

    .line 2156
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2157
    const/16 v1, 0x30

    if-lt v0, v1, :cond_2

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_2

    .line 2158
    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_checkMatchEnd(Ljava/lang/String;II)V

    .line 2160
    :cond_2
    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    .line 2161
    return-void
.end method

.method protected _parseAposName()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x27

    const/4 v8, 0x4

    const/4 v1, 0x0

    .line 1553
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    .line 1554
    if-ne v5, v9, :cond_0

    .line 1555
    const-string v0, ""

    .line 1642
    :goto_0
    return-object v0

    .line 1557
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1564
    sget-object v7, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_icLatin1:[I

    move v3, v1

    move v4, v1

    move v2, v1

    .line 1567
    :goto_1
    if-ne v5, v9, :cond_2

    .line 1632
    if-lez v3, :cond_a

    .line 1633
    array-length v1, v0

    if-lt v2, v1, :cond_1

    .line 1634
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1636
    :cond_1
    add-int/lit8 v1, v2, 0x1

    invoke-static {v4, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->pad(II)I

    move-result v4

    aput v4, v0, v2

    move v10, v1

    move-object v1, v0

    move v0, v10

    .line 1638
    :goto_2
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {v2, v1, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName([II)Ljava/lang/String;

    move-result-object v2

    .line 1639
    if-nez v2, :cond_9

    .line 1640
    invoke-direct {p0, v1, v0, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->addName([III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1571
    :cond_2
    const/16 v6, 0x22

    if-eq v5, v6, :cond_d

    aget v6, v7, v5

    if-eqz v6, :cond_d

    .line 1572
    const/16 v6, 0x5c

    if-eq v5, v6, :cond_4

    .line 1575
    const-string v6, "name"

    invoke-virtual {p0, v5, v6}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 1584
    :goto_3
    const/16 v6, 0x7f

    if-le v5, v6, :cond_d

    .line 1586
    if-lt v3, v8, :cond_c

    .line 1587
    array-length v3, v0

    if-lt v2, v3, :cond_3

    .line 1588
    array-length v3, v0

    invoke-static {v0, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1590
    :cond_3
    add-int/lit8 v3, v2, 0x1

    aput v4, v0, v2

    move v2, v1

    move v4, v3

    move v3, v1

    .line 1594
    :goto_4
    const/16 v6, 0x800

    if-ge v5, v6, :cond_5

    .line 1595
    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v6, v5, 0x6

    or-int/lit16 v6, v6, 0xc0

    or-int/2addr v3, v6

    .line 1596
    add-int/lit8 v2, v2, 0x1

    move v10, v2

    move v2, v3

    move-object v3, v0

    move v0, v10

    .line 1614
    :goto_5
    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    move v6, v2

    move v2, v0

    move-object v0, v3

    move v3, v5

    .line 1618
    :goto_6
    if-ge v2, v8, :cond_7

    .line 1619
    add-int/lit8 v2, v2, 0x1

    .line 1620
    shl-int/lit8 v5, v6, 0x8

    or-int/2addr v3, v5

    move v10, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v10

    .line 1629
    :goto_7
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v5}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    move v10, v0

    move-object v0, v4

    move v4, v2

    move v2, v3

    move v3, v10

    goto :goto_1

    .line 1578
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeEscaped()C

    move-result v5

    goto :goto_3

    .line 1599
    :cond_5
    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v6, v5, 0xc

    or-int/lit16 v6, v6, 0xe0

    or-int/2addr v3, v6

    .line 1600
    add-int/lit8 v2, v2, 0x1

    .line 1602
    if-lt v2, v8, :cond_b

    .line 1603
    array-length v2, v0

    if-lt v4, v2, :cond_6

    .line 1604
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1606
    :cond_6
    add-int/lit8 v2, v4, 0x1

    aput v3, v0, v4

    move v3, v2

    move-object v4, v0

    move v0, v1

    move v2, v1

    .line 1610
    :goto_8
    shl-int/lit8 v2, v2, 0x8

    shr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    or-int/2addr v2, v6

    .line 1611
    add-int/lit8 v0, v0, 0x1

    move v10, v3

    move-object v3, v4

    move v4, v10

    goto :goto_5

    .line 1622
    :cond_7
    array-length v2, v0

    if-lt v4, v2, :cond_8

    .line 1623
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1625
    :cond_8
    add-int/lit8 v5, v4, 0x1

    aput v6, v0, v4

    .line 1627
    const/4 v2, 0x1

    move-object v4, v0

    move v0, v2

    move v2, v3

    move v3, v5

    goto :goto_7

    :cond_9
    move-object v0, v2

    goto/16 :goto_0

    :cond_a
    move-object v1, v0

    move v0, v2

    goto/16 :goto_2

    :cond_b
    move v10, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v10

    goto :goto_8

    :cond_c
    move v10, v3

    move v3, v4

    move v4, v2

    move v2, v10

    goto/16 :goto_4

    :cond_d
    move v6, v4

    move v4, v2

    move v2, v3

    move v3, v5

    goto :goto_6
.end method

.method protected final _parseName(I)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x22

    .line 1181
    if-eq p1, v4, :cond_0

    .line 1182
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_handleOddName(I)Ljava/lang/String;

    move-result-object v0

    .line 1232
    :goto_0
    return-object v0

    .line 1190
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_icLatin1:[I

    .line 1192
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 1194
    aget v2, v0, v1

    if-nez v2, :cond_9

    .line 1195
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 1196
    aget v3, v0, v2

    if-nez v3, :cond_7

    .line 1197
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    .line 1198
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 1199
    aget v3, v0, v2

    if-nez v3, :cond_5

    .line 1200
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    .line 1201
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 1202
    aget v3, v0, v2

    if-nez v3, :cond_3

    .line 1203
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    .line 1204
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 1205
    aget v0, v0, v2

    if-nez v0, :cond_1

    .line 1206
    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    .line 1207
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parseMediumName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1209
    :cond_1
    if-ne v2, v4, :cond_2

    .line 1210
    const/4 v0, 0x4

    invoke-direct {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1212
    :cond_2
    const/4 v0, 0x4

    invoke-direct {p0, v1, v2, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseName(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1214
    :cond_3
    if-ne v2, v4, :cond_4

    .line 1215
    invoke-direct {p0, v1, v7}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1217
    :cond_4
    invoke-direct {p0, v1, v2, v7}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseName(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1219
    :cond_5
    if-ne v2, v4, :cond_6

    .line 1220
    invoke-direct {p0, v1, v6}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1222
    :cond_6
    invoke-direct {p0, v1, v2, v6}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseName(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1224
    :cond_7
    if-ne v2, v4, :cond_8

    .line 1225
    invoke-direct {p0, v1, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1227
    :cond_8
    invoke-direct {p0, v1, v2, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseName(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1229
    :cond_9
    if-ne v1, v4, :cond_a

    .line 1230
    const-string v0, ""

    goto :goto_0

    .line 1232
    :cond_a
    invoke-direct {p0, v3, v1, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseName(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected _parseNegNumber()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    const/4 v4, 0x1

    .line 1012
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    .line 1013
    const/4 v0, 0x0

    .line 1016
    const/16 v2, 0x2d

    aput-char v2, v1, v0

    .line 1017
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 1018
    const/4 v2, 0x2

    int-to-char v3, v0

    aput-char v3, v1, v4

    .line 1020
    if-gt v0, v6, :cond_1

    .line 1022
    if-ne v0, v6, :cond_0

    .line 1023
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_handleLeadingZeroes()I

    move-result v0

    :goto_0
    move v5, v4

    move v3, v0

    .line 1037
    :goto_1
    if-gt v3, v7, :cond_3

    if-lt v3, v6, :cond_3

    .line 1038
    add-int/lit8 v5, v5, 0x1

    .line 1039
    add-int/lit8 v0, v2, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 1040
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    move v2, v0

    goto :goto_1

    .line 1025
    :cond_0
    invoke-virtual {p0, v0, v4}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 1052
    :goto_2
    return-object v0

    .line 1028
    :cond_1
    if-le v0, v7, :cond_2

    .line 1029
    invoke-virtual {p0, v0, v4}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    .line 1031
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    goto :goto_0

    .line 1042
    :cond_3
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_4

    const/16 v0, 0x65

    if-eq v3, v0, :cond_4

    const/16 v0, 0x45

    if-ne v3, v0, :cond_5

    :cond_4
    move-object v0, p0

    .line 1043
    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parseFloat([CIIZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    .line 1045
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1047
    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    .line 1048
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inRoot()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1049
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_verifyRootSpace()V

    .line 1052
    :cond_6
    invoke-virtual {p0, v4, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->resetInt(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2
.end method

.method protected _parsePosNumber(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x39

    const/4 v0, 0x1

    const/16 v6, 0x30

    const/4 v4, 0x0

    .line 970
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    .line 975
    if-ne p1, v6, :cond_1

    .line 976
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_handleLeadingZeroes()I

    move-result v2

    .line 977
    if-gt v2, v7, :cond_0

    if-lt v2, v6, :cond_0

    move v0, v4

    :goto_0
    move v5, v0

    move v3, v2

    move v2, v0

    .line 991
    :goto_1
    if-gt v3, v7, :cond_2

    if-lt v3, v6, :cond_2

    .line 992
    add-int/lit8 v5, v5, 0x1

    .line 993
    add-int/lit8 v0, v2, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 994
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    move v2, v0

    goto :goto_1

    .line 980
    :cond_0
    aput-char v6, v1, v4

    goto :goto_0

    .line 984
    :cond_1
    int-to-char v2, p1

    aput-char v2, v1, v4

    .line 985
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    goto :goto_0

    .line 996
    :cond_2
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_3

    const/16 v0, 0x65

    if-eq v3, v0, :cond_3

    const/16 v0, 0x45

    if-ne v3, v0, :cond_4

    :cond_3
    move-object v0, p0

    .line 997
    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parseFloat([CIIZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 1007
    :goto_2
    return-object v0

    .line 999
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1001
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inRoot()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1002
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_verifyRootSpace()V

    .line 1007
    :goto_3
    invoke-virtual {p0, v4, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->resetInt(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    .line 1004
    :cond_5
    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    goto :goto_3
.end method

.method protected _readBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;[B)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/16 v8, 0x22

    const/4 v7, -0x2

    const/4 v1, 0x0

    .line 438
    .line 439
    array-length v0, p3

    add-int/lit8 v5, v0, -0x3

    move v0, v1

    move v2, v1

    .line 446
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v3}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    .line 447
    const/16 v3, 0x20

    if-le v4, v3, :cond_0

    .line 448
    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v3

    .line 449
    if-gez v3, :cond_3

    .line 450
    if-ne v4, v8, :cond_2

    .line 538
    :goto_1
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 539
    if-lez v2, :cond_1

    .line 540
    add-int/2addr v0, v2

    .line 541
    invoke-virtual {p2, p3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 543
    :cond_1
    return v0

    .line 453
    :cond_2
    invoke-virtual {p0, p1, v4, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v3

    .line 454
    if-ltz v3, :cond_0

    :cond_3
    move v4, v3

    .line 460
    if-le v2, v5, :cond_c

    .line 461
    add-int/2addr v0, v2

    .line 462
    invoke-virtual {p2, p3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    move v3, v1

    .line 469
    :goto_2
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    .line 470
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v2

    .line 471
    if-gez v2, :cond_4

    .line 472
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v6, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v2

    .line 474
    :cond_4
    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v2

    .line 477
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    .line 478
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v2

    .line 481
    if-gez v2, :cond_8

    .line 482
    if-eq v2, v7, :cond_6

    .line 484
    if-ne v6, v8, :cond_5

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v2

    if-nez v2, :cond_5

    .line 485
    shr-int/lit8 v4, v4, 0x4

    .line 486
    add-int/lit8 v2, v3, 0x1

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    goto :goto_1

    .line 489
    :cond_5
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v6, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v2

    .line 491
    :cond_6
    if-ne v2, v7, :cond_8

    .line 493
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 494
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected padding character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v9, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->reportInvalidBase64Char(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 498
    :cond_7
    shr-int/lit8 v4, v4, 0x4

    .line 499
    add-int/lit8 v2, v3, 0x1

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    goto/16 :goto_0

    .line 504
    :cond_8
    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v2

    .line 506
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    .line 507
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v2

    .line 508
    if-gez v2, :cond_b

    .line 509
    if-eq v2, v7, :cond_a

    .line 511
    if-ne v6, v8, :cond_9

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v2

    if-nez v2, :cond_9

    .line 512
    shr-int/lit8 v4, v4, 0x2

    .line 513
    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v2, v4, 0x8

    int-to-byte v2, v2

    aput-byte v2, p3, v3

    .line 514
    add-int/lit8 v2, v5, 0x1

    int-to-byte v3, v4

    aput-byte v3, p3, v5

    goto/16 :goto_1

    .line 517
    :cond_9
    invoke-virtual {p0, p1, v6, v9}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v2

    .line 519
    :cond_a
    if-ne v2, v7, :cond_b

    .line 526
    shr-int/lit8 v4, v4, 0x2

    .line 527
    add-int/lit8 v6, v3, 0x1

    shr-int/lit8 v2, v4, 0x8

    int-to-byte v2, v2

    aput-byte v2, p3, v3

    .line 528
    add-int/lit8 v2, v6, 0x1

    int-to-byte v3, v4

    aput-byte v3, p3, v6

    goto/16 :goto_0

    .line 533
    :cond_b
    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v2

    .line 534
    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v6, v4, 0x10

    int-to-byte v6, v6

    aput-byte v6, p3, v3

    .line 535
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v2

    .line 536
    add-int/lit8 v2, v3, 0x1

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    goto/16 :goto_0

    :cond_c
    move v3, v2

    goto/16 :goto_2
.end method

.method protected _releaseBuffers()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-super {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_releaseBuffers()V

    .line 165
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->release()V

    .line 166
    return-void
.end method

.method protected _reportInvalidChar(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2639
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 2640
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_throwInvalidSpace(I)V

    .line 2642
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidInitial(I)V

    .line 2643
    return-void
.end method

.method protected _reportInvalidInitial(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportError(Ljava/lang/String;)V

    .line 2649
    return-void
.end method

.method protected _reportInvalidToken(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2612
    const-string v0, "\'null\', \'true\', \'false\' or NaN"

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidToken(ILjava/lang/String;Ljava/lang/String;)V

    .line 2613
    return-void
.end method

.method protected _reportInvalidToken(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2625
    :goto_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeCharForError(I)I

    move-result v1

    int-to-char v1, v1

    .line 2626
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': was expecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportError(Ljava/lang/String;)V

    .line 2633
    return-void

    .line 2629
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2630
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p1

    goto :goto_0
.end method

.method protected _skipString()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1942
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 1945
    sget-object v0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_icUTF8:[I

    .line 1953
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 1954
    aget v2, v0, v1

    if-eqz v2, :cond_0

    .line 1959
    const/16 v2, 0x22

    if-ne v1, v2, :cond_1

    .line 1985
    return-void

    .line 1963
    :cond_1
    aget v2, v0, v1

    packed-switch v2, :pswitch_data_0

    .line 1977
    const/16 v2, 0x20

    if-ge v1, v2, :cond_2

    .line 1978
    const-string v2, "string value"

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_0

    .line 1965
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeEscaped()C

    goto :goto_0

    .line 1968
    :pswitch_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipUtf8_2()V

    goto :goto_0

    .line 1971
    :pswitch_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipUtf8_3()V

    goto :goto_0

    .line 1974
    :pswitch_3
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipUtf8_4()V

    goto :goto_0

    .line 1981
    :cond_2
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidChar(I)V

    goto :goto_0

    .line 1963
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public finishToken()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 731
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 732
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_finishString()V

    .line 734
    :cond_0
    return-void
.end method

.method public getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_binaryValue:[B

    if-nez v0, :cond_1

    .line 391
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportError(Ljava/lang/String;)V

    .line 396
    :cond_1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_3

    .line 398
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeBase64(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_binaryValue:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 414
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_binaryValue:[B

    return-object v0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to decode VALUE_STRING as base64 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0

    .line 407
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_binaryValue:[B

    if-nez v0, :cond_2

    .line 409
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_getByteArrayBuilder()Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v0

    .line 410
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeBase64(Ljava/lang/String;Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;Lcom/fasterxml/jackson/core/Base64Variant;)V

    .line 411
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_binaryValue:[B

    goto :goto_0
.end method

.method public getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    return-object v0
.end method

.method public getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 8

    .prologue
    const-wide/16 v2, -0x1

    .line 2780
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v1

    .line 2781
    new-instance v0, Lcom/fasterxml/jackson/core/JsonLocation;

    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    const/4 v7, -0x1

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    return-object v0
.end method

.method public getInputSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    return-object v0
.end method

.method public getText(Ljava/io/Writer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 190
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 191
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_2

    .line 192
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_0

    .line 193
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 194
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_finishString()V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsToWriter(Ljava/io/Writer;)I

    move-result v0

    .line 211
    :cond_1
    :goto_0
    return v0

    .line 198
    :cond_2
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_3

    .line 199
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 203
    :cond_3
    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsToWriter(Ljava/io/Writer;)I

    move-result v0

    goto :goto_0

    .line 207
    :cond_4
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v0

    .line 208
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write([C)V

    .line 209
    array-length v0, v0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 178
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 180
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_finishAndReturnString()Ljava/lang/String;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_getText2(Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTextCharacters()[C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 307
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_4

    .line 308
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 335
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    .line 311
    :pswitch_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nameCopied:Z

    if-nez v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 314
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nameCopyBuffer:[C

    if-nez v2, :cond_2

    .line 315
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocNameCopyBuffer(I)[C

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nameCopyBuffer:[C

    .line 319
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nameCopyBuffer:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nameCopied:Z

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nameCopyBuffer:[C

    goto :goto_0

    .line 316
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nameCopyBuffer:[C

    array-length v2, v2

    if-ge v2, v1, :cond_0

    .line 317
    new-array v2, v1, [C

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nameCopyBuffer:[C

    goto :goto_1

    .line 325
    :pswitch_1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_3

    .line 326
    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 327
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_finishString()V

    .line 332
    :cond_3
    :pswitch_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextBuffer()[C

    move-result-object v0

    goto :goto_0

    .line 338
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getTextLength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 344
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_2

    .line 345
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_0

    .line 346
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 347
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_finishString()V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->size()I

    move-result v0

    .line 360
    :cond_1
    :goto_0
    return v0

    .line 351
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_3

    .line 352
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 354
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v1, :cond_1

    .line 355
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 356
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->size()I

    move-result v0

    goto :goto_0

    .line 358
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method public getTextOffset()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 367
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 383
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 372
    :pswitch_1
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_1

    .line 373
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 374
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_finishString()V

    .line 379
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextOffset()I

    move-result v0

    goto :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 8

    .prologue
    const-wide/16 v2, -0x1

    .line 2773
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v1

    .line 2774
    new-instance v0, Lcom/fasterxml/jackson/core/JsonLocation;

    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    const/4 v7, -0x1

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    return-object v0
.end method

.method public getValueAsInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 251
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    .line 253
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 254
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_numTypesValid:I

    if-nez v0, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parseIntValue()I

    move-result v0

    .line 263
    :goto_0
    return v0

    .line 257
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 258
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->convertNumberToInt()V

    .line 261
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_numberInt:I

    goto :goto_0

    .line 263
    :cond_3
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getValueAsInt(I)I

    move-result v0

    goto :goto_0
.end method

.method public getValueAsInt(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 270
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    .line 272
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 273
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_numTypesValid:I

    if-nez v0, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parseIntValue()I

    move-result v0

    .line 282
    :goto_0
    return v0

    .line 276
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 277
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->convertNumberToInt()V

    .line 280
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_numberInt:I

    goto :goto_0

    .line 282
    :cond_3
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/core/base/ParserBase;->getValueAsInt(I)I

    move-result v0

    goto :goto_0
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 219
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 221
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_finishAndReturnString()Ljava/lang/String;

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 226
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 228
    :cond_2
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 235
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 237
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_finishAndReturnString()Ljava/lang/String;

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 242
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_2
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/core/base/ParserBase;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public nextBooleanValue()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 918
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_4

    .line 919
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nameCopied:Z

    .line 920
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 921
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 922
    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 923
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_1

    .line 924
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 944
    :cond_0
    :goto_0
    return-object v0

    .line 926
    :cond_1
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_2

    .line 927
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 929
    :cond_2
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_3

    .line 930
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 931
    :cond_3
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_0

    .line 932
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 937
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 938
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_5

    .line 939
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 941
    :cond_5
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_0

    .line 942
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public nextFieldName()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x7d

    const/16 v3, 0x5d

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 750
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_numTypesValid:I

    .line 751
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_0

    .line 752
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextAfterName()Lcom/fasterxml/jackson/core/JsonToken;

    move-object v0, v1

    .line 841
    :goto_0
    return-object v0

    .line 755
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_1

    .line 756
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipString()V

    .line 758
    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipWS()I

    move-result v0

    .line 759
    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_binaryValue:[B

    .line 760
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    .line 762
    if-ne v0, v3, :cond_3

    .line 763
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inArray()Z

    move-result v2

    if-nez v2, :cond_2

    .line 764
    invoke-virtual {p0, v0, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportMismatchedEndMarker(IC)V

    .line 766
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->clearAndGetParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 767
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v0, v1

    .line 768
    goto :goto_0

    .line 770
    :cond_3
    if-ne v0, v5, :cond_5

    .line 771
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v2

    if-nez v2, :cond_4

    .line 772
    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportMismatchedEndMarker(IC)V

    .line 774
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->clearAndGetParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 775
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v0, v1

    .line 776
    goto :goto_0

    .line 780
    :cond_5
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->expectComma()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 781
    const/16 v2, 0x2c

    if-eq v0, v2, :cond_6

    .line 782
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "was expecting comma to separate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->typeDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " entries"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 784
    :cond_6
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipWS()I

    move-result v0

    .line 786
    :cond_7
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v2

    if-nez v2, :cond_8

    .line 787
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextTokenNotInObject(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-object v0, v1

    .line 788
    goto/16 :goto_0

    .line 791
    :cond_8
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parseName(I)Ljava/lang/String;

    move-result-object v1

    .line 792
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 793
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 795
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipColon()I

    move-result v0

    .line 796
    const/16 v2, 0x22

    if-ne v0, v2, :cond_9

    .line 797
    iput-boolean v4, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 798
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v0, v1

    .line 799
    goto/16 :goto_0

    .line 802
    :cond_9
    sparse-switch v0, :sswitch_data_0

    .line 838
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_handleUnexpectedValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 840
    :goto_1
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v0, v1

    .line 841
    goto/16 :goto_0

    .line 804
    :sswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parseNegNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 816
    :sswitch_1
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsePosNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 819
    :sswitch_2
    const-string v0, "false"

    invoke-virtual {p0, v0, v4}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 820
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 823
    :sswitch_3
    const-string v0, "null"

    invoke-virtual {p0, v0, v4}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 824
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 827
    :sswitch_4
    const-string v0, "true"

    invoke-virtual {p0, v0, v4}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 828
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 831
    :sswitch_5
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 834
    :sswitch_6
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 802
    nop

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_0
        0x30 -> :sswitch_1
        0x31 -> :sswitch_1
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
        0x34 -> :sswitch_1
        0x35 -> :sswitch_1
        0x36 -> :sswitch_1
        0x37 -> :sswitch_1
        0x38 -> :sswitch_1
        0x39 -> :sswitch_1
        0x5b -> :sswitch_5
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x74 -> :sswitch_4
        0x7b -> :sswitch_6
    .end sparse-switch
.end method

.method public nextIntValue(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 874
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    .line 875
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nameCopied:Z

    .line 876
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 877
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 878
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 879
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 880
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->getIntValue()I

    move-result p1

    .line 889
    :cond_0
    :goto_0
    return p1

    .line 882
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 883
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 884
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 885
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 889
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->getIntValue()I

    move-result p1

    goto :goto_0
.end method

.method public nextLongValue(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 896
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    .line 897
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nameCopied:Z

    .line 898
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 899
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 900
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 901
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 902
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->getLongValue()J

    move-result-wide p1

    .line 911
    :cond_0
    :goto_0
    return-wide p1

    .line 904
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 905
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 906
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 907
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 911
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->getLongValue()J

    move-result-wide p1

    goto :goto_0
.end method

.method public nextTextValue()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 848
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_4

    .line 849
    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nameCopied:Z

    .line 850
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 851
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 852
    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 853
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_2

    .line 854
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_1

    .line 855
    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 856
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_finishAndReturnString()Ljava/lang/String;

    move-result-object v0

    .line 867
    :cond_0
    :goto_0
    return-object v0

    .line 858
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 860
    :cond_2
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_3

    .line 861
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 862
    :cond_3
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_0

    .line 863
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 867
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x7d

    const/16 v2, 0x5d

    const/4 v3, 0x1

    .line 563
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 564
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextAfterName()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 667
    :goto_0
    return-object v0

    .line 568
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_numTypesValid:I

    .line 569
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_1

    .line 570
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipString()V

    .line 572
    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipWS()I

    move-result v0

    .line 574
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_binaryValue:[B

    .line 575
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    .line 578
    if-ne v0, v2, :cond_3

    .line 579
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inArray()Z

    move-result v1

    if-nez v1, :cond_2

    .line 580
    invoke-virtual {p0, v0, v4}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportMismatchedEndMarker(IC)V

    .line 582
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->clearAndGetParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 583
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 585
    :cond_3
    if-ne v0, v4, :cond_5

    .line 586
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v1

    if-nez v1, :cond_4

    .line 587
    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportMismatchedEndMarker(IC)V

    .line 589
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->clearAndGetParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 590
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 594
    :cond_5
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->expectComma()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 595
    const/16 v1, 0x2c

    if-eq v0, v1, :cond_6

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "was expecting comma to separate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->typeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 598
    :cond_6
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipWS()I

    move-result v0

    .line 605
    :cond_7
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v1

    if-nez v1, :cond_8

    .line 606
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextTokenNotInObject(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto/16 :goto_0

    .line 609
    :cond_8
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parseName(I)Ljava/lang/String;

    move-result-object v0

    .line 610
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 611
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 613
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipColon()I

    move-result v0

    .line 616
    const/16 v1, 0x22

    if-ne v0, v1, :cond_9

    .line 617
    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 618
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 619
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 623
    :cond_9
    sparse-switch v0, :sswitch_data_0

    .line 664
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_handleUnexpectedValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 666
    :goto_1
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 667
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 625
    :sswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parseNegNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 642
    :sswitch_1
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsePosNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 645
    :sswitch_2
    const-string v0, "false"

    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 646
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 649
    :sswitch_3
    const-string v0, "null"

    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 650
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 653
    :sswitch_4
    const-string v0, "true"

    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 654
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 657
    :sswitch_5
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 660
    :sswitch_6
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 623
    nop

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_0
        0x30 -> :sswitch_1
        0x31 -> :sswitch_1
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
        0x34 -> :sswitch_1
        0x35 -> :sswitch_1
        0x36 -> :sswitch_1
        0x37 -> :sswitch_1
        0x38 -> :sswitch_1
        0x39 -> :sswitch_1
        0x5b -> :sswitch_5
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x74 -> :sswitch_4
        0x7b -> :sswitch_6
    .end sparse-switch
.end method

.method protected final parseEscapedName([IIIII)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v1, 0x0

    .line 1397
    sget-object v5, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_icLatin1:[I

    .line 1400
    :goto_0
    aget v0, v5, p4

    if-eqz v0, :cond_c

    .line 1401
    const/16 v0, 0x22

    if-ne p4, v0, :cond_3

    .line 1465
    if-lez p5, :cond_1

    .line 1466
    array-length v0, p1

    if-lt p2, v0, :cond_0

    .line 1467
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1469
    :cond_0
    add-int/lit8 v0, p2, 0x1

    invoke-static {p3, p5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->pad(II)I

    move-result v1

    aput v1, p1, p2

    move p2, v0

    .line 1471
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName([II)Ljava/lang/String;

    move-result-object v0

    .line 1472
    if-nez v0, :cond_2

    .line 1473
    invoke-direct {p0, p1, p2, p5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->addName([III)Ljava/lang/String;

    move-result-object v0

    .line 1475
    :cond_2
    return-object v0

    .line 1405
    :cond_3
    const/16 v0, 0x5c

    if-eq p4, v0, :cond_5

    .line 1407
    const-string v0, "name"

    invoke-virtual {p0, p4, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 1417
    :goto_1
    const/16 v0, 0x7f

    if-le p4, v0, :cond_c

    .line 1419
    if-lt p5, v7, :cond_b

    .line 1420
    array-length v0, p1

    if-lt p2, v0, :cond_4

    .line 1421
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1423
    :cond_4
    add-int/lit8 v4, p2, 0x1

    aput p3, p1, p2

    move p5, v1

    move p3, v1

    move-object v0, p1

    .line 1427
    :goto_2
    const/16 v2, 0x800

    if-ge p4, v2, :cond_6

    .line 1428
    shl-int/lit8 v2, p3, 0x8

    shr-int/lit8 v3, p4, 0x6

    or-int/lit16 v3, v3, 0xc0

    or-int/2addr v3, v2

    .line 1429
    add-int/lit8 v2, p5, 0x1

    move v8, v2

    move v2, v3

    move-object v3, v0

    move v0, v8

    .line 1447
    :goto_3
    and-int/lit8 v6, p4, 0x3f

    or-int/lit16 p3, v6, 0x80

    move p5, v0

    move p2, v4

    move-object v0, v3

    move v3, v2

    .line 1451
    :goto_4
    if-ge p5, v7, :cond_8

    .line 1452
    add-int/lit8 p5, p5, 0x1

    .line 1453
    shl-int/lit8 v2, v3, 0x8

    or-int/2addr p3, v2

    move-object p1, v0

    .line 1462
    :goto_5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p4

    goto :goto_0

    .line 1410
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeEscaped()C

    move-result p4

    goto :goto_1

    .line 1432
    :cond_6
    shl-int/lit8 v2, p3, 0x8

    shr-int/lit8 v3, p4, 0xc

    or-int/lit16 v3, v3, 0xe0

    or-int/2addr v3, v2

    .line 1433
    add-int/lit8 v2, p5, 0x1

    .line 1435
    if-lt v2, v7, :cond_a

    .line 1436
    array-length v2, v0

    if-lt v4, v2, :cond_7

    .line 1437
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1439
    :cond_7
    add-int/lit8 v2, v4, 0x1

    aput v3, v0, v4

    move v3, v2

    move-object v4, v0

    move v0, v1

    move v2, v1

    .line 1443
    :goto_6
    shl-int/lit8 v2, v2, 0x8

    shr-int/lit8 v6, p4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    or-int/2addr v2, v6

    .line 1444
    add-int/lit8 v0, v0, 0x1

    move v8, v3

    move-object v3, v4

    move v4, v8

    goto :goto_3

    .line 1455
    :cond_8
    array-length v2, v0

    if-lt p2, v2, :cond_9

    .line 1456
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1458
    :cond_9
    add-int/lit8 v2, p2, 0x1

    aput v3, v0, p2

    .line 1460
    const/4 p5, 0x1

    move p2, v2

    move-object p1, v0

    goto :goto_5

    :cond_a
    move v8, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v8

    goto :goto_6

    :cond_b
    move v4, p2

    move-object v0, p1

    goto :goto_2

    :cond_c
    move v3, p3

    move-object v0, p1

    move p3, p4

    goto :goto_4
.end method

.method public readBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    .line 422
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object v0

    .line 423
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 424
    array-length v0, v0

    .line 431
    :goto_0
    return v0

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/IOContext;->allocBase64Buffer()[B

    move-result-object v1

    .line 429
    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_readBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 431
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V

    throw v0
.end method

.method public releaseBuffered(Ljava/io/OutputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public setCodec(Lcom/fasterxml/jackson/core/ObjectCodec;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    .line 127
    return-void
.end method

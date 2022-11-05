.class public final Lcom/openx/common/utils/helpers/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static DENSITY:F

.field private static mLogMessages:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mMraidErrMessages:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mRecognizedPrefixes:[Ljava/lang/String;

.field private static mStrings:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSysVersion:I

.field private static final mVideoContent:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    const/4 v0, -0x1

    sput v0, Lcom/openx/common/utils/helpers/Utils;->mSysVersion:I

    .line 42
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "tel:"

    aput-object v1, v0, v3

    const-string v1, "voicemail:"

    aput-object v1, v0, v4

    const-string v1, "sms:"

    aput-object v1, v0, v5

    const-string v1, "mailto:"

    aput-object v1, v0, v6

    const-string v1, "geo:"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "google.streetview:"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "market:"

    aput-object v2, v0, v1

    sput-object v0, Lcom/openx/common/utils/helpers/Utils;->mRecognizedPrefixes:[Ljava/lang/String;

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "3gp"

    aput-object v1, v0, v3

    const-string v1, "mp4"

    aput-object v1, v0, v4

    const-string v1, "ts"

    aput-object v1, v0, v5

    const-string v1, "webm"

    aput-object v1, v0, v6

    const-string v1, "mkv"

    aput-object v1, v0, v7

    sput-object v0, Lcom/openx/common/utils/helpers/Utils;->mVideoContent:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static atLeastFroyo()Z
    .locals 1

    .prologue
    .line 413
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->osAtLeast(I)Z

    move-result v0

    return v0
.end method

.method public static atLeastGingerbread()Z
    .locals 1

    .prologue
    .line 423
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->osAtLeast(I)Z

    move-result v0

    return v0
.end method

.method public static atLeastHoneycomb()Z
    .locals 1

    .prologue
    .line 433
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->osAtLeast(I)Z

    move-result v0

    return v0
.end method

.method public static atLeastICS()Z
    .locals 1

    .prologue
    .line 450
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->osAtLeast(I)Z

    move-result v0

    return v0
.end method

.method public static atLeastJellyBean()Z
    .locals 1

    .prologue
    .line 460
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->osAtLeast(I)Z

    move-result v0

    return v0
.end method

.method public static atLeastKitKat()Z
    .locals 2

    .prologue
    .line 401
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 403
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static atMostJB()Z
    .locals 2

    .prologue
    .line 438
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 440
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static avoidJSC_MOB273()Z
    .locals 2

    .prologue
    .line 519
    const-string v0, "generic"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 136
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 148
    :goto_0
    return-object v0

    .line 138
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 139
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 141
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 142
    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    .line 144
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 146
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static generateSHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->generateSHA1([B)[B

    move-result-object v0

    .line 119
    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->byteArrayToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    .line 121
    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 124
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static generateSHA1([B)[B
    .locals 2

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 93
    :try_start_0
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 95
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 96
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    .line 99
    :catch_0
    move-exception v1

    .line 101
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method public static getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4

    .prologue
    .line 193
    sget v0, Lcom/openx/common/utils/helpers/Utils;->DENSITY:F

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->stringFromDensity(F)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->resourcesPathForDensity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    const-string v1, "%1$s/%2$s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 196
    const-class v1, Lcom/openx/common/utils/helpers/Utils;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_0

    .line 200
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 201
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 204
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLogMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 370
    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->getLogMessagesMap()Ljava/util/Hashtable;

    move-result-object v0

    .line 371
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 375
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static getLogMessagesMap()Ljava/util/Hashtable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    sget-object v0, Lcom/openx/common/utils/helpers/Utils;->mLogMessages:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 328
    const-class v0, Lcom/openx/common/utils/helpers/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "%1$s/%2$s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "com/openx/ad/mobile/sdk/resources/raw"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "log_messages.csv"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 329
    new-instance v1, Lcom/openx/common/utils/helpers/CSVFileReader;

    const-string v2, ";"

    invoke-direct {v1, v0, v2}, Lcom/openx/common/utils/helpers/CSVFileReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v1}, Lcom/openx/common/utils/helpers/CSVFileReader;->read()Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/openx/common/utils/helpers/Utils;->mLogMessages:Ljava/util/Hashtable;

    .line 332
    :cond_0
    sget-object v0, Lcom/openx/common/utils/helpers/Utils;->mLogMessages:Ljava/util/Hashtable;

    return-object v0
.end method

.method public static getMRAIDErrMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 386
    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->getMraidErrMessagesMap()Ljava/util/Hashtable;

    move-result-object v0

    .line 387
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 391
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static getMraidErrMessagesMap()Ljava/util/Hashtable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    sget-object v0, Lcom/openx/common/utils/helpers/Utils;->mMraidErrMessages:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 339
    const-class v0, Lcom/openx/common/utils/helpers/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "%1$s/%2$s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "com/openx/ad/mobile/sdk/resources/raw"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "mraid_error_messages.csv"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 340
    new-instance v1, Lcom/openx/common/utils/helpers/CSVFileReader;

    const-string v2, ";"

    invoke-direct {v1, v0, v2}, Lcom/openx/common/utils/helpers/CSVFileReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v1}, Lcom/openx/common/utils/helpers/CSVFileReader;->read()Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/openx/common/utils/helpers/Utils;->mMraidErrMessages:Ljava/util/Hashtable;

    .line 343
    :cond_0
    sget-object v0, Lcom/openx/common/utils/helpers/Utils;->mMraidErrMessages:Ljava/util/Hashtable;

    return-object v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 268
    const-class v0, Lcom/openx/common/utils/helpers/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "%1$s/%2$s.xml"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "com/openx/ad/mobile/sdk/resources/raw"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "assembly"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 273
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 274
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 277
    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 280
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_2

    .line 283
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 284
    const-string v2, "android:versionName"

    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 285
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 294
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 354
    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->getStringsMap()Ljava/util/Hashtable;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 359
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static getStringsMap()Ljava/util/Hashtable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    sget-object v0, Lcom/openx/common/utils/helpers/Utils;->mStrings:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 317
    const-class v0, Lcom/openx/common/utils/helpers/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "%1$s/%2$s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "com/openx/ad/mobile/sdk/resources/raw"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "strings.csv"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 318
    new-instance v1, Lcom/openx/common/utils/helpers/CSVFileReader;

    const-string v2, ";"

    invoke-direct {v1, v0, v2}, Lcom/openx/common/utils/helpers/CSVFileReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v1}, Lcom/openx/common/utils/helpers/CSVFileReader;->read()Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/openx/common/utils/helpers/Utils;->mStrings:Ljava/util/Hashtable;

    .line 321
    :cond_0
    sget-object v0, Lcom/openx/common/utils/helpers/Utils;->mStrings:Ljava/util/Hashtable;

    return-object v0
.end method

.method public static isExternalStorageAvailable()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 472
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 474
    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    move v3, v0

    .line 492
    :goto_0
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    :goto_1
    return v0

    .line 479
    :cond_0
    const-string v3, "mounted_ro"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    move v3, v0

    .line 483
    goto :goto_0

    :cond_1
    move v2, v1

    move v3, v1

    .line 489
    goto :goto_0

    :cond_2
    move v0, v1

    .line 492
    goto :goto_1
.end method

.method public static isRecognizedUrl(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 50
    :goto_0
    sget-object v2, Lcom/openx/common/utils/helpers/Utils;->mRecognizedPrefixes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 52
    sget-object v2, Lcom/openx/common/utils/helpers/Utils;->mRecognizedPrefixes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    const/4 v1, 0x1

    .line 59
    :cond_0
    return v1

    .line 50
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isVideoContent(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 69
    :goto_0
    sget-object v3, Lcom/openx/common/utils/helpers/Utils;->mVideoContent:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 71
    sget-object v3, Lcom/openx/common/utils/helpers/Utils;->mVideoContent:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    const/4 v1, 0x1

    .line 79
    :cond_0
    return v1

    .line 69
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static loadStringFromFile(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 241
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 243
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v2, v0, [B

    .line 244
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    .line 245
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 246
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    return-object v0

    .line 248
    :catch_0
    move-exception v0

    .line 251
    const-string v0, "EMPTY"

    goto :goto_0
.end method

.method public static log(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 305
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getEventsManager()Lcom/openx/sdk/event/OXMEventsListener;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_0

    .line 308
    new-instance v1, Lcom/openx/sdk/event/OXMEvent;

    sget-object v2, Lcom/openx/sdk/event/OXMEvent$OXMEventType;->LOG:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    invoke-direct {v1, v2, p0, p1}, Lcom/openx/sdk/event/OXMEvent;-><init>(Lcom/openx/sdk/event/OXMEvent$OXMEventType;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 309
    invoke-interface {v0, v1}, Lcom/openx/sdk/event/OXMEventsListener;->fireEvent(Lcom/openx/sdk/event/OXMEvent;)V

    .line 311
    :cond_0
    return-void
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 163
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 165
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 167
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 168
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 170
    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-byte v6, v1, v0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 179
    :goto_1
    return-object v0

    .line 175
    :catch_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 179
    const-string v0, ""

    goto :goto_1
.end method

.method private static osAtLeast(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 497
    sget v1, Lcom/openx/common/utils/helpers/Utils;->mSysVersion:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 501
    :try_start_0
    const-class v1, Landroid/os/Build$VERSION;

    const-string v2, "SDK_INT"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 502
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/openx/common/utils/helpers/Utils;->mSysVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :cond_0
    :goto_0
    sget v1, Lcom/openx/common/utils/helpers/Utils;->mSysVersion:I

    if-lt v1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 504
    :catch_0
    move-exception v1

    .line 507
    sput v0, Lcom/openx/common/utils/helpers/Utils;->mSysVersion:I

    goto :goto_0
.end method

.method private static resourcesPathForDensity(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 222
    const-string v0, "%1$s/%2$s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "com/openx/ad/mobile/sdk/resources/drawable"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    if-nez p0, :cond_0

    const-string p0, "mdpi"

    :cond_0
    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 223
    return-object v0
.end method

.method private static stringFromDensity(F)Ljava/lang/String;
    .locals 4

    .prologue
    .line 209
    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 211
    const-string v0, "hdpi"

    .line 217
    :goto_0
    return-object v0

    .line 213
    :cond_0
    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 215
    const-string v0, "xhdpi"

    goto :goto_0

    .line 217
    :cond_1
    const-string v0, "mdpi"

    goto :goto_0
.end method

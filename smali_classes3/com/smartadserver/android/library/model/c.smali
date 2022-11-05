.class public Lcom/smartadserver/android/library/model/c;
.super Ljava/lang/Object;
.source "SASVASTElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartadserver/android/library/model/c$a;,
        Lcom/smartadserver/android/library/model/c$b;,
        Lcom/smartadserver/android/library/model/c$c;
    }
.end annotation


# static fields
.field private static a:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private static b:Ljavax/xml/parsers/DocumentBuilder;

.field private static c:Z


# instance fields
.field private d:Lcom/smartadserver/android/library/model/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/smartadserver/android/library/model/c;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    return-void
.end method

.method public static a(Ljava/lang/String;ZJ)Lcom/smartadserver/android/library/model/c;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartadserver/android/library/exception/SASVASTParsingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 346
    .line 348
    :try_start_0
    sget-boolean v0, Lcom/smartadserver/android/library/model/c;->c:Z

    if-nez v0, :cond_0

    .line 349
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/model/c;->a:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 350
    sget-object v0, Lcom/smartadserver/android/library/model/c;->a:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/model/c;->b:Ljavax/xml/parsers/DocumentBuilder;

    .line 351
    const/4 v0, 0x1

    sput-boolean v0, Lcom/smartadserver/android/library/model/c;->c:Z

    .line 355
    :cond_0
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, p2, v4

    .line 358
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    move-object v0, v1

    .line 385
    :goto_0
    return-object v0

    .line 363
    :cond_1
    new-instance v0, Lcom/smartadserver/android/library/model/c;

    invoke-direct {v0}, Lcom/smartadserver/android/library/model/c;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 368
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 369
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 370
    long-to-double v6, v4

    mul-double/2addr v6, v2

    div-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v1, v6}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 371
    long-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v8

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 372
    sget-object v2, Lcom/smartadserver/android/library/model/c;->b:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 380
    :goto_1
    :try_start_2
    invoke-static {v1, v0, p1, p2, p3}, Lcom/smartadserver/android/library/model/c;->a(Lorg/w3c/dom/Document;Lcom/smartadserver/android/library/model/c;ZJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v1

    .line 383
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing VAST file at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed with error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/smartadserver/android/library/model/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 373
    :catch_1
    move-exception v1

    .line 375
    :try_start_3
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 376
    sget-object v2, Lcom/smartadserver/android/library/model/c;->b:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v2, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    goto :goto_1

    .line 382
    :catch_2
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartadserver/android/library/exception/SASVASTParsingException;
        }
    .end annotation

    .prologue
    .line 403
    new-instance v0, Lcom/smartadserver/android/library/exception/SASVASTParsingException;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/smartadserver/android/library/exception/SASVASTParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartadserver/android/library/exception/SASVASTParsingException;
        }
    .end annotation

    .prologue
    .line 394
    new-instance v0, Lcom/smartadserver/android/library/exception/SASVASTParsingException;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/exception/SASVASTParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 775
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 777
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 778
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 780
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 781
    if-nez v2, :cond_0

    .line 782
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 784
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 788
    :cond_1
    return-void
.end method

.method private static a(Lorg/w3c/dom/Document;Lcom/smartadserver/android/library/model/c;ZJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartadserver/android/library/exception/SASVASTParsingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 416
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 417
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VAST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 418
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VAST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 419
    const-string v2, "VAST file does not contain VAST tag"

    invoke-static {v2}, Lcom/smartadserver/android/library/model/c;->a(Ljava/lang/String;)V

    .line 422
    :cond_0
    const-string v2, "version"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    const-string v2, "2.0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "3.0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect VAST version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/model/c;->a(Ljava/lang/String;)V

    .line 428
    :cond_1
    const-string v0, "Ad"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 429
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 430
    if-nez v4, :cond_2

    .line 431
    const-string v0, "VAST does not contain any Ad"

    invoke-static {v0}, Lcom/smartadserver/android/library/model/c;->a(Ljava/lang/String;)V

    :cond_2
    move v2, v1

    move v0, v1

    .line 438
    :goto_0
    if-ge v2, v4, :cond_5

    .line 439
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 442
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    const-string v6, "sequence"

    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 443
    if-eqz v5, :cond_4

    .line 444
    if-eqz v0, :cond_3

    .line 445
    const-string v0, "Ad pods are not supported (multiple Ad elements with sequence id attribute)"

    invoke-static {v0}, Lcom/smartadserver/android/library/model/c;->a(Ljava/lang/String;)V

    .line 447
    :cond_3
    const/4 v0, 0x1

    .line 438
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    if-eqz p2, :cond_7

    add-int/lit8 v2, v4, -0x1

    if-ge v1, v2, :cond_7

    .line 452
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    :cond_5
    if-ge v1, v4, :cond_6

    .line 453
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 456
    new-instance v2, Lcom/smartadserver/android/library/model/c$a;

    invoke-direct {v2}, Lcom/smartadserver/android/library/model/c$a;-><init>()V

    .line 460
    :try_start_0
    invoke-static {v0, v2, p3, p4}, Lcom/smartadserver/android/library/model/c;->a(Lorg/w3c/dom/Node;Lcom/smartadserver/android/library/model/c$a;J)V

    .line 461
    iput-object v2, p1, Lcom/smartadserver/android/library/model/c;->d:Lcom/smartadserver/android/library/model/c$a;
    :try_end_0
    .catch Lcom/smartadserver/android/library/exception/SASVASTParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :cond_6
    return-void

    .line 469
    :cond_7
    throw v0
.end method

.method private static a(Lorg/w3c/dom/Node;Lcom/smartadserver/android/library/model/c$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartadserver/android/library/exception/SASVASTParsingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 505
    :try_start_0
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v2

    .line 508
    const-string v0, ".//Impression"

    invoke-interface {v2, v0}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    .line 509
    sget-object v3, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, p0, v3}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 510
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 513
    new-array v4, v3, [Ljava/lang/String;

    .line 514
    :goto_0
    if-ge v1, v3, :cond_0

    .line 515
    iget-object v4, p1, Lcom/smartadserver/android/library/model/c$a;->c:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    :cond_0
    const-string v0, ".//Linear"

    invoke-interface {v2, v0}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    .line 520
    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, p0, v1}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 521
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 523
    if-nez v1, :cond_1

    .line 524
    const-string v1, "No Linear found in VAST inline element"

    invoke-static {v1}, Lcom/smartadserver/android/library/model/c;->a(Ljava/lang/String;)V

    .line 527
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 529
    invoke-static {v0, p1}, Lcom/smartadserver/android/library/model/c;->b(Lorg/w3c/dom/Node;Lcom/smartadserver/android/library/model/c$a;)V

    .line 531
    iget-object v0, p1, Lcom/smartadserver/android/library/model/c$a;->a:[Lcom/smartadserver/android/library/model/c$c;

    array-length v0, v0

    if-nez v0, :cond_2

    .line 532
    const-string v0, "No valid media file found in VAST file"

    invoke-static {v0}, Lcom/smartadserver/android/library/model/c;->a(Ljava/lang/String;)V

    .line 536
    :cond_2
    const-string v0, ".//Companion"

    invoke-interface {v2, v0}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    .line 537
    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, p0, v1}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 538
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 540
    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 551
    :goto_1
    return-void

    .line 543
    :cond_3
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 544
    invoke-static {v0, p1}, Lcom/smartadserver/android/library/model/c;->c(Lorg/w3c/dom/Node;Lcom/smartadserver/android/library/model/c$a;)V
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 547
    :catch_0
    move-exception v0

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VAST file error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathExpressionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/smartadserver/android/library/model/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static a(Lorg/w3c/dom/Node;Lcom/smartadserver/android/library/model/c$a;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartadserver/android/library/exception/SASVASTParsingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 477
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 478
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    move v2, v0

    .line 482
    :goto_0
    if-ge v2, v4, :cond_2

    .line 483
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 484
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 485
    const-string v7, "InLine"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 487
    invoke-static {v5, p1}, Lcom/smartadserver/android/library/model/c;->a(Lorg/w3c/dom/Node;Lcom/smartadserver/android/library/model/c$a;)V

    move v0, v1

    .line 482
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 489
    :cond_1
    const-string v7, "Wrapper"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 491
    invoke-static {v5, p1, p2, p3}, Lcom/smartadserver/android/library/model/c;->b(Lorg/w3c/dom/Node;Lcom/smartadserver/android/library/model/c$a;J)V

    move v0, v1

    .line 492
    goto :goto_1

    .line 495
    :cond_2
    if-nez v0, :cond_3

    .line 496
    const-string v0, "Missing Inline or Wrapper element for ad"

    invoke-static {v0}, Lcom/smartadserver/android/library/model/c;->a(Ljava/lang/String;)V

    .line 499
    :cond_3
    return-void
.end method

.method private static b(Lorg/w3c/dom/Node;Lcom/smartadserver/android/library/model/c$a;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartadserver/android/library/exception/SASVASTParsingException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 562
    :try_start_0
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v8

    .line 565
    const-string v0, ".//ClickTracking"

    invoke-interface {v8, v0}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    .line 566
    sget-object v3, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, p0, v3}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 567
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 570
    new-array v3, v4, [Ljava/lang/String;

    move v3, v1

    .line 571
    :goto_0
    if-ge v3, v4, :cond_0

    .line 572
    iget-object v5, p1, Lcom/smartadserver/android/library/model/c$a;->d:Ljava/util/ArrayList;

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 576
    :cond_0
    const-string v0, ".//ClickThrough"

    invoke-interface {v8, v0}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    .line 577
    sget-object v3, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, p0, v3}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 578
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 581
    if-lez v3, :cond_1

    .line 582
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/smartadserver/android/library/model/c$a;->e:Ljava/lang/String;

    .line 586
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 587
    const-string v0, ".//MediaFile"

    invoke-interface {v8, v0}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    .line 588
    sget-object v3, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, p0, v3}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 589
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    .line 592
    const-string v3, ""

    .line 595
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    move v5, v2

    move-object v6, v3

    move v3, v1

    .line 597
    :goto_1
    if-ge v3, v9, :cond_6

    .line 598
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 599
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    .line 600
    const-string v12, "type"

    invoke-interface {v11, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 603
    :try_start_1
    const-string v13, "bitrate"

    invoke-interface {v11, v13}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 608
    :goto_2
    :try_start_2
    const-string v13, "apiFramework"

    invoke-interface {v11, v13}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 613
    :goto_3
    :try_start_3
    const-string v13, "width"

    invoke-interface {v11, v13}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v5

    .line 617
    :goto_4
    :try_start_4
    const-string v13, "height"

    invoke-interface {v11, v13}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v4

    .line 620
    :goto_5
    :try_start_5
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 621
    if-eqz v11, :cond_5

    if-eqz v12, :cond_5

    const-string v7, "video/mp4"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "video/3gpp"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "video/webm"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "application/x-javascript"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "application/javascript"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_2
    const-string v7, "VPAID"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_3
    const/4 v7, 0x1

    .line 627
    :goto_6
    if-eqz v7, :cond_4

    .line 628
    new-instance v7, Lcom/smartadserver/android/library/model/c$c;

    invoke-direct {v7}, Lcom/smartadserver/android/library/model/c$c;-><init>()V

    .line 629
    iput-object v11, v7, Lcom/smartadserver/android/library/model/c$c;->a:Ljava/lang/String;

    .line 630
    iput-object v12, v7, Lcom/smartadserver/android/library/model/c$c;->b:Ljava/lang/String;

    .line 631
    iput v2, v7, Lcom/smartadserver/android/library/model/c$c;->c:I

    .line 632
    iput-object v6, v7, Lcom/smartadserver/android/library/model/c$c;->d:Ljava/lang/String;

    .line 633
    iput v5, v7, Lcom/smartadserver/android/library/model/c$c;->e:I

    .line 634
    iput v4, v7, Lcom/smartadserver/android/library/model/c$c;->f:I

    .line 635
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_5
    move v7, v1

    .line 621
    goto :goto_6

    .line 640
    :cond_6
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 643
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/smartadserver/android/library/model/c$c;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartadserver/android/library/model/c$c;

    iput-object v0, p1, Lcom/smartadserver/android/library/model/c$a;->a:[Lcom/smartadserver/android/library/model/c$c;

    .line 646
    const-string v0, ".//Tracking"

    invoke-interface {v8, v0}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    .line 647
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, p0, v2}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 648
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 652
    iget-object v4, p1, Lcom/smartadserver/android/library/model/c$a;->b:Ljava/util/HashMap;

    move v2, v1

    .line 655
    :goto_7
    if-ge v2, v3, :cond_a

    .line 656
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 657
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    const-string v6, "event"

    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 658
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 660
    const-string v1, "progress"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 655
    :goto_8
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_7

    .line 674
    :cond_7
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 675
    if-nez v1, :cond_8

    .line 677
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 678
    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    :cond_8
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_8

    .line 709
    :catch_0
    move-exception v0

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VAST file error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathExpressionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/smartadserver/android/library/model/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 712
    :cond_9
    :goto_9
    return-void

    .line 685
    :cond_a
    :try_start_6
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "skipoffset"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 686
    if-eqz v0, :cond_b

    .line 687
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/smartadserver/android/library/model/c$a;->f:Ljava/lang/String;

    .line 691
    :cond_b
    const-string v0, ".//AdParameters"

    invoke-interface {v8, v0}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    .line 692
    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, p0, v1}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 693
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 695
    if-lez v1, :cond_c

    .line 696
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/smartadserver/android/library/model/c$a;->h:Ljava/lang/String;

    .line 700
    :cond_c
    const-string v0, ".//Duration"

    invoke-interface {v8, v0}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    .line 701
    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, p0, v1}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 702
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 704
    if-lez v1, :cond_9

    .line 705
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 706
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/smartadserver/android/library/model/c$a;->i:I
    :try_end_6
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_9

    .line 618
    :catch_1
    move-exception v11

    goto/16 :goto_5

    .line 614
    :catch_2
    move-exception v13

    goto/16 :goto_4

    .line 609
    :catch_3
    move-exception v13

    goto/16 :goto_3

    .line 604
    :catch_4
    move-exception v13

    goto/16 :goto_2
.end method

.method private static b(Lorg/w3c/dom/Node;Lcom/smartadserver/android/library/model/c$a;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartadserver/android/library/exception/SASVASTParsingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 716
    :try_start_0
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v2

    .line 719
    const-string v0, ""

    .line 720
    const-string v0, ".//VASTAdTagURI"

    invoke-interface {v2, v0}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    .line 721
    sget-object v3, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, p0, v3}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 722
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 724
    if-nez v3, :cond_0

    .line 725
    const-string v3, "Missing URI for VAST Wrapper"

    invoke-static {v3}, Lcom/smartadserver/android/library/model/c;->a(Ljava/lang/String;)V

    .line 728
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 730
    const/4 v3, 0x0

    invoke-static {v0, v3, p2, p3}, Lcom/smartadserver/android/library/model/c;->a(Ljava/lang/String;ZJ)Lcom/smartadserver/android/library/model/c;

    move-result-object v0

    .line 733
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/c;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/smartadserver/android/library/model/c$a;->f:Ljava/lang/String;

    .line 734
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/c;->f()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/smartadserver/android/library/model/c$a;->e:Ljava/lang/String;

    .line 735
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/smartadserver/android/library/model/c$c;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/c;->a()Lcom/smartadserver/android/library/model/c$c;

    move-result-object v5

    aput-object v5, v3, v4

    iput-object v3, p1, Lcom/smartadserver/android/library/model/c$a;->a:[Lcom/smartadserver/android/library/model/c$c;

    .line 736
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/c;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/smartadserver/android/library/model/c$a;->g:Ljava/lang/String;

    .line 737
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/c;->h()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/smartadserver/android/library/model/c$a;->h:Ljava/lang/String;

    .line 740
    iget-object v3, p1, Lcom/smartadserver/android/library/model/c$a;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/c;->e()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/smartadserver/android/library/model/c;->a(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 743
    iget-object v3, p1, Lcom/smartadserver/android/library/model/c$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/c;->d()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 746
    iget-object v3, p1, Lcom/smartadserver/android/library/model/c$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/c;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 749
    const-string v0, ".//Impression"

    invoke-interface {v2, v0}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    .line 750
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, p0, v2}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 751
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 753
    new-array v3, v2, [Ljava/lang/String;

    .line 754
    :goto_0
    if-ge v1, v2, :cond_1

    .line 755
    iget-object v3, p1, Lcom/smartadserver/android/library/model/c$a;->c:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 759
    :cond_1
    new-instance v0, Lcom/smartadserver/android/library/model/c$a;

    invoke-direct {v0}, Lcom/smartadserver/android/library/model/c$a;-><init>()V

    .line 760
    invoke-static {p0, v0}, Lcom/smartadserver/android/library/model/c;->b(Lorg/w3c/dom/Node;Lcom/smartadserver/android/library/model/c$a;)V

    .line 762
    iget-object v1, p1, Lcom/smartadserver/android/library/model/c$a;->d:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/smartadserver/android/library/model/c$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 763
    iget-object v1, p1, Lcom/smartadserver/android/library/model/c$a;->b:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/smartadserver/android/library/model/c$a;->b:Ljava/util/HashMap;

    invoke-static {v1, v0}, Lcom/smartadserver/android/library/model/c;->a(Ljava/util/HashMap;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    :goto_1
    return-void

    .line 766
    :catch_0
    move-exception v0

    .line 767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VAST file error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathExpressionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/smartadserver/android/library/model/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static c(Lorg/w3c/dom/Node;Lcom/smartadserver/android/library/model/c$a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartadserver/android/library/exception/SASVASTParsingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 800
    .line 805
    :try_start_0
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v6

    .line 808
    const-string v0, ".//StaticResource"

    invoke-interface {v6, v0}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    .line 809
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, p0, v2}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 810
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 812
    if-lez v2, :cond_5

    .line 813
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 814
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v4, "creativeType"

    invoke-interface {v2, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 816
    invoke-static {v2}, Lcom/smartadserver/android/library/model/c$b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 817
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 822
    :goto_0
    const-string v0, ".//Tracking"

    invoke-interface {v6, v0}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    .line 823
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, p0, v2}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 824
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    move v4, v1

    move-object v2, v3

    .line 830
    :goto_1
    if-ge v4, v7, :cond_0

    .line 831
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 832
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string v9, "event"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 833
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 835
    const-string v9, "creativeView"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 830
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v1

    goto :goto_1

    .line 841
    :cond_0
    const-string v0, ".//CompanionClickThrough"

    invoke-interface {v6, v0}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    .line 842
    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, p0, v1}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 843
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 845
    if-lez v1, :cond_3

    .line 846
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 847
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 851
    :goto_3
    const-string v0, ".//CompanionClickTracking"

    invoke-interface {v6, v0}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    .line 852
    sget-object v4, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, p0, v4}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 853
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 855
    if-lez v4, :cond_2

    .line 856
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 857
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 862
    :goto_4
    if-eqz v5, :cond_1

    .line 864
    new-instance v3, Lcom/smartadserver/android/library/model/c$b;

    invoke-direct {v3, v5, v2, v1, v0}, Lcom/smartadserver/android/library/model/c$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    iput-object v3, p1, Lcom/smartadserver/android/library/model/c$a;->j:Lcom/smartadserver/android/library/model/c$b;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    :cond_1
    :goto_5
    return-void

    .line 869
    :catch_0
    move-exception v0

    .line 870
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VAST file error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathExpressionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/smartadserver/android/library/model/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_2
    move-object v0, v3

    goto :goto_4

    :cond_3
    move-object v1, v3

    goto :goto_3

    :cond_4
    move-object v1, v2

    goto/16 :goto_2

    :cond_5
    move-object v5, v3

    goto/16 :goto_0
.end method


# virtual methods
.method public a()Lcom/smartadserver/android/library/model/c$c;
    .locals 4

    .prologue
    .line 76
    invoke-static {}, Lcom/smartadserver/android/library/g/c;->b()I

    move-result v2

    .line 77
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/smartadserver/android/library/model/c;->d:Lcom/smartadserver/android/library/model/c$a;

    if-eqz v0, :cond_2

    .line 80
    const/4 v0, 0x0

    .line 81
    packed-switch v2, :pswitch_data_0

    .line 98
    :goto_0
    iget-object v2, p0, Lcom/smartadserver/android/library/model/c;->d:Lcom/smartadserver/android/library/model/c$a;

    iget-object v2, v2, Lcom/smartadserver/android/library/model/c$a;->a:[Lcom/smartadserver/android/library/model/c$c;

    array-length v2, v2

    .line 99
    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 100
    iget-object v1, p0, Lcom/smartadserver/android/library/model/c;->d:Lcom/smartadserver/android/library/model/c$a;

    iget-object v1, v1, Lcom/smartadserver/android/library/model/c$a;->a:[Lcom/smartadserver/android/library/model/c$c;

    aget-object v1, v1, v2

    .line 101
    iget v3, v1, Lcom/smartadserver/android/library/model/c$c;->c:I

    if-gt v3, v0, :cond_0

    move-object v0, v1

    .line 106
    :goto_2
    return-object v0

    .line 83
    :pswitch_0
    const v0, 0x7fffffff

    .line 84
    goto :goto_0

    .line 86
    :pswitch_1
    const/16 v0, 0x3e8

    .line 87
    goto :goto_0

    .line 89
    :pswitch_2
    const/16 v0, 0x190

    .line 90
    goto :goto_0

    .line 93
    :pswitch_3
    const/16 v0, 0x64

    goto :goto_0

    .line 99
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_2

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    iget-object v1, p0, Lcom/smartadserver/android/library/model/c;->d:Lcom/smartadserver/android/library/model/c$a;

    if-eqz v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/smartadserver/android/library/model/c;->d:Lcom/smartadserver/android/library/model/c$a;

    iget-object v0, v0, Lcom/smartadserver/android/library/model/c$a;->f:Ljava/lang/String;

    .line 114
    :cond_0
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    iget-object v1, p0, Lcom/smartadserver/android/library/model/c;->d:Lcom/smartadserver/android/library/model/c$a;

    if-eqz v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/smartadserver/android/library/model/c;->d:Lcom/smartadserver/android/library/model/c$a;

    iget-object v0, v0, Lcom/smartadserver/android/library/model/c$a;->g:Ljava/lang/String;

    .line 122
    :cond_0
    return-object v0
.end method

.method public d()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    iget-object v1, p0, Lcom/smartadserver/android/library/model/c;->d:Lcom/smartadserver/android/library/model/c$a;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/smartadserver/android/library/model/c;->d:Lcom/smartadserver/android/library/model/c$a;

    iget-object v1, v1, Lcom/smartadserver/android/library/model/c$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 130
    :cond_0
    return-object v0
.end method

.method public e()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 135
    iget-object v1, p0, Lcom/smartadserver/android/library/model/c;->d:Lcom/smartadserver/android/library/model/c$a;

    if-eqz v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/smartadserver/android/library/model/c;->d:Lcom/smartadserver/android/library/model/c$a;

    iget-object v0, v0, Lcom/smartadserver/android/library/model/c$a;->b:Ljava/util/HashMap;

    .line 138
    :cond_0
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    iget-object v1, p0, Lcom/smartadserver/android/library/model/c;->d:Lcom/smartadserver/android/library/model/c$a;

    if-eqz v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/smartadserver/android/library/model/c;->d:Lcom/smartadserver/android/library/model/c$a;

    iget-object v0, v0, Lcom/smartadserver/android/library/model/c$a;->e:Ljava/lang/String;

    .line 146
    :cond_0
    return-object v0
.end method

.method public g()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    iget-object v1, p0, Lcom/smartadserver/android/library/model/c;->d:Lcom/smartadserver/android/library/model/c$a;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/smartadserver/android/library/model/c;->d:Lcom/smartadserver/android/library/model/c$a;

    iget-object v1, v1, Lcom/smartadserver/android/library/model/c$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 156
    :cond_0
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 161
    iget-object v1, p0, Lcom/smartadserver/android/library/model/c;->d:Lcom/smartadserver/android/library/model/c$a;

    if-eqz v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/smartadserver/android/library/model/c;->d:Lcom/smartadserver/android/library/model/c$a;

    iget-object v0, v0, Lcom/smartadserver/android/library/model/c$a;->h:Ljava/lang/String;

    .line 164
    :cond_0
    return-object v0
.end method

.method public i()I
    .locals 2

    .prologue
    .line 168
    const/4 v0, -0x1

    .line 169
    iget-object v1, p0, Lcom/smartadserver/android/library/model/c;->d:Lcom/smartadserver/android/library/model/c$a;

    if-eqz v1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/smartadserver/android/library/model/c;->d:Lcom/smartadserver/android/library/model/c$a;

    iget v0, v0, Lcom/smartadserver/android/library/model/c$a;->i:I

    .line 172
    :cond_0
    return v0
.end method

.method public j()Lcom/smartadserver/android/library/model/c$b;
    .locals 2

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    iget-object v1, p0, Lcom/smartadserver/android/library/model/c;->d:Lcom/smartadserver/android/library/model/c$a;

    if-eqz v1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/smartadserver/android/library/model/c;->d:Lcom/smartadserver/android/library/model/c$a;

    iget-object v0, v0, Lcom/smartadserver/android/library/model/c$a;->j:Lcom/smartadserver/android/library/model/c$b;

    .line 180
    :cond_0
    return-object v0
.end method

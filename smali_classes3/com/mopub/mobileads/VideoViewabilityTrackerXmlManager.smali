.class public Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;
.super Ljava/lang/Object;
.source "VideoViewabilityTrackerXmlManager.java"


# static fields
.field public static final PERCENT_VIEWABLE:Ljava/lang/String; = "percentViewable"

.field public static final VIEWABLE_PLAYTIME:Ljava/lang/String; = "viewablePlaytime"


# instance fields
.field private final a:Lorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 26
    iput-object p1, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->a:Lorg/w3c/dom/Node;

    .line 27
    return-void
.end method


# virtual methods
.method a()Ljava/lang/Integer;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 40
    iget-object v1, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->a:Lorg/w3c/dom/Node;

    const-string v2, "viewablePlaytime"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    if-nez v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-object v0

    .line 47
    :cond_1
    invoke-static {v1}, Lcom/mopub/common/util/Strings;->isAbsoluteTracker(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 49
    :try_start_0
    invoke-static {v1}, Lcom/mopub/common/util/Strings;->parseAbsoluteOffset(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 63
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_0

    move-object v0, v1

    .line 67
    goto :goto_0

    .line 50
    :catch_0
    move-exception v2

    .line 51
    const-string v2, "Invalid VAST viewablePlaytime format for \"HH:MM:SS[.mmm]\": %s:"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    move-object v1, v0

    .line 53
    goto :goto_1

    .line 56
    :cond_2
    :try_start_1
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_1

    .line 57
    :catch_1
    move-exception v2

    .line 58
    const-string v2, "Invalid VAST viewablePlaytime format for \"SS[.mmm]\": %s:"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_1
.end method

.method b()Ljava/lang/Integer;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->a:Lorg/w3c/dom/Node;

    const-string v2, "percentViewable"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    if-nez v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-object v0

    .line 89
    :cond_1
    :try_start_0
    const-string v2, "%"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 95
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x64

    if-gt v2, v3, :cond_0

    move-object v0, v1

    .line 99
    goto :goto_0

    .line 90
    :catch_0
    move-exception v2

    .line 91
    const-string v2, "Invalid VAST percentViewable format for \"d{1,3}%%\": %s:"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_1
.end method

.method c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->a:Lorg/w3c/dom/Node;

    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

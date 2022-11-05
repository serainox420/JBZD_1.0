.class Lcom/intentsoftware/addapptr/ac;
.super Lcom/intentsoftware/addapptr/m;
.source "StatisticsReporter.java"


# static fields
.field private static final REPORTING_THRESHOLD:I = 0x37

.field private static final REPORT_URL:Ljava/lang/String; = "https://reporting.aatkit.com/cgi-bin/report.cgi"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/m;-><init>()V

    return-void
.end method

.method private putNetworkStats(Ljava/util/Map;Lcom/intentsoftware/addapptr/f;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/intentsoftware/addapptr/f;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p2, Lcom/intentsoftware/addapptr/f;->adConfig:Lcom/intentsoftware/addapptr/b;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/b;->getNetwork()Lcom/intentsoftware/addapptr/AdNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/AdNetwork;->getReportingName()Ljava/lang/String;

    move-result-object v1

    .line 85
    iget-object v0, p2, Lcom/intentsoftware/addapptr/f;->adConfig:Lcom/intentsoftware/addapptr/b;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/b;->getAdId()Ljava/lang/String;

    move-result-object v0

    .line 88
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 89
    const/16 v3, 0xb

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "impression"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p2, Lcom/intentsoftware/addapptr/f;->numImpressions:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "clicks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p2, Lcom/intentsoftware/addapptr/f;->numClicks:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "requests"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p2, Lcom/intentsoftware/addapptr/f;->numRequests:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "responses"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p2, Lcom/intentsoftware/addapptr/f;->numResponses:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void

    .line 90
    :catch_0
    move-exception v2

    .line 91
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to encode network key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    :cond_0
    const-string v0, "encoding_failed"

    goto/16 :goto_0
.end method

.method private putPlacementStats(Ljava/util/Map;Lcom/intentsoftware/addapptr/s;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/intentsoftware/addapptr/s;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p2}, Lcom/intentsoftware/addapptr/s;->getStats()Lcom/intentsoftware/addapptr/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/v;->getCurrentNetworksStatistics()Ljava/util/Map;

    move-result-object v1

    .line 49
    invoke-virtual {p2}, Lcom/intentsoftware/addapptr/s;->getAdType()Lcom/intentsoftware/addapptr/AdType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/AdType;->getReportPrefix()Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/f;

    .line 52
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/f;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 53
    invoke-direct {p0, p1, v0, v3, v2}, Lcom/intentsoftware/addapptr/ac;->putNetworkStats(Ljava/util/Map;Lcom/intentsoftware/addapptr/f;Ljava/lang/String;I)V

    .line 54
    const/4 v0, 0x1

    .line 55
    add-int/lit8 v1, v2, 0x1

    :goto_1
    move v2, v1

    move v1, v0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    if-eqz v1, :cond_1

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "place"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/intentsoftware/addapptr/s;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "cnt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/intentsoftware/addapptr/s;->getStats()Lcom/intentsoftware/addapptr/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/v;->getCurrentAdspacesCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_1
    return v1

    :cond_2
    move v0, v1

    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method getReportUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "https://reporting.aatkit.com/cgi-bin/report.cgi"

    return-object v0
.end method

.method report(Lcom/intentsoftware/addapptr/s;)V
    .locals 4

    .prologue
    const/4 v2, 0x4

    .line 24
    invoke-static {}, Lcom/intentsoftware/addapptr/b/a;->toHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 25
    invoke-direct {p0, v0, p1}, Lcom/intentsoftware/addapptr/ac;->putPlacementStats(Ljava/util/Map;Lcom/intentsoftware/addapptr/s;)Z

    move-result v1

    .line 27
    if-eqz v1, :cond_3

    .line 28
    invoke-static {v2}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting statistics for placement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/s;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    :cond_0
    const-string v1, "LOGREPORT"

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REPORTING statistics for placement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/s;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/h;->log(Ljava/lang/String;)V

    .line 34
    :cond_1
    new-instance v1, Lcom/intentsoftware/addapptr/b/b;

    const-string v2, "https://reporting.aatkit.com/cgi-bin/report.cgi"

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/ac;->createRetryListener(Ljava/util/HashMap;)Lcom/intentsoftware/addapptr/b/b$a;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/intentsoftware/addapptr/b/b;-><init>(Ljava/lang/String;Ljava/util/HashMap;Lcom/intentsoftware/addapptr/b/b$a;)V

    .line 44
    :cond_2
    :goto_0
    return-void

    .line 36
    :cond_3
    invoke-static {v2}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Nothing to report for placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/s;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    :cond_4
    const-string v0, "LOGREPORT"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REPORTING: nothing to report for placement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/s;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/h;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method shouldReportImmediately(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/intentsoftware/addapptr/s;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/16 v5, 0x37

    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/s;

    .line 67
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getStats()Lcom/intentsoftware/addapptr/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/intentsoftware/addapptr/v;->getCurrentAdspacesCount()I

    move-result v3

    if-le v3, v5, :cond_1

    move v0, v1

    .line 80
    :goto_0
    return v0

    .line 70
    :cond_1
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getStats()Lcom/intentsoftware/addapptr/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/v;->getCurrentNetworksStatistics()Ljava/util/Map;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/f;

    .line 72
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/f;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 73
    iget v4, v0, Lcom/intentsoftware/addapptr/f;->numRequests:I

    if-gt v4, v5, :cond_3

    iget v4, v0, Lcom/intentsoftware/addapptr/f;->numImpressions:I

    if-gt v4, v5, :cond_3

    iget v0, v0, Lcom/intentsoftware/addapptr/f;->numClicks:I

    if-le v0, v5, :cond_2

    :cond_3
    move v0, v1

    .line 74
    goto :goto_0

    .line 80
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

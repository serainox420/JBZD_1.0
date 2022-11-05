.class Lcom/intentsoftware/addapptr/ab;
.super Lcom/intentsoftware/addapptr/m;
.source "SessionReporter.java"


# static fields
.field private static final REPORT_URL:Ljava/lang/String; = "https://tracking.aatkit.com/cgi-bin/track.cgi"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/m;-><init>()V

    return-void
.end method


# virtual methods
.method getReportUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "https://tracking.aatkit.com/cgi-bin/track.cgi"

    return-object v0
.end method

.method report(I)V
    .locals 4

    .prologue
    .line 17
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    const-string v0, "Reporting session"

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    :cond_0
    invoke-static {}, Lcom/intentsoftware/addapptr/b/a;->toHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 22
    const-string v1, "event"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v1, "ticks"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "LOGREPORT"

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    const-string v1, "Sending USER session statistics to server"

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/h;->log(Ljava/lang/String;)V

    .line 29
    :cond_1
    new-instance v1, Lcom/intentsoftware/addapptr/b/b;

    const-string v2, "https://tracking.aatkit.com/cgi-bin/track.cgi"

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/ab;->createRetryListener(Ljava/util/HashMap;)Lcom/intentsoftware/addapptr/b/b$a;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/intentsoftware/addapptr/b/b;-><init>(Ljava/lang/String;Ljava/util/HashMap;Lcom/intentsoftware/addapptr/b/b$a;)V

    .line 30
    return-void
.end method
